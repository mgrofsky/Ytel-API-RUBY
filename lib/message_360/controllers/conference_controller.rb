# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class ConferenceController < BaseController
    @@instance = ConferenceController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Deaf Mute Participant
    # @param [String] conference_sid Required parameter: Example: 
    # @param [String] participant_sid Required parameter: Example: 
    # @param [String] response_type Required parameter: Response Type either json or xml
    # @param [Boolean] muted Optional parameter: Example: 
    # @param [Boolean] deaf Optional parameter: Example: 
    # @return String response from the API call
    def create_deaf_mute_participant(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'conference_sid' => options['conference_sid'],
        'participant_sid' => options['participant_sid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/conferences/deafMuteParticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'conferenceSid' => options['conference_sid'],
        'ParticipantSid' => options['participant_sid'],
        'Muted' => options['muted'],
        'Deaf' => options['deaf']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List Conference
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual resources listed in the response per page
    # @param [String] friendly_name Optional parameter: Only return conferences with the specified FriendlyName
    # @param [InterruptedCallStatusEnum] status Optional parameter: Example: 
    # @param [String] date_created Optional parameter: Example: 
    # @param [String] date_updated Optional parameter: Example: 
    # @return String response from the API call
    def create_list_conference(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/conferences/listconference.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'FriendlyName' => options['friendly_name'],
        'Status' => options['status'],
        'DateCreated' => options['date_created'],
        'DateUpdated' => options['date_updated']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View Conference
    # @param [String] conferencesid Required parameter: The unique identifier of each conference resource
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_conference(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'conferencesid' => options['conferencesid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/conferences/viewconference.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'conferencesid' => options['conferencesid']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Add Participant in conference 
    # @param [String] conferencesid Required parameter: Unique Conference Sid
    # @param [String] participantnumber Required parameter: Particiant Number
    # @param [Integer] tocountrycode Required parameter: Example: 
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [Boolean] muted Optional parameter: Example: 
    # @param [Boolean] deaf Optional parameter: Example: 
    # @return String response from the API call
    def add_participant(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'conferencesid' => options['conferencesid'],
        'participantnumber' => options['participantnumber'],
        'tocountrycode' => options['tocountrycode'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/conferences/addParticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'conferencesid' => options['conferencesid'],
        'participantnumber' => options['participantnumber'],
        'tocountrycode' => options['tocountrycode'],
        'muted' => options['muted'],
        'deaf' => options['deaf']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List Participant
    # @param [String] conference_sid Required parameter: unique conference sid
    # @param [String] response_type Required parameter: Response format, xml or json
    # @param [Integer] page Optional parameter: page number
    # @param [Integer] pagesize Optional parameter: Example: 
    # @param [Boolean] muted Optional parameter: Example: 
    # @param [Boolean] deaf Optional parameter: Example: 
    # @return String response from the API call
    def create_list_participant(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'conference_sid' => options['conference_sid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/conferences/listparticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'ConferenceSid' => options['conference_sid'],
        'Page' => options['page'],
        'Pagesize' => options['pagesize'],
        'Muted' => options['muted'],
        'Deaf' => options['deaf']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View Participant
    # @param [String] conference_sid Required parameter: unique conference sid
    # @param [String] participant_sid Required parameter: Example: 
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_participant(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'conference_sid' => options['conference_sid'],
        'participant_sid' => options['participant_sid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/conferences/viewparticipant.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'ConferenceSid' => options['conference_sid'],
        'ParticipantSid' => options['participant_sid']
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
