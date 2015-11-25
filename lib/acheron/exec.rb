require 'json'
require 'yaml'

require 'daemons'
require 'bunny'
require 'faraday'

module Acheron

  class Exec < Struct.new(:config)

    def run
      check
      reconnect
      x_name = config.rabbitmq.exchange
      exchange = @channel.fanout(x_name)
      queue = @channel.queue('', exclusive: true)
      queue.bind(exchange)

      queue.subscribe(block: true) do |info, prop, body|
        slack JSON.parse(body)['msg']
      end
    rescue Bunny::ConnectionClosedError => e
      # if the connection is closed make it reconnect and try again
      reconnect
      retry
    end

    private

    def reconnect
      opts = {
        read_timeout: 10,
        heartbeat: 10,
        host: config.rabbitmq.host
      }
      bunny = Bunny.new(opts)
      bunny.start
      @channel = bunny.create_channel
    end

    def slack(message, opts={})
      unless config.slack.channel
        puts message
        return
      end
      opts[:text] = message
      payload = defaults.merge(opts)
      faraday.post config.slack.webhook, payload: JSON.unparse(payload)
    end

    def defaults
      {
        channel:    config.slack.channel,
        username:   config.slack.username,
        icon_emoji: config.slack.icon_emoji
      }
    end

    def faraday
      @faraday ||= Faraday.new(url: config.slack.webhook) do |f|
        f.request :url_encoded
        f.adapter Faraday.default_adapter
      end
    end

    def check
      if config.slack.webhook.nil?
        warn 'Slack webhook is missing.'
        exit 1
      end
    end

  end
end
