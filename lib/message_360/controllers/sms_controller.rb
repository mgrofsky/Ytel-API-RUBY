# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class SMSController < BaseController
    @@instance = SMSController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Send an SMS from a message360 number
    # @param [Integer] fromcountrycode Required parameter: From Country Code
    # @param [String] from Required parameter: SMS enabled Message360 number to send this message from
    # @param [Integer] tocountrycode Required parameter: To country code
    # @param [String] to Required parameter: Number to send the SMS to
    # @param [String] body Required parameter: Text Message To Send
    # @param [HttpMethod] method Optional parameter: Specifies the HTTP method used to request the required URL once SMS sent.
    # @param [String] messagestatuscallback Optional parameter: URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished.
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_send_sms(fromcountrycode, 
                        from, 
                        tocountrycode, 
                        to, 
                        body, 
                        method = nil, 
                        messagestatuscallback = nil, 
                        response_type = 'json')

      # Validate required parameters
      if fromcountrycode == nil
        raise ArgumentError.new "Required parameter 'fromcountrycode' cannot be nil."
      elsif from == nil
        raise ArgumentError.new "Required parameter 'from' cannot be nil."
      elsif tocountrycode == nil
        raise ArgumentError.new "Required parameter 'tocountrycode' cannot be nil."
      elsif to == nil
        raise ArgumentError.new "Required parameter 'to' cannot be nil."
      elsif body == nil
        raise ArgumentError.new "Required parameter 'body' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/sms/sendsms.{ResponseType}'

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
        'fromcountrycode' => fromcountrycode,
        'from' => from,
        'tocountrycode' => tocountrycode,
        'to' => to,
        'body' => body,
        'method' => method,
        'messagestatuscallback' => messagestatuscallback
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

    # View Particular SMS
    # @param [String] messagesid Required parameter: Message sid
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_view_sms(messagesid, 
                        response_type = 'json')

      # Validate required parameters
      if messagesid == nil
        raise ArgumentError.new "Required parameter 'messagesid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/sms/viewsms.{ResponseType}'

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
        'messagesid' => messagesid
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

    # List All SMS
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] pagesize Optional parameter: Number of individual resources listed in the response per page
    # @param [String] from Optional parameter: Messages sent from this number
    # @param [String] to Optional parameter: Messages sent to this number
    # @param [String] datesent Optional parameter: Only list SMS messages sent in the specified date range
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_sms(page = nil, 
                        pagesize = nil, 
                        from = nil, 
                        to = nil, 
                        datesent = nil, 
                        response_type = 'json')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/sms/listsms.{ResponseType}'

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
        'page' => page,
        'pagesize' => pagesize,
        'from' => from,
        'to' => to,
        'datesent' => datesent
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

    # List All Inbound SMS
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [String] pagesize Optional parameter: Number of individual resources listed in the response per page
    # @param [String] from Optional parameter: From Number to Inbound SMS
    # @param [String] to Optional parameter: To Number to get Inbound SMS
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_inbound_sms(page = nil, 
                                pagesize = nil, 
                                from = nil, 
                                to = nil, 
                                response_type = 'json')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/sms/getInboundsms.{ResponseType}'

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
        'page' => page,
        'pagesize' => pagesize,
        'from' => from,
        'to' => to
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
