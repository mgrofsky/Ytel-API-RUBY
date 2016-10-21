# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class ConferenceController < BaseController
    @@instance = ConferenceController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # View Participant
    # @param [String] conference_sid Required parameter: unique conference sid
    # @param [String] participant_sid Required parameter: Example: 
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_view_participant(conference_sid, 
                                participant_sid, 
                                response_type = 'json')

      # Validate required parameters
      if conference_sid == nil
        raise ArgumentError.new "Required parameter 'conference_sid' cannot be nil."
      elsif participant_sid == nil
        raise ArgumentError.new "Required parameter 'participant_sid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/conferences/viewparticipant.{ResponseType}'

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
        'ConferenceSid' => conference_sid,
        'ParticipantSid' => participant_sid
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

    # List Participant
    # @param [String] conference_sid Required parameter: unique conference sid
    # @param [Integer] page Optional parameter: page number
    # @param [Integer] pagesize Optional parameter: Example: 
    # @param [Boolean] muted Optional parameter: Example: 
    # @param [Boolean] deaf Optional parameter: Example: 
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_participant(conference_sid, 
                                page = nil, 
                                pagesize = nil, 
                                muted = nil, 
                                deaf = nil, 
                                response_type = 'json')

      # Validate required parameters
      if conference_sid == nil
        raise ArgumentError.new "Required parameter 'conference_sid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/conferences/listparticipant.{ResponseType}'

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
        'ConferenceSid' => conference_sid,
        'Page' => page,
        'Pagesize' => pagesize,
        'Muted' => muted,
        'Deaf' => deaf
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

    # Add Participant in conference 
    # @param [String] conferencesid Required parameter: Unique Conference Sid
    # @param [String] participantnumber Required parameter: Particiant Number
    # @param [Integer] tocountrycode Required parameter: Example: 
    # @param [Boolean] muted Optional parameter: Example: 
    # @param [Boolean] deaf Optional parameter: Example: 
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def add_participant(conferencesid, 
                        participantnumber, 
                        tocountrycode, 
                        muted = nil, 
                        deaf = nil, 
                        response_type = 'json')

      # Validate required parameters
      if conferencesid == nil
        raise ArgumentError.new "Required parameter 'conferencesid' cannot be nil."
      elsif participantnumber == nil
        raise ArgumentError.new "Required parameter 'participantnumber' cannot be nil."
      elsif tocountrycode == nil
        raise ArgumentError.new "Required parameter 'tocountrycode' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/conferences/addParticipant.{ResponseType}'

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
        'conferencesid' => conferencesid,
        'participantnumber' => participantnumber,
        'tocountrycode' => tocountrycode,
        'muted' => muted,
        'deaf' => deaf
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

    # View Conference
    # @param [String] conferencesid Required parameter: The unique identifier of each conference resource
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_view_conference(conferencesid, 
                               response_type = 'json')

      # Validate required parameters
      if conferencesid == nil
        raise ArgumentError.new "Required parameter 'conferencesid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/conferences/viewconference.{ResponseType}'

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
        'conferencesid' => conferencesid
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

    # List Conference
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual resources listed in the response per page
    # @param [String] friendly_name Optional parameter: Only return conferences with the specified FriendlyName
    # @param [InterruptedCallStatus] status Optional parameter: Example: 
    # @param [String] date_created Optional parameter: Example: 
    # @param [String] date_updated Optional parameter: Example: 
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_conference(page = nil, 
                               page_size = nil, 
                               friendly_name = nil, 
                               status = nil, 
                               date_created = nil, 
                               date_updated = nil, 
                               response_type = 'json')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/conferences/listconference.{ResponseType}'

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
        'FriendlyName' => friendly_name,
        'Status' => status,
        'DateCreated' => date_created,
        'DateUpdated' => date_updated
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
