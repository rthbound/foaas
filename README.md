# FOaaS [![Build Status](https://travis-ci.org/rthbound/foaas.png?branch=master)](https://travis-ci.org/rthbound/foaas) [![Coverage Status](https://coveralls.io/repos/rthbound/foaas/badge.png)](https://coveralls.io/r/rthbound/foaas) [![Code Climate](https://codeclimate.com/github/rthbound/foaas.png)](https://codeclimate.com/github/rthbound/foaas)
Ruby Interface to FOAAS ([http://foaas.herokuapp.com/](http://foaas.herokuapp.com/))

## What is FOAAS?

[FOAAS](http://foaas.herokuapp.com/)(Fuck Off As A Service) provides a modern,
RESTful, scalable solution to the common problem of telling people to fuck off.

# Usage

## /off/:name/:from

```ruby
Fuck::Off.new(name: "You", from: "Me").call
```

## /you/:name/:from

```ruby
Fuck::You.new(name: "You", from: "Me").call
```

## /this/:from

```ruby
Fuck::This.new(from: "Me").call
```

## /that/:from

```ruby
Fuck::That.new(from: "Me").call
```

## /everything/:from

```ruby
Fuck::Everything.new(from: "Me").call
```

## /everyone/:from

```ruby
Fuck::Everyone.new(from: "Me").call
```

## /donut/:name/:from

```ruby
Fuck::Donut.new(name: "You", from: "Me").call
```

## /shakespeare/:name/:from

```ruby
Fuck::Shakespeare.new(name: "You", from: "Me").call
```

## /linus/:name/:from

```ruby
Fuck::Linus.new(name: "You", from: "Me").call
```

## /king/:name/:from

```ruby
Fuck::King.new(name: "You", from: "Me").call
```

## /pink/:from

```ruby
Fuck::Pink.new(from: "Me").call
```

## /life/:from

```ruby
Fuck::Life.new(from: "Me").call
```

## /chainsaw/:name/:from

```ruby
Fuck::Chainsaw.new(name: "You", from: "Me").call
```

## /:thing/:from

```ruby
Fuck::Thing.new(thing: "Anything", from: "Me").call
```

## /thanks/:from

```ruby
Fuck::Thanks.new(from: "Me").call
```

# TODO

## /outside/:name/:from

Intended:
```ruby
Fuck::Outside.new(name: "You", from: "Me").call
```

Current:
```ruby
FOaaS::FO.new(resource: "outside", name: "You", from: "Me").call
```

# Contributing

FOAAS may add some new, fun features. Taking advantage of those new features may
require updates. Please feel free to contribute. Caveat: tests or 'eff off ;)

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
