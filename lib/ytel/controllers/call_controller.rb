# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # CallController
  class CallController < BaseController
    @instance = CallController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # You can experiment with initiating a call through Ytel and view the
    # request response generated when doing so and get the response in json
    # @param [String] from Required parameter: A valid Ytel Voice enabled number
    # (E.164 format) that will be initiating the phone call.
    # @param [String] to Required parameter: To number
    # @param [String] url Required parameter: URL requested once the call
    # connects
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once call connects.
    # @param [String] status_call_back_url Optional parameter: URL that can be
    # requested to receive notification when call has ended. A set of default
    # parameters will be sent here once the call is finished.
    # @param [HttpActionEnum] status_call_back_method Optional parameter:
    # Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [String] fall_back_url Optional parameter: URL requested if the
    # initial Url parameter fails or encounters an error
    # @param [HttpActionEnum] fall_back_method Optional parameter: Specifies the
    # HTTP method used to request the required FallbackUrl once call connects.
    # @param [String] heart_beat_url Optional parameter: URL that can be
    # requested every 60 seconds during the call to notify of elapsed tim
    # @param [HttpActionEnum] heart_beat_method Optional parameter: Specifies
    # the HTTP method used to request HeartbeatUrl.
    # @param [Integer] timeout Optional parameter: Time (in seconds) Ytel should
    # wait while the call is ringing before canceling the call
    # @param [String] play_dtmf Optional parameter: DTMF Digits to play to the
    # call once it connects. 0-9, #, or *
    # @param [Boolean] hide_caller_id Optional parameter: Specifies if the
    # caller id will be hidden
    # @param [Boolean] record Optional parameter: Specifies if the call should
    # be recorded
    # @param [String] record_call_back_url Optional parameter: Recording
    # parameters will be sent here upon completion
    # @param [HttpActionEnum] record_call_back_method Optional parameter: Method
    # used to request the RecordCallback URL.
    # @param [Boolean] transcribe Optional parameter: Specifies if the call
    # recording should be transcribed
    # @param [String] transcribe_call_back_url Optional parameter: Transcription
    # parameters will be sent here upon completion
    # @param [IfMachineEnum] if_machine Optional parameter: How Ytel should
    # handle the receiving numbers voicemail machine
    # @param [String] if_machine_url Optional parameter: URL requested when
    # IfMachine=continue
    # @param [HttpActionEnum] if_machine_method Optional parameter: Method used
    # to request the IfMachineUrl.
    # @param [Boolean] feedback Optional parameter: Specify if survey should be
    # enable or not
    # @param [String] survey_id Optional parameter: The unique identifier for
    # the survey.
    # @return String response from the API call
    def make_call(options = {})
      # Validate required parameters.
      validate_parameters(
        'from' => options['from'],
        'to' => options['to'],
        'url' => options['url'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/makecall.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'From' => options['from'],
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
        'TranscribeCallBackUrl' => options['transcribe_call_back_url'],
        'IfMachine' => options['if_machine'],
        'IfMachineUrl' => options['if_machine_url'],
        'IfMachineMethod' => options['if_machine_method'],
        'Feedback' => options['feedback'],
        'SurveyId' => options['survey_id']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Play Dtmf and send the Digit
    # @param [String] call_sid Required parameter: The unique identifier of each
    # call resource
    # @param [String] audio_url Required parameter: URL to sound that should be
    # played. You also can add more than one audio file using semicolons e.g.
    # http://example.com/audio1.mp3;http://example.com/audio2.wav
    # @param [String] say_text Required parameter: Valid alphanumeric string
    # that should be played to the In-progress call.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] length Optional parameter: Time limit in seconds for
    # audio play back
    # @param [DirectionEnum] direction Optional parameter: The leg of the call
    # audio will be played to
    # @param [Boolean] mix Optional parameter: If false, all other audio will be
    # muted
    # @return String response from the API call
    def play_audio(options = {})
      # Validate required parameters.
      validate_parameters(
        'call_sid' => options['call_sid'],
        'audio_url' => options['audio_url'],
        'say_text' => options['say_text'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/playaudios.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'CallSid' => options['call_sid'],
        'AudioUrl' => options['audio_url'],
        'SayText' => options['say_text'],
        'Length' => options['length'],
        'Direction' => options['direction'],
        'Mix' => options['mix']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Start or stop recording of an in-progress voice call.
    # @param [String] call_sid Required parameter: The unique identifier of each
    # call resource
    # @param [Boolean] record Required parameter: Set true to initiate recording
    # or false to terminate recording
    # @param [String] response_type Required parameter: Response format, xml or
    # json
    # @param [DirectionEnum] direction Optional parameter: The leg of the call
    # to record
    # @param [Integer] time_limit Optional parameter: Time in seconds the
    # recording duration should not exceed
    # @param [String] call_back_url Optional parameter: URL consulted after the
    # recording completes
    # @param [AudioFormatEnum] fileformat Optional parameter: Format of the
    # recording file. Can be .mp3 or .wav
    # @return String response from the API call
    def record_call(options = {})
      # Validate required parameters.
      validate_parameters(
        'call_sid' => options['call_sid'],
        'record' => options['record'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/recordcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'CallSid' => options['call_sid'],
        'Record' => options['record'],
        'Direction' => options['direction'],
        'TimeLimit' => options['time_limit'],
        'CallBackUrl' => options['call_back_url'],
        'Fileformat' => options['fileformat']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Add audio voice effects to the an in-progress voice call.
    # @param [String] call_sid Required parameter: The unique identifier for the
    # in-progress voice call.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [AudioDirectionEnum] audio_direction Optional parameter: The
    # direction the audio effect should be placed on. If IN, the effects will
    # occur on the incoming audio stream. If OUT, the effects will occur on the
    # outgoing audio stream.
    # @param [Float] pitch_semi_tones Optional parameter: Set the pitch in
    # semitone (half-step) intervals. Value between -14 and 14
    # @param [Float] pitch_octaves Optional parameter: Set the pitch in octave
    # intervals.. Value between -1 and 1
    # @param [Float] pitch Optional parameter: Set the pitch (lowness/highness)
    # of the audio. The higher the value, the higher the pitch. Value greater
    # than 0
    # @param [Float] rate Optional parameter: Set the rate for audio. The lower
    # the value, the lower the rate. value greater than 0
    # @param [Float] tempo Optional parameter: Set the tempo (speed) of the
    # audio. A higher value denotes a faster tempo. Value greater than 0
    # @return String response from the API call
    def voice_effect(options = {})
      # Validate required parameters.
      validate_parameters(
        'call_sid' => options['call_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/voiceeffect.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'CallSid' => options['call_sid'],
        'AudioDirection' => options['audio_direction'],
        'PitchSemiTones' => options['pitch_semi_tones'],
        'PitchOctaves' => options['pitch_octaves'],
        'Pitch' => options['pitch'],
        'Rate' => options['rate'],
        'Tempo' => options['tempo']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Play Dtmf and send the Digit
    # @param [String] call_sid Required parameter: The unique identifier of each
    # call resource
    # @param [String] play_dtmf Required parameter: DTMF digits to play to the
    # call. 0-9, #, *, W, or w
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [DirectionEnum] play_dtmf_direction Optional parameter: The leg of
    # the call DTMF digits should be sent to
    # @return String response from the API call
    def send_digit(options = {})
      # Validate required parameters.
      validate_parameters(
        'call_sid' => options['call_sid'],
        'play_dtmf' => options['play_dtmf'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/senddigits.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'CallSid' => options['call_sid'],
        'PlayDtmf' => options['play_dtmf'],
        'PlayDtmfDirection' => options['play_dtmf_direction']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Interrupt the Call by Call Sid
    # @param [String] call_sid Required parameter: The unique identifier for
    # voice call that is in progress.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] url Optional parameter: URL the in-progress call will be
    # redirected to
    # @param [HttpActionEnum] method Optional parameter: The method used to
    # request the above Url parameter
    # @param [InterruptedCallStatusEnum] status Optional parameter: Status to
    # set the in-progress call to
    # @return String response from the API call
    def interrupted_call(options = {})
      # Validate required parameters.
      validate_parameters(
        'call_sid' => options['call_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/interruptcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'CallSid' => options['call_sid'],
        'Url' => options['url'],
        'Method' => options['method'],
        'Status' => options['status']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # A list of calls associated with your Ytel account
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] page_size Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] to Optional parameter: Filter calls that were sent to this
    # 10-digit number (E.164 format).
    # @param [String] from Optional parameter: Filter calls that were sent from
    # this 10-digit number (E.164 format).
    # @param [String] date_created Optional parameter: Return calls that are
    # from a specified date.
    # @return String response from the API call
    def list_calls(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/listcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'To' => options['to'],
        'From' => options['from'],
        'DateCreated' => options['date_created']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Initiate an outbound Ringless Voicemail through Ytel.
    # @param [String] from Required parameter: A valid Ytel Voice enabled number
    # (E.164 format) that will be initiating the phone call.
    # @param [String] rvm_caller_id Required parameter: A required secondary
    # Caller ID for RVM to work.
    # @param [String] to Required parameter: A valid number (E.164 format) that
    # will receive the phone call.
    # @param [String] voice_mail_url Required parameter: The URL requested once
    # the RVM connects. A set of default parameters will be sent here.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once call connects.
    # @param [String] status_call_back_url Optional parameter: URL that can be
    # requested to receive notification when call has ended. A set of default
    # parameters will be sent here once the call is finished.
    # @param [HttpActionEnum] stats_call_back_method Optional parameter:
    # Specifies the HTTP method used to request the required StatusCallBackUrl
    # once call connects.
    # @return String response from the API call
    def send_ringless_vm(options = {})
      # Validate required parameters.
      validate_parameters(
        'from' => options['from'],
        'rvm_caller_id' => options['rvm_caller_id'],
        'to' => options['to'],
        'voice_mail_url' => options['voice_mail_url'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/makervm.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'From' => options['from'],
        'RVMCallerId' => options['rvm_caller_id'],
        'To' => options['to'],
        'VoiceMailURL' => options['voice_mail_url'],
        'Method' => options['method'],
        'StatusCallBackUrl' => options['status_call_back_url'],
        'StatsCallBackMethod' => options['stats_call_back_method']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Retrieve a single voice call’s information by its CallSid.
    # @param [String] callsid Required parameter: The unique identifier for the
    # voice call.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_call(options = {})
      # Validate required parameters.
      validate_parameters(
        'callsid' => options['callsid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/viewcalls.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'callsid' => options['callsid']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Retrieve a single voice call’s information by its CallSid.
    # @param [String] call_sid Required parameter: The unique identifier for the
    # voice call.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_call_detail(call_sid,
                         response_type)
      # Validate required parameters.
      validate_parameters(
        'call_sid' => call_sid,
        'response_type' => response_type
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/viewcalldetail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => response_type
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'callSid' => call_sid
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Group Call
    # @param [String] from Required parameter: This number to display on Caller
    # ID as calling
    # @param [String] to Required parameter: Please enter multiple E164 number.
    # You can add max 10 numbers. Add numbers separated with comma. e.g :
    # 1111111111,2222222222
    # @param [String] url Required parameter: URL requested once the call
    # connects
    # @param [String] response_type Required parameter: Example:json
    # @param [String] group_confirm_key Required parameter: Define the DTMF that
    # the called party should send to bridge the call. Allowed Values : 0-9, #,
    # *
    # @param [AudioFormatEnum] group_confirm_file Required parameter: Specify
    # the audio file you want to play when the called party picks up the call
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once call connects.
    # @param [String] status_call_back_url Optional parameter: URL that can be
    # requested to receive notification when call has ended. A set of default
    # parameters will be sent here once the call is finished.
    # @param [HttpActionEnum] status_call_back_method Optional parameter:
    # Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [String] fall_back_url Optional parameter: URL requested if the
    # initial Url parameter fails or encounters an error
    # @param [HttpActionEnum] fall_back_method Optional parameter: Specifies the
    # HTTP method used to request the required FallbackUrl once call connects.
    # @param [String] heart_beat_url Optional parameter: URL that can be
    # requested every 60 seconds during the call to notify of elapsed time and
    # pass other general information.
    # @param [HttpActionEnum] heart_beat_method Optional parameter: Specifies
    # the HTTP method used to request HeartbeatUrl.
    # @param [Integer] timeout Optional parameter: Time (in seconds) we should
    # wait while the call is ringing before canceling the call
    # @param [String] play_dtmf Optional parameter: DTMF Digits to play to the
    # call once it connects. 0-9, #, or *
    # @param [String] hide_caller_id Optional parameter: Specifies if the caller
    # id will be hidden
    # @param [Boolean] record Optional parameter: Specifies if the call should
    # be recorded
    # @param [String] record_call_back_url Optional parameter: Recording
    # parameters will be sent here upon completion
    # @param [HttpActionEnum] record_call_back_method Optional parameter: Method
    # used to request the RecordCallback URL.
    # @param [Boolean] transcribe Optional parameter: Specifies if the call
    # recording should be transcribed
    # @param [String] transcribe_call_back_url Optional parameter: Transcription
    # parameters will be sent here upon completion
    # @return String response from the API call
    def group_call(options = {})
      # Validate required parameters.
      validate_parameters(
        'from' => options['from'],
        'to' => options['to'],
        'url' => options['url'],
        'response_type' => options['response_type'],
        'group_confirm_key' => options['group_confirm_key'],
        'group_confirm_file' => options['group_confirm_file']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/calls/groupcall.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'From' => options['from'],
        'To' => options['to'],
        'Url' => options['url'],
        'GroupConfirmKey' => options['group_confirm_key'],
        'GroupConfirmFile' => options['group_confirm_file'],
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
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end
