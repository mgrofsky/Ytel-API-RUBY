# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # ConferenceController
  class ConferenceController < BaseController
    @instance = ConferenceController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Deaf Mute Participant
    # @param [String] conference_sid Required parameter: ID of the active
    # conference
    # @param [String] participant_sid Required parameter: ID of an active
    # participant
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @param [Boolean] muted Optional parameter: Mute a participant
    # @param [Boolean] deaf Optional parameter: Make it so a participant cant
    # hear
    # @return String response from the API call
    def deaf_mute_participant(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
        'participant_sid' => options['participant_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/deafMuteParticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'conferenceSid' => options['conference_sid'],
        'ParticipantSid' => options['participant_sid'],
        'Muted' => options['muted'],
        'Deaf' => options['deaf']
      }

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

    # View Participant
    # @param [String] conference_sid Required parameter: unique conference sid
    # @param [String] participant_sid Required parameter: Example:
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_participant(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
        'participant_sid' => options['participant_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/viewparticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'ConferenceSid' => options['conference_sid'],
        'ParticipantSid' => options['participant_sid']
      }

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

    # Add Participant in conference
    # @param [String] conferencesid Required parameter: Unique Conference Sid
    # @param [String] participantnumber Required parameter: Particiant Number
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Boolean] muted Optional parameter: add muted
    # @param [Boolean] deaf Optional parameter: add without volume
    # @return String response from the API call
    def add_participant(options = {})
      # Validate required parameters.
      validate_parameters(
        'conferencesid' => options['conferencesid'],
        'participantnumber' => options['participantnumber'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/addParticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'conferencesid' => options['conferencesid'],
        'participantnumber' => options['participantnumber'],
        'muted' => options['muted'],
        'deaf' => options['deaf']
      }

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

    # View Conference
    # @param [String] conferencesid Required parameter: The unique identifier of
    # each conference resource
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_conference(options = {})
      # Validate required parameters.
      validate_parameters(
        'conferencesid' => options['conferencesid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/viewconference.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'conferencesid' => options['conferencesid']
      }

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

    # Here you can experiment with initiating a conference call through
    # message360 and view the request response generated when doing so.
    # @param [String] from Required parameter: This number to display on Caller
    # ID as calling
    # @param [String] to Required parameter: To number
    # @param [String] url Required parameter: URL requested once the call
    # connects
    # @param [HttpActionEnum] method Required parameter: Specifies the HTTP
    # method used to request the required URL once call connects.
    # @param [String] record_callback_url Required parameter: Recording
    # parameters will be sent here upon completion.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] status_call_back_url Optional parameter: URL that can be
    # requested to receive notification when call has ended. A set of default
    # parameters will be sent here once the conference is finished.
    # @param [HttpActionEnum] status_call_back_method Optional parameter:
    # Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [String] fall_back_url Optional parameter: URL requested if the
    # initial Url parameter fails or encounters an error
    # @param [HttpActionEnum] fall_back_method Optional parameter: Specifies the
    # HTTP method used to request the required FallbackUrl once call connects.
    # @param [Boolean] record Optional parameter: Specifies if the conference
    # should be recorded.
    # @param [HttpActionEnum] record_callback_method Optional parameter:
    # Specifies the HTTP method used to request the required URL once conference
    # connects.
    # @param [String] schdeule_time Optional parameter: Schedule conference in
    # future. Schedule time must be greater than current time
    # @param [Integer] timeout Optional parameter: The number of seconds the
    # call stays on the line while waiting for an answer. The max time limit is
    # 999 and the default limit is 60 seconds but lower times can be set.
    # @return String response from the API call
    def create_conference(options = {})
      # Validate required parameters.
      validate_parameters(
        'from' => options['from'],
        'to' => options['to'],
        'url' => options['url'],
        'method' => options['method'],
        'record_callback_url' => options['record_callback_url'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/createConference.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'Url' => options['url'],
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'From' => options['from'],
        'To' => options['to'],
        'Method' => options['method'],
        'RecordCallbackUrl' => options['record_callback_url'],
        'StatusCallBackUrl' => options['status_call_back_url'],
        'StatusCallBackMethod' => options['status_call_back_method'],
        'FallBackUrl' => options['fall_back_url'],
        'FallBackMethod' => options['fall_back_method'],
        'Record' => options['record'],
        'RecordCallbackMethod' => options['record_callback_method'],
        'SchdeuleTime' => options['schdeule_time'],
        'Timeout' => options['timeout']
      }

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

    # Remove a participant from a conference.
    # @param [String] conference_sid Required parameter: The unique identifier
    # for a conference object.
    # @param [String] participant_sid Required parameter: The unique identifier
    # for a participant object.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def hangup_participant(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
        'participant_sid' => options['participant_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/hangupparticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'ParticipantSid' => options['participant_sid'],
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'ConferenceSid' => options['conference_sid']
      }

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

    # Play an audio file during a conference.
    # @param [String] conference_sid Required parameter: The unique identifier
    # for a conference object.
    # @param [String] participant_sid Required parameter: The unique identifier
    # for a participant object.
    # @param [AudioFormatEnum] audio_url Required parameter: The URL for the
    # audio file that is to be played during the conference. Multiple audio
    # files can be chained by using a semicolon.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def play_conference_audio(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
        'participant_sid' => options['participant_sid'],
        'audio_url' => options['audio_url'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/playaudio.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'ConferenceSid' => options['conference_sid'],
        'ParticipantSid' => options['participant_sid'],
        'AudioUrl' => options['audio_url']
      }

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

    # List Participant
    # @param [String] conference_sid Required parameter: unique conference sid
    # @param [String] response_type Required parameter: Response format, xml or
    # json
    # @param [Integer] page Optional parameter: page number
    # @param [Integer] pagesize Optional parameter: Amount of records to return
    # per page
    # @param [Boolean] muted Optional parameter: Participants that are muted
    # @param [Boolean] deaf Optional parameter: Participants cant hear
    # @return String response from the API call
    def list_participant(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/listparticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'ConferenceSid' => options['conference_sid'],
        'Page' => options['page'],
        'Pagesize' => options['pagesize'],
        'Muted' => options['muted'],
        'Deaf' => options['deaf']
      }

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

    # List Conference
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: Which page of the overall
    # response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] friendly_name Optional parameter: Only return conferences
    # with the specified FriendlyName
    # @param [String] date_created Optional parameter: Conference created date
    # @return String response from the API call
    def list_conference(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/listconference.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'FriendlyName' => options['friendly_name'],
        'DateCreated' => options['date_created']
      }

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
