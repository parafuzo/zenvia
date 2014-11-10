# Zenvia

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zenvia'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zenvia

## Usage

### Sending a message

```ruby
  sms = Zenvia::Sms.new 'number', 'message'
  sms.send
```

## Config

```ruby
Zenvia.configure do |config|
  config.account = ENV["ZENVIA_ACCOUNT"]
  config.code    = ENV["ZENVIA_CODE"]
end
```

## Contributing

1. Fork it ( https://github.com/parafuzo/zenvia/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Azk

### Install azk

### Bundle Install
```shell
  azk shell -c "bundle install --binstubs --path /azk/bundler"
```

### Test
```shell
  azk shell -c "bundle exec rspec"
```
