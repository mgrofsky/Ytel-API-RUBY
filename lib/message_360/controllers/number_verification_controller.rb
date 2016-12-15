# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class NumberVerificationController < BaseController
    @@instance = NumberVerificationController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Number Verification
    # @param [String] phonenumber Required parameter: Example: 
    # @param [String] type Required parameter: Example: 
    # @param [String] response_type Optional parameter: Response Type either json or xml
    # @return String response from the API call
    def create_verify_number(options = Hash.new)
      # validate required parameters
      validate_parameters({
        'phonenumber' => options['phonenumber'],
        'type' => options['type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/verifycallerid/verifynumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'phonenumber' => options['phonenumber'],
        'type' => options['type']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end
  end
end
