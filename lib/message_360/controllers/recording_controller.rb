# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class RecordingController < BaseController
    @@instance = RecordingController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Delete Recording Record
    # @param [String] recording_sid Required parameter: Unique Recording Sid to be delete
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_delete_recording(recording_sid, 
                                response_type = 'json')

      # Validate required parameters
      if recording_sid == nil
        raise ArgumentError.new "Required parameter 'recording_sid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/recording/deleterecording.{ResponseType}'

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
        'RecordingSid' => recording_sid
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

    # View a specific Recording
    # @param [String] recording_sid Required parameter: Search Recording sid
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_view_recording(recording_sid, 
                              response_type = 'json')

      # Validate required parameters
      if recording_sid == nil
        raise ArgumentError.new "Required parameter 'recording_sid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/recording/viewrecording.{ResponseType}'

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
        'RecordingSid' => recording_sid
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

    # List out Recordings
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual resources listed in the response per page
    # @param [String] date_created Optional parameter: Example: 
    # @param [String] call_sid Optional parameter: Example: 
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_recording(page = nil, 
                              page_size = nil, 
                              date_created = nil, 
                              call_sid = nil, 
                              response_type = 'json')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/recording/listrecording.{ResponseType}'

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
        'DateCreated' => date_created,
        'CallSid' => call_sid
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
