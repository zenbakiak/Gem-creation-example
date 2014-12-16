# Foo

Foo is just a foo bar application

## Installation

gem install foo

```ruby
gem 'foo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foo

## Usage


  @short_url = Foo::Shortener.new("http://fundwise.co").short #=> #<Foo::Shortener:0x007fdb0b00ae40 @long_url="http://fundwise.co">

  @short_url.short #=> {"kind"=>"urlshortener#url", "id"=>"http://goo.gl/NPcPZT", "longUrl"=>"http://fundwise.co/"}


## Contributing

1. Fork it ( https://github.com/zenbakiak/foo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
