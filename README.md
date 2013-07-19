# Foaas [![Build Status](https://travis-ci.org/rthbound/foaas.png?branch=master)](https://travis-ci.org/rthbound/foaas) [![Coverage Status](https://coveralls.io/repos/rthbound/foaas/badge.png)](https://coveralls.io/r/rthbound/foaas) [![Code Climate](https://codeclimate.com/github/rthbound/foaas.png)](https://codeclimate.com/github/rthbound/foaas)
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

# 'Eff this
Foaas::FO.new(resource: "this", from: "slash_nick").execute!
# => #<PayDirt::Result:0x933c10c @data={"message"=>"Fuck this.", "subtitle"=>"- slash_nick"}, @success=true>

# 'Eff that
Foaas::FO.new(resource: "that", from: "slash_nick").execute!
# => #<PayDirt::Result:0x937c388 @data={"message"=>"Fuck that.", "subtitle"=>"- slash_nick"}, @success=true>

# 'Eff off, cruel world
Foaas::FO.new(name: "cruel%20world", from: "slash_nick").execute!
# => #<PayDirt::Result:0x843debc @data={"message"=>"Fuck off, cruel world.", "subtitle"=>"- slash_nick"}, @success=true>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
