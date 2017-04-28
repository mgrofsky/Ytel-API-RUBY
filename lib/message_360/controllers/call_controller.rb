# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class CallController < BaseController
    @@instance = CallController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Group Call
    # @param [String] from_country_code Required parameter: Example: 1
    # @param [String] from Required parameter: Example: 
    # @param [String] to_country_code Required parameter: Example: 1
    # @param [String] to Required parameter: Example: 
    # @param [String] url Required parameter: Example: 
    # @param [String] response_type Required parameter: Example: json
    # @param [HttpActionEnum] method Optional parameter: Example: 
    # @param [String] status_call_back_url Optional parameter: Example: 
    # @param [HttpActionEnum] status_call_back_method Optional parameter: Example: 
    # @param [String] fall_back_url Optional parameter: Example: 
    # @param [HttpActionEnum] fall_back_method Optional parameter: Example: 
    # @param [String] heart_beat_url Optional parameter: Example: 
    # @param [HttpActionEnum] heart_beat_method Optional parameter: Example: 
    # @param [Integer] timeout Optional parameter: Example: 
    # @param [String] play_dtmf Optional parameter: Example: 
    # @param [String] hide_caller_id Optional parameter: Example: 
    # @param [Boolean] record Optional parameter: Example: 
    # @param [String] record_call_back_url Optional parameter: Example: 
    # @param [HttpActionEnum] record_call_back_method Optional parameter: Example: 
    # @param [Boolean] transcribe Optional parameter: Example: 
    # @param [String] transcribe_call_back_url Optional parameter: Example: 
    # @return String response from the API call
    def create_group_call(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'from_country_code' => options['from_country_code'],
        'from' => options['from'],
        'to_country_code' => options['to_country_code'],
        'to' => options['to'],
        'url' => options['url'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/groupcall.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'FromCountryCode' => options['from_country_code'],
        'From' => options['from'],
        'ToCountryCode' => options['to_country_code'],
        'To' => options['to'],
        'Url' => options['url'],
        'Method' => options['method'],
        'StatusCallBackUrl' => options['status_call_back_url'],
        'StatusCallBackMethod' => options['status_call_back_method'],
        'FallBackUrl' => options['fall_back_url'],
        'FallBackMethod' => options['fall_back_method'],
        'HeartBeatUrl' => options['heart_beat_url'],
        'HeartBeatMethod' => options['heart_beat_method'],
        'Timeout' => options['timeout'],
        'PlayDtmf' => options['play_dtmf'],
        'HideCallerId' => options['hide_caller_id'],
        'Record' => options['record'],
        'RecordCallBackUrl' => options['record_call_back_url'],
        'RecordCallBackMethod' => options['record_call_back_method'],
        'Transcribe' => options['transcribe'],
        'TranscribeCallBackUrl' => options['transcribe_call_back_url']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Voice Effect
    # @param [String] call_sid Required parameter: Example: 
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [AudioDirectionEnum] audio_direction Optional parameter: Example: 
    # @param [Float] pitch_semi_tones Optional parameter: value between -14 and 14
    # @param [Float] pitch_octaves Optional parameter: value between -1 and 1
    # @param [Float] pitch Optional parameter: value greater than 0
    # @param [Float] rate Optional parameter: value greater than 0
    # @param [Float] tempo Optional parameter: value greater than 0
    # @return String response from the API call
    def create_voice_effect(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'call_sid' => options['call_sid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/voiceeffect.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'CallSid' => options['call_sid'],
        'AudioDirection' => options['audio_direction'],
        'PitchSemiTones' => options['pitch_semi_tones'],
        'PitchOctaves' => options['pitch_octaves'],
        'Pitch' => options['pitch'],
        'Rate' => options['rate'],
        'Tempo' => options['tempo']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Record a Call
    # @param [String] call_sid Required parameter: The unique identifier of each call resource
    # @param [Boolean] record Required parameter: Set true to initiate recording or false to terminate recording
    # @param [String] response_type Required parameter: Response format, xml or json
    # @param [DirectionEnum] direction Optional parameter: The leg of the call to record
    # @param [Integer] time_limit Optional parameter: Time in seconds the recording duration should not exceed
    # @param [String] call_back_url Optional parameter: URL consulted after the recording completes
    # @param [AudioFormatEnum] fileformat Optional parameter: Format of the recording file. Can be .mp3 or .wav
    # @return String response from the API call
    def create_record_call(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'call_sid' => options['call_sid'],
        'record' => options['record'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/recordcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'CallSid' => options['call_sid'],
        'Record' => options['record'],
        'Direction' => options['direction'],
        'TimeLimit' => options['time_limit'],
        'CallBackUrl' => options['call_back_url'],
        'Fileformat' => options['fileformat']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Play Dtmf and send the Digit
    # @param [String] call_sid Required parameter: The unique identifier of each call resource
    # @param [String] audio_url Required parameter: URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [Integer] length Optional parameter: Time limit in seconds for audio play back
    # @param [DirectionEnum] direction Optional parameter: The leg of the call audio will be played to
    # @param [Boolean] loop Optional parameter: Repeat audio playback indefinitely
    # @param [Boolean] mix Optional parameter: If false, all other audio will be muted
    # @return String response from the API call
    def create_play_audio(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'call_sid' => options['call_sid'],
        'audio_url' => options['audio_url'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/playaudios.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'CallSid' => options['call_sid'],
        'AudioUrl' => options['audio_url'],
        'Length' => options['length'],
        'Direction' => options['direction'],
        'Loop' => options['loop'],
        'Mix' => options['mix']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Interrupt the Call by Call Sid
    # @param [String] call_sid Required parameter: Call SId
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] url Optional parameter: URL the in-progress call will be redirected to
    # @param [HttpActionEnum] method Optional parameter: The method used to request the above Url parameter
    # @param [InterruptedCallStatusEnum] status Optional parameter: Status to set the in-progress call to
    # @return String response from the API call
    def create_interrupted_call(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'call_sid' => options['call_sid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/interruptcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'CallSid' => options['call_sid'],
        'Url' => options['url'],
        'Method' => options['method'],
        'Status' => options['status']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Play Dtmf and send the Digit
    # @param [String] call_sid Required parameter: The unique identifier of each call resource
    # @param [String] play_dtmf Required parameter: DTMF digits to play to the call. 0-9, #, *, W, or w
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [DirectionEnum] play_dtmf_direction Optional parameter: The leg of the call DTMF digits should be sent to
    # @return String response from the API call
    def create_send_digit(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'call_sid' => options['call_sid'],
        'play_dtmf' => options['play_dtmf'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/senddigits.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'CallSid' => options['call_sid'],
        'PlayDtmf' => options['play_dtmf'],
        'PlayDtmfDirection' => options['play_dtmf_direction']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json
    # @param [String] from_country_code Required parameter: from country code
    # @param [String] from Required parameter: This number to display on Caller ID as calling
    # @param [String] to_country_code Required parameter: To cuntry code number
    # @param [String] to Required parameter: To number
    # @param [String] url Required parameter: URL requested once the call connects
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP method used to request the required URL once call connects.
    # @param [String] status_call_back_url Optional parameter: specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [HttpActionEnum] status_call_back_method Optional parameter: Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [String] fall_back_url Optional parameter: URL requested if the initial Url parameter fails or encounters an error
    # @param [HttpActionEnum] fall_back_method Optional parameter: Specifies the HTTP method used to request the required FallbackUrl once call connects.
    # @param [String] heart_beat_url Optional parameter: URL that can be requested every 60 seconds during the call to notify of elapsed tim
    # @param [Boolean] heart_beat_method Optional parameter: Specifies the HTTP method used to request HeartbeatUrl.
    # @param [Integer] timeout Optional parameter: Time (in seconds) Message360 should wait while the call is ringing before canceling the call
    # @param [String] play_dtmf Optional parameter: DTMF Digits to play to the call once it connects. 0-9, #, or *
    # @param [Boolean] hide_caller_id Optional parameter: Specifies if the caller id will be hidden
    # @param [Boolean] record Optional parameter: Specifies if the call should be recorded
    # @param [String] record_call_back_url Optional parameter: Recording parameters will be sent here upon completion
    # @param [HttpActionEnum] record_call_back_method Optional parameter: Method used to request the RecordCallback URL.
    # @param [Boolean] transcribe Optional parameter: Specifies if the call recording should be transcribed
    # @param [String] transcribe_call_back_url Optional parameter: Transcription parameters will be sent here upon completion
    # @param [IfMachineEnum] if_machine Optional parameter: How Message360 should handle the receiving numbers voicemail machine
    # @return String response from the API call
    def create_make_call(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'from_country_code' => options['from_country_code'],
        'from' => options['from'],
        'to_country_code' => options['to_country_code'],
        'to' => options['to'],
        'url' => options['url'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/makecall.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'Method' => options['method']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'FromCountryCode' => options['from_country_code'],
        'From' => options['from'],
        'ToCountryCode' => options['to_country_code'],
        'To' => options['to'],
        'Url' => options['url'],
        'StatusCallBackUrl' => options['status_call_back_url'],
        'StatusCallBackMethod' => options['status_call_back_method'],
        'FallBackUrl' => options['fall_back_url'],
        'FallBackMethod' => options['fall_back_method'],
        'HeartBeatUrl' => options['heart_beat_url'],
        'HeartBeatMethod' => options['heart_beat_method'],
        'Timeout' => options['timeout'],
        'PlayDtmf' => options['play_dtmf'],
        'HideCallerId' => options['hide_caller_id'],
        'Record' => options['record'],
        'RecordCallBackUrl' => options['record_call_back_url'],
        'RecordCallBackMethod' => options['record_call_back_method'],
        'Transcribe' => options['transcribe'],
        'TranscribeCallBackUrl' => options['transcribe_call_back_url'],
        'IfMachine' => options['if_machine']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # A list of calls associated with your Message360 account
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual resources listed in the response per page
    # @param [String] to Optional parameter: Only list calls to this number
    # @param [String] from Optional parameter: Only list calls from this number
    # @param [String] date_created Optional parameter: Only list calls starting within the specified date range
    # @return String response from the API call
    def create_list_calls(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/listcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'To' => options['to'],
        'From' => options['from'],
        'DateCreated' => options['date_created']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # API endpoint used to send a Ringless Voicemail
    # @param [String] from_country_code Required parameter: From country code
    # @param [String] from Required parameter: This number to display on Caller ID as calling
    # @param [String] to_country_code Required parameter: To country code
    # @param [String] to Required parameter: To number
    # @param [String] voice_mail_url Required parameter: URL to an audio file
    # @param [String] method Required parameter: Not currently used in this version
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] status_call_back_url Optional parameter: URL to post the status of the Ringless request
    # @param [String] stats_call_back_method Optional parameter: POST or GET
    # @return String response from the API call
    def create_send_ringless_vm(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'from_country_code' => options['from_country_code'],
        'from' => options['from'],
        'to_country_code' => options['to_country_code'],
        'to' => options['to'],
        'voice_mail_url' => options['voice_mail_url'],
        'method' => options['method'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/makeringlessvoicemailcall.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'FromCountryCode' => options['from_country_code'],
        'From' => options['from'],
        'ToCountryCode' => options['to_country_code'],
        'To' => options['to'],
        'VoiceMailURL' => options['voice_mail_url'],
        'Method' => options['method'],
        'StatusCallBackUrl' => options['status_call_back_url'],
        'StatsCallBackMethod' => options['stats_call_back_method']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View Call Response
    # @param [String] callsid Required parameter: Call Sid id for particular Call
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_call(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'callsid' => options['callsid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/calls/viewcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'callsid' => options['callsid']
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
