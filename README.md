         _                         _   _                _            _
     ___(_)_ __ ___   ___  _ __   | |_| |__   ___   ___| | __ _  ___| | _____ _ __
    / __| | '_ ` _ \ / _ \| '_ \  | __| '_ \ / _ \ / __| |/ _` |/ __| |/ / _ \ '__|
    \__ \ | | | | | | (_) | | | | | |_| | | |  __/ \__ \ | (_| | (__|   <  __/ |
    |___/_|_| |_| |_|\___/|_| |_|  \__|_| |_|\___| |___/_|\__,_|\___|_|\_\___|_|

# Simon The Slacker welcomes you!

Simon the Slacker listens to an exchange[1] on RabbitMQ[2] and forwards
messages to a channel on Slack[3].


## Installation

Add this line to your application's Gemfile:

    gem 'simon_the_slacker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simon_the_slacker


## Usage

Run

    simon-the-slacker


## Configuration

Simon The Slacker reads configuration options from multiple
locations. The following sections list all of those locations, later
superseeds the prior ones.


### Defaults

Simon The Slacker comes with reasonable defaults

    slack:
      channel: '#simon'
      username: Simon
      icon_emoji: ':squirrel:'
    rabbitmq:
      exchange: simon


### Config file

The defaults above are given in YAML, which is also the format of the
config file. By default Simon The Salcker attempts to read a config
file named `simon_the_slacker.yml` from the current working
directory. You can provide an alternate location either via
environment variable or with a command line argument.


### Environment

All environment variables are prefixed with `SIMON` and the nesting is
reflected by an underscore separated list of names. E.g.

    export SIMON_SLACK_CHANNEL='#set_by_env'


### Command line arguments

Run the following command to get a list of all arguments:

    simon-the-slacker --help


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Trivia

Simon was one of the the Telkhines. In Greek mythology, the
Telkhines{telk-ine-s} (Greek: Τελχῖνες) were the original inhabitants
of the island of Rhodes, and were known in Crete and Cyprus. Their
parents were either Pontus and Gaia, or Tartarus and Nemesis, or else
they were born from the blood of castrated Uranus along with the
Erinyes. In another story there were nine Telkhines, children of
Thalassa and Pontus; they had flippers instead of hands and the heads
of dogs and were known as fish children.


## References

[1] https://www.rabbitmq.com/tutorials/tutorial-three-python.html
[2] https://www.rabbitmq.com/
[3] http://slack.com/
