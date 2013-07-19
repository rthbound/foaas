# Foaas

Ruby Interface to FOAAS ([http://foaas.herokuapp.com/](http://foaas.herokuapp.com/))

## Installation

Add this line to your application's Gemfile:

    gem 'foaas'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foaas

## Usage

```ruby
require "foaas"
Foaas::FO.new(name: "You", from: "Me").execute!
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
