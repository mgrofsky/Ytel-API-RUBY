# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class BaseController
    attr_accessor :http_client, :http_call_back

    @@http_client = UnirestClient.new

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client ||= @@http_client
      @http_call_back = http_call_back
    end

    def validate_response(context)			
      if !context.response.status_code.between?(200, 208) #[200,208] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', context
      end
    end
  end
end