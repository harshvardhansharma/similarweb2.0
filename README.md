# Similarweb2.0

Ruby client for [SimilarWeb API](https://developer.similarweb.com/)

## Installation

Add this line to your application's Gemfile:

    gem 'similarweb2.0'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install similarweb2.0

## Usage

``` ruby
client = Similarweb::Client.new(api_key: key)
visit = client.desktop_visit('google.com', '2017-03', '2017-04', 'daily')
```

## Author
[Harsh Vardhan Sharma](mailto:bonnyharsh1993@gmail.com)

## Contributing

1. Fork it ( http://github.com/harshvardhansharma/similarweb2.0/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright
Copyright (c) 2014 [Harsh Vardhan Sharma](mailto:bonnyharsh1993@gmail.com).
See [LICENSE][license] for details.

[license]:   LICENSE.md
