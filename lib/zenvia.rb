$:.unshift File.expand_path('../lib', __dir__)

module Zenvia
  def self.config
    Config.instance
  end

  def self.configure(&block)
    block.call(self.config)
  end

  autoload :Config  , 'zenvia/config'
  autoload :Error   , 'zenvia/error'
  autoload :Request , 'zenvia/request'
  autoload :Sms     , 'zenvia/sms'
  autoload :Version , 'zenvia/version'
end
