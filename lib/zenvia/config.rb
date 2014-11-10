module Zenvia
  class Config
    include Singleton

    attr_accessor :account, :code, :timeout

    def timeout
      @timeout || 10
    end
  end
end
