                _
      __ _  ___| |__   ___ _ __ ___  _ __
     / _` |/ __| '_ \ / _ \ '__/ _ \| '_ \
    | (_| | (__| | | |  __/ | | (_) | | | |
     \__,_|\___|_| |_|\___|_|  \___/|_| |_|

# Welcome to acheron

Acheron listens to an exchange[1] on RabbitMQ[2] and forwards messages
to a channel on Slack[3].


## Installation

Add this line to your application's Gemfile:

    gem 'acheron'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acheron


## Usage

Run

    acheron


## Configuration

Acheron reads configuration options from multiple locations. The
following sections list all of those locations, later superseeds the
prior ones.


### Defaults

Acheron comes with reasonable defaults

    slack:
      channel: '#acheron'
      username: Acheron
      icon_emoji: ':squirrel:'
    rabbitmq:
      exchange: acheron


### Config file

The defaults above are given in YAML, which is also the format of the
config file. By default Acheron The Salcker attempts to read a config
file named `acheron.yml` from the current working
directory. You can provide an alternate location either via
environment variable or with a command line argument.


### Environment

All environment variables are prefixed with `ACHERON` and the nesting is
reflected by an underscore separated list of names. E.g.

    export ACHERON_SLACK_CHANNEL='#set_by_env'


### Command line arguments

Run the following command to get a list of all arguments:

    acheron --help


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Trivia

In ancient Greek mythology, Acheron was known as the "river of woe",
and was one of the five rivers of the Greek underworld. In the Homeric
poems the Acheron was described as a river of Hades, into which
Cocytus and [Phlegethon](http://github.com/branch14/phlegethon) both
flowed.

The Roman poet Virgil called it the principal river of Tartarus, from
which the Styx and Cocytus both sprang. The newly dead would be
ferried across the Acheron by Charon in order to enter the Underworld.


## References

[1] https://www.rabbitmq.com/tutorials/tutorial-three-python.html
[2] https://www.rabbitmq.com/
[3] http://slack.com/
