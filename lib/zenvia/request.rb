module Zenvia
  class Request
    BASE_URL  = "http://www.zenvia360.com.br"
    POST_PATH = "/GatewayIntegration/msgSms.do"

    attr_reader :params, :response

    def initialize
      session.base_url        = BASE_URL
      session.timeout         = Zenvia.config.timeout
      session.connect_timeout = Zenvia.config.connect_timeout
    end

    def post(params)
      @params   = params
      @response = session.post POST_PATH, parse_params

      parse_response
    end

    private

    def parse_response
      code, message = response.body.split " - "
      raise Error, message if code != "000"

      {code: code, message: message}
    end

    def parse_params
      {
        account:        Zenvia.config.account,
        code:           Zenvia.config.code,
        dispatch:       params[:dispatch],
        to:             params[:to],
        msg:            params[:message],
        id:             params[:id],
        callbackOption: params[:callback_option]
      }
    end

    def session
      @session ||= Patron::Session.new
    end
  end
end
