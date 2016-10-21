# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class CallController < BaseController
    @@instance = CallController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # View Call Response
    # @param [String] callsid Required parameter: Call Sid id for particular Call
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_view_call(callsid, 
                         response_type = 'json')

      # Validate required parameters
      if callsid == nil
        raise ArgumentError.new "Required parameter 'callsid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/viewcalls.{ResponseType}'

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
        'callsid' => callsid
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

    # You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json
    # @param [String] from_country_code Required parameter: from country code
    # @param [String] from Required parameter: This number to display on Caller ID as calling
    # @param [String] to_country_code Required parameter: To cuntry code number
    # @param [String] to Required parameter: To number
    # @param [String] url Required parameter: URL requested once the call connects
    # @param [HttpMethod] method Optional parameter: Specifies the HTTP method used to request the required URL once call connects.
    # @param [String] status_call_back_url Optional parameter: specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [HttpMethod] status_call_back_method Optional parameter: Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [String] fall_back_url Optional parameter: URL requested if the initial Url parameter fails or encounters an error
    # @param [HttpMethod] fall_back_method Optional parameter: Specifies the HTTP method used to request the required FallbackUrl once call connects.
    # @param [String] heart_beat_url Optional parameter: URL that can be requested every 60 seconds during the call to notify of elapsed tim
    # @param [Boolean] heart_beat_method Optional parameter: Specifies the HTTP method used to request HeartbeatUrl.
    # @param [Integer] timeout Optional parameter: Time (in seconds) Message360 should wait while the call is ringing before canceling the call
    # @param [String] play_dtmf Optional parameter: DTMF Digits to play to the call once it connects. 0-9, #, or *
    # @param [Boolean] hide_caller_id Optional parameter: Specifies if the caller id will be hidden
    # @param [Boolean] record Optional parameter: Specifies if the call should be recorded
    # @param [String] record_call_back_url Optional parameter: Recording parameters will be sent here upon completion
    # @param [HttpMethod] record_call_back_method Optional parameter: Method used to request the RecordCallback URL.
    # @param [Boolean] transcribe Optional parameter: Specifies if the call recording should be transcribed
    # @param [String] transcribe_call_back_url Optional parameter: Transcription parameters will be sent here upon completion
    # @param [IfMachine] if_machine Optional parameter: How Message360 should handle the receiving numbers voicemail machine
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_make_call(from_country_code, 
                         from, 
                         to_country_code, 
                         to, 
                         url, 
                         method = nil, 
                         status_call_back_url = nil, 
                         status_call_back_method = nil, 
                         fall_back_url = nil, 
                         fall_back_method = nil, 
                         heart_beat_url = nil, 
                         heart_beat_method = nil, 
                         timeout = nil, 
                         play_dtmf = nil, 
                         hide_caller_id = nil, 
                         record = nil, 
                         record_call_back_url = nil, 
                         record_call_back_method = nil, 
                         transcribe = nil, 
                         transcribe_call_back_url = nil, 
                         if_machine = nil, 
                         response_type = 'json')

      # Validate required parameters
      if from_country_code == nil
        raise ArgumentError.new "Required parameter 'from_country_code' cannot be nil."
      elsif from == nil
        raise ArgumentError.new "Required parameter 'from' cannot be nil."
      elsif to_country_code == nil
        raise ArgumentError.new "Required parameter 'to_country_code' cannot be nil."
      elsif to == nil
        raise ArgumentError.new "Required parameter 'to' cannot be nil."
      elsif url == nil
        raise ArgumentError.new "Required parameter 'url' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/makecall.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => response_type
      }

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'Method' => method
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'message360-api'
      }

      # prepare parameters
      _parameters = {
        'FromCountryCode' => from_country_code,
        'From' => from,
        'ToCountryCode' => to_country_code,
        'To' => to,
        'Url' => url,
        'StatusCallBackUrl' => status_call_back_url,
        'StatusCallBackMethod' => status_call_back_method,
        'FallBackUrl' => fall_back_url,
        'FallBackMethod' => fall_back_method,
        'HeartBeatUrl' => heart_beat_url,
        'HeartBeatMethod' => heart_beat_method,
        'Timeout' => timeout,
        'PlayDtmf' => play_dtmf,
        'HideCallerId' => hide_caller_id,
        'Record' => record,
        'RecordCallBackUrl' => record_call_back_url,
        'RecordCallBackMethod' => record_call_back_method,
        'Transcribe' => transcribe,
        'TranscribeCallBackUrl' => transcribe_call_back_url,
        'IfMachine' => if_machine
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

    # Play Dtmf and send the Digit
    # @param [Integer] length Required parameter: Time limit in seconds for audio play back
    # @param [Direction] direction Required parameter: The leg of the call audio will be played to
    # @param [Boolean] loop Required parameter: Repeat audio playback indefinitely
    # @param [Boolean] mix Required parameter: If false, all other audio will be muted
    # @param [String] call_sid Optional parameter: The unique identifier of each call resource
    # @param [String] audio_url Optional parameter: URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_play_audio(length, 
                          direction, 
                          loop, 
                          mix, 
                          call_sid = nil, 
                          audio_url = nil, 
                          response_type = 'json')

      # Validate required parameters
      if length == nil
        raise ArgumentError.new "Required parameter 'length' cannot be nil."
      elsif direction == nil
        raise ArgumentError.new "Required parameter 'direction' cannot be nil."
      elsif loop == nil
        raise ArgumentError.new "Required parameter 'loop' cannot be nil."
      elsif mix == nil
        raise ArgumentError.new "Required parameter 'mix' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/playaudios.{ResponseType}'

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
        'Length' => length,
        'Direction' => direction,
        'Loop' => loop,
        'Mix' => mix,
        'CallSid' => call_sid,
        'AudioUrl' => audio_url
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

    # Record a Call
    # @param [String] call_sid Required parameter: The unique identifier of each call resource
    # @param [Boolean] record Required parameter: Set true to initiate recording or false to terminate recording
    # @param [Direction] direction Optional parameter: The leg of the call to record
    # @param [Integer] time_limit Optional parameter: Time in seconds the recording duration should not exceed
    # @param [String] call_back_url Optional parameter: URL consulted after the recording completes
    # @param [AudioFormat] fileformat Optional parameter: Format of the recording file. Can be .mp3 or .wav
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_record_call(call_sid, 
                           record, 
                           direction = nil, 
                           time_limit = nil, 
                           call_back_url = nil, 
                           fileformat = nil, 
                           response_type = 'json')

      # Validate required parameters
      if call_sid == nil
        raise ArgumentError.new "Required parameter 'call_sid' cannot be nil."
      elsif record == nil
        raise ArgumentError.new "Required parameter 'record' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/recordcalls.{ResponseType}'

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
        'CallSid' => call_sid,
        'Record' => record,
        'Direction' => direction,
        'TimeLimit' => time_limit,
        'CallBackUrl' => call_back_url,
        'Fileformat' => fileformat
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

    # Voice Effect
    # @param [String] call_sid Required parameter: Example: 
    # @param [AudioDirection] audio_direction Optional parameter: Example: 
    # @param [Float] pitch_semi_tones Optional parameter: value between -14 and 14
    # @param [Float] pitch_octaves Optional parameter: value between -1 and 1
    # @param [Float] pitch Optional parameter: value greater than 0
    # @param [Float] rate Optional parameter: value greater than 0
    # @param [Float] tempo Optional parameter: value greater than 0
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_voice_effect(call_sid, 
                            audio_direction = nil, 
                            pitch_semi_tones = nil, 
                            pitch_octaves = nil, 
                            pitch = nil, 
                            rate = nil, 
                            tempo = nil, 
                            response_type = 'json')

      # Validate required parameters
      if call_sid == nil
        raise ArgumentError.new "Required parameter 'call_sid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/voiceeffect.{ResponseType}'

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
        'CallSid' => call_sid,
        'AudioDirection' => audio_direction,
        'PitchSemiTones' => pitch_semi_tones,
        'PitchOctaves' => pitch_octaves,
        'Pitch' => pitch,
        'Rate' => rate,
        'Tempo' => tempo
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

    # Play Dtmf and send the Digit
    # @param [String] call_sid Required parameter: The unique identifier of each call resource
    # @param [String] play_dtmf Required parameter: DTMF digits to play to the call. 0-9, #, *, W, or w
    # @param [Direction] play_dtmf_direction Optional parameter: The leg of the call DTMF digits should be sent to
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_send_digit(call_sid, 
                          play_dtmf, 
                          play_dtmf_direction = nil, 
                          response_type = 'json')

      # Validate required parameters
      if call_sid == nil
        raise ArgumentError.new "Required parameter 'call_sid' cannot be nil."
      elsif play_dtmf == nil
        raise ArgumentError.new "Required parameter 'play_dtmf' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/senddigits.{ResponseType}'

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
        'CallSid' => call_sid,
        'PlayDtmf' => play_dtmf,
        'PlayDtmfDirection' => play_dtmf_direction
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

    # Interrupt the Call by Call Sid
    # @param [String] call_sid Required parameter: Call SId
    # @param [String] url Optional parameter: URL the in-progress call will be redirected to
    # @param [HttpMethod] method Optional parameter: The method used to request the above Url parameter
    # @param [InterruptedCallStatus] status Optional parameter: Status to set the in-progress call to
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_interrupted_call(call_sid, 
                                url = nil, 
                                method = nil, 
                                status = nil, 
                                response_type = 'json')

      # Validate required parameters
      if call_sid == nil
        raise ArgumentError.new "Required parameter 'call_sid' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/interruptcalls.{ResponseType}'

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
        'CallSid' => call_sid,
        'Url' => url,
        'Method' => method,
        'Status' => status
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

    # A list of calls associated with your Message360 account
    # @param [String] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [String] page_size Optional parameter: Number of individual resources listed in the response per page
    # @param [String] to Optional parameter: Only list calls to this number
    # @param [String] from Optional parameter: Only list calls from this number
    # @param [String] date_created Optional parameter: Only list calls starting within the specified date range
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return void response from the API call
    def create_list_calls(page = nil, 
                          page_size = nil, 
                          to = nil, 
                          from = nil, 
                          date_created = nil, 
                          response_type = 'json')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/calls/listcalls.{ResponseType}'

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
        'To' => to,
        'From' => from,
        'DateCreated' => date_created
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
    end
  end
end
