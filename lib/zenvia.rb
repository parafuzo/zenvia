$:.unshift File.expand_path('../lib', __dir__)

require 'i18n'
require 'active_support/inflector'
require 'enumerate_it'

I18n.load_path += Dir[File.expand_path('../config/locales/*.yml', __dir__)]

module Zenvia
  def self.config
    Config.instance
  end

  def self.configure(&block)
    block.call(self.config)
  end

  autoload :Config    , 'zenvia/config'
  autoload :Error     , 'zenvia/error'
  autoload :Request   , 'zenvia/request'
  autoload :Sms       , 'zenvia/sms'
  autoload :SmsStatus , 'zenvia/sms_status'
  autoload :Version   , 'zenvia/version'
end
