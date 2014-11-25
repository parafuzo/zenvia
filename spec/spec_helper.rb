ENV["RACK_ENV"] = 'test'

require_relative '../lib/zenvia'
require 'vcr'

I18n.default_locale = I18n.locale = :en

VCR.configure do |c|
  c.cassette_library_dir = File.join(__dir__, "fixtures/vcr_cassettes")
  c.hook_into :webmock
  c.ignore_hosts '127.0.0.1'
end

RSpec.configure do |config|
  config.color = true
  config.tty   = true
  config.order = "random"
end

Zenvia.configure do |config|
  config.account = ENV["ZENVIA_ACCOUNT"]
  config.code    = ENV["ZENVIA_CODE"]
end
