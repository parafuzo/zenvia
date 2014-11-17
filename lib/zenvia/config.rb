module Zenvia
  class Config
    include Singleton

    attr_accessor :account, :code, :timeout, :connect_timeout

    def timeout
      @timeout || 10
    end

    def connect_timeout
      @connect_timeout || 5
    end
  end
end
