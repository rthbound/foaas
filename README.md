# FOaaS

Ruby Interface to FOAAS ([http://foaas.herokuapp.com/](http://foaas.herokuapp.com/))

## What is FOAAS?

[FOAAS](http://foaas.herokuapp.com/)(Fuck Off As A Service) provides a modern,
RESTful, scalable solution to the common problem of telling people to fuck off.

# Usage

## /off/:name/:from

```ruby
FOaaS::Off.new(name: "You", from: "Me").execute!
```

## /you/:name/:from

```ruby
FOaaS::You.new(name: "You", from: "Me").execute!
```

## /this/:from

```ruby
FOaaS::This.new(name: "You", from: "Me").execute!
```

## /that/:from

```ruby
FOaaS::That.new(name: "You", from: "Me").execute!
```

## /everything/:from

```ruby
FOaaS::Everything.new(name: "You", from: "Me").execute!
```

## /everyone/:from

```ruby
FOaaS::Everyone.new(name: "You", from: "Me").execute!
```

## /donut/:name/:from

```ruby
FOaaS::Donut.new(name: "You", from: "Me").execute!
```

## /shakespeare/:name/:from

```ruby
FOaaS::Shakespeare.new(name: "You", from: "Me").execute!
```

## /linus/:name/:from

```ruby
FOaaS::Linus.new(name: "You", from: "Me").execute!
```

## /king/:name/:from

```ruby
FOaaS::King.new(name: "You", from: "Me").execute!
```

## /pink/:from

```ruby
FOaaS::Pink.new(name: "You", from: "Me").execute!
```

## /life/:from

```ruby
FOaaS::Life.new(name: "You", from: "Me").execute!
```

## /chainsaw/:name/:from

```ruby
FOaaS::Chainsaw.new(name: "You", from: "Me").execute!
```

## /outside/:name/:from

```ruby
FOaaS::Outside.new(name: "You", from: "Me").execute!
```

## /:thing/:from

```ruby
FOaaS::Thing.new(name: "You", from: "Me").execute!
```

## /thanks/:from

```ruby
FOaaS::Thanks.new(from: "Me").execute!
```

# Contributing

FOAAS may add some new, fun features. Taking advantage of those new features may
require updates. Please feel free to contribute. Caveat: tests or 'eff off ;)

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
