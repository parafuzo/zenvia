module Zenvia
  class Sms
    attr_accessor :to, :message, :dispatch, :message_id, :callback_option

    def initialize(to, message)
      @to, @message = to, message
    end

    def send
      request.post post_params
    end

    def dispatch
      @dispatch || :send
    end

    private

    def post_params
      {
        to:             to,
        message:        message,
        dispatch:       dispatch,
        id:             message_id,
        callbackOption: callback_option
      }.delete_if { |k,v| v.nil? }
    end

    def request
      @request ||= Request.new
    end
  end
end
