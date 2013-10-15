# OceanCommander

Command line tool to manage your Digital Ocean's resources

## Installation

Add this line to your application's Gemfile:

    gem 'ocean_commander'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ocean_commander

## Usage

First you need to get your Digital Ocean's client id and API key from https://www.digitalocean.com/api_access

Then you can set these environment variables

    $ export DIGITAL_OCEAN_CLIENT_ID=[CLIENT_ID]
    $ export DIGITAL_OCEAN_API_KEY=[API_KEY]

Now you can manage your Digital Ocean's resources

    $ ocean droplets list

You can get help info like this

    $ ocean help
    $ ocean droplets help

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
