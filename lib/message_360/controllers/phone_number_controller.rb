# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class PhoneNumberController < BaseController
    @@instance = PhoneNumberController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Available Phone Number
    # @param [String] number_type Required parameter: Number type either SMS,Voice or all
    # @param [String] area_code Required parameter: Phone Number Area Code
    # @param [Integer] page_size Optional parameter: Page Size
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_available_phone_number(number_type, 
                                      area_code, 
                                      page_size = nil, 
                                      response_type = 'json')

      # Validate required parameters
      if number_type == nil
        raise ArgumentError.new "Required parameter 'number_type' cannot be nil."
      elsif area_code == nil
        raise ArgumentError.new "Required parameter 'area_code' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/availablenumber.{ResponseType}'

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
        'NumberType' => number_type,
        'AreaCode' => area_code,
        'PageSize' => page_size
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

    # List Account's Phone number details
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual resources listed in the response per page
    # @param [String] number_type Optional parameter: Example: 
    # @param [String] friendly_name Optional parameter: Example: 
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_number(page = nil, 
                           page_size = nil, 
                           number_type = nil, 
                           friendly_name = nil, 
                           response_type = 'json')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/listnumber.{ResponseType}'

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
        'Page' => page,
        'PageSize' => page_size,
        'NumberType' => number_type,
        'FriendlyName' => friendly_name
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

    # Release number from account
    # @param [String] phone_number Required parameter: Phone number to be relase
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_release_number(phone_number, 
                              response_type = 'json')

      # Validate required parameters
      if phone_number == nil
        raise ArgumentError.new "Required parameter 'phone_number' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/releasenumber.{ResponseType}'

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
        'PhoneNumber' => phone_number
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

    # Buy Phone Number 
    # @param [String] phone_number Required parameter: Phone number to be purchase
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_buy_number(phone_number, 
                          response_type = 'json')

      # Validate required parameters
      if phone_number == nil
        raise ArgumentError.new "Required parameter 'phone_number' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/buynumber.{ResponseType}'

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
        'PhoneNumber' => phone_number
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

    # Get Phone Number Details
    # @param [String] phone_number Required parameter: Get Phone number Detail
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_view_number_details(phone_number, 
                                   response_type = 'json')

      # Validate required parameters
      if phone_number == nil
        raise ArgumentError.new "Required parameter 'phone_number' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/viewnumber.{ResponseType}'

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
        'PhoneNumber' => phone_number
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

    # Update Phone Number Details
    # @param [String] phone_number Required parameter: Example: 
    # @param [String] friendly_name Optional parameter: Example: 
    # @param [String] voice_url Optional parameter: URL requested once the call connects
    # @param [HttpMethodEnum] voice_method Optional parameter: Example: 
    # @param [String] voice_fallback_url Optional parameter: URL requested if the voice URL is not available
    # @param [HttpMethodEnum] voice_fallback_method Optional parameter: Example: 
    # @param [String] hangup_callback Optional parameter: Example: 
    # @param [HttpMethodEnum] hangup_callback_method Optional parameter: Example: 
    # @param [String] heartbeat_url Optional parameter: URL requested once the call connects
    # @param [HttpMethodEnum] heartbeat_method Optional parameter: URL that can be requested every 60 seconds during the call to notify of elapsed time
    # @param [String] sms_url Optional parameter: URL requested when an SMS is received
    # @param [HttpMethodEnum] sms_method Optional parameter: Example: 
    # @param [String] sms_fallback_url Optional parameter: URL requested once the call connects
    # @param [HttpMethodEnum] sms_fallback_method Optional parameter: URL requested if the sms URL is not available
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def update_phone_number(phone_number, 
                            friendly_name = nil, 
                            voice_url = nil, 
                            voice_method = nil, 
                            voice_fallback_url = nil, 
                            voice_fallback_method = nil, 
                            hangup_callback = nil, 
                            hangup_callback_method = nil, 
                            heartbeat_url = nil, 
                            heartbeat_method = nil, 
                            sms_url = nil, 
                            sms_method = nil, 
                            sms_fallback_url = nil, 
                            sms_fallback_method = nil, 
                            response_type = 'json')

      # Validate required parameters
      if phone_number == nil
        raise ArgumentError.new "Required parameter 'phone_number' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/updatenumber.{ResponseType}'

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
        'PhoneNumber' => phone_number,
        'FriendlyName' => friendly_name,
        'VoiceUrl' => voice_url,
        'VoiceMethod' => voice_method,
        'VoiceFallbackUrl' => voice_fallback_url,
        'VoiceFallbackMethod' => voice_fallback_method,
        'HangupCallback' => hangup_callback,
        'HangupCallbackMethod' => hangup_callback_method,
        'HeartbeatUrl' => heartbeat_url,
        'HeartbeatMethod' => heartbeat_method,
        'SmsUrl' => sms_url,
        'SmsMethod' => sms_method,
        'SmsFallbackUrl' => sms_fallback_url,
        'SmsFallbackMethod' => sms_fallback_method
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
