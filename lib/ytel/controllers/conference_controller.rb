# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
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

    # Retrieve information about a participant by its ParticipantSid.
    # @param [String] conference_sid Required parameter: The unique identifier
    # for a conference object.
    # @param [String] participant_sid Required parameter: The unique identifier
    # for a participant object.
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
      _query_builder << '/conferences/viewParticipant.{ResponseType}'
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

    # Retrieve information about a conference by its ConferenceSid.
    # @param [String] conference_sid Required parameter: The unique identifier
    # of each conference resource
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_conference(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
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
        'ConferenceSid' => options['conference_sid']
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

    # Add Participant in conference
    # @param [String] conference_sid Required parameter: The unique identifier
    # for a conference object.
    # @param [String] participant_number Required parameter: The phone number of
    # the participant to be added.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Boolean] muted Optional parameter: Specifies if participant should
    # be muted.
    # @param [Boolean] deaf Optional parameter: Specifies if the participant
    # should hear audio in the conference.
    # @return String response from the API call
    def add_participant(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
        'participant_number' => options['participant_number'],
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
        'ConferenceSid' => options['conference_sid'],
        'ParticipantNumber' => options['participant_number'],
        'Muted' => options['muted'],
        'Deaf' => options['deaf']
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

    # Here you can experiment with initiating a conference call through Ytel and
    # view the request response generated when doing so.
    # @param [String] from Required parameter: A valid 10-digit number (E.164
    # format) that will be initiating the conference call.
    # @param [String] to Required parameter: A valid 10-digit number (E.164
    # format) that is to receive the conference call.
    # @param [String] url Required parameter: URL requested once the conference
    # connects
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once call connects.
    # @param [String] status_call_back_url Optional parameter: URL that can be
    # requested to receive notification when call has ended. A set of default
    # parameters will be sent here once the conference is finished.
    # @param [HttpActionEnum] status_call_back_method Optional parameter:
    # Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
    # @param [String] fallback_url Optional parameter: URL requested if the
    # initial Url parameter fails or encounters an error
    # @param [HttpActionEnum] fallback_method Optional parameter: Specifies the
    # HTTP method used to request the required FallbackUrl once call connects.
    # @param [Boolean] record Optional parameter: Specifies if the conference
    # should be recorded.
    # @param [String] record_call_back_url Optional parameter: Recording
    # parameters will be sent here upon completion.
    # @param [HttpActionEnum] record_call_back_method Optional parameter:
    # Specifies the HTTP method used to request the required URL once conference
    # connects.
    # @param [String] schedule_time Optional parameter: Schedule conference in
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
        {
          'Url' => options['url']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'From' => options['from'],
        'To' => options['to'],
        'Method' => options['method'],
        'StatusCallBackUrl' => options['status_call_back_url'],
        'StatusCallBackMethod' => options['status_call_back_method'],
        'FallbackUrl' => options['fallback_url'],
        'FallbackMethod' => options['fallback_method'],
        'Record' => options['record'],
        'RecordCallBackUrl' => options['record_call_back_url'],
        'RecordCallBackMethod' => options['record_call_back_method'],
        'ScheduleTime' => options['schedule_time'],
        'Timeout' => options['timeout']
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
      _query_builder << '/conferences/hangupParticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'ParticipantSid' => options['participant_sid']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'ConferenceSid' => options['conference_sid']
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
      _query_builder << '/conferences/playAudio.{ResponseType}'
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

    # Retrieve a list of participants for an in-progress conference.
    # @param [String] conference_sid Required parameter: The unique identifier
    # for a conference.
    # @param [String] response_type Required parameter: Response format, xml or
    # json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: The count of objects to
    # return per page.
    # @param [Boolean] muted Optional parameter: Specifies if participant should
    # be muted.
    # @param [Boolean] deaf Optional parameter: Specifies if the participant
    # should hear audio in the conference.
    # @return String response from the API call
    def list_participant(options = {})
      # Validate required parameters.
      validate_parameters(
        'conference_sid' => options['conference_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/conferences/listParticipant.{ResponseType}'
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

    # Retrieve a list of conference objects.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
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
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'FriendlyName' => options['friendly_name'],
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
  end
end
