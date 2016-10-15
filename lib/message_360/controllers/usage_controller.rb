# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class UsageController < BaseController
    @@instance = UsageController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get all usage 
    # @param [String] product_code Required parameter: Product Code
    # @param [String] start_date Required parameter: Start Usage Date
    # @param [String] end_date Required parameter: End Usage Date
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_usage(product_code, 
                          start_date, 
                          end_date, 
                          response_type = 'json')

      # Validate required parameters
      if product_code == nil
        raise ArgumentError.new "Required parameter 'product_code' cannot be nil."
      elsif start_date == nil
        raise ArgumentError.new "Required parameter 'start_date' cannot be nil."
      elsif end_date == nil
        raise ArgumentError.new "Required parameter 'end_date' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/usage/listusage.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => response_type
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'message360-api'
      }

      # prepare parameters
      _parameters = {
        'ProductCode' => product_code,
        'startDate' => start_date,
        'endDate' => end_date
      }

      # Create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: _parameters, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      return _response.raw_body
    end
  end
end
