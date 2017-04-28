# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class TranscriptionController < BaseController
    @@instance = TranscriptionController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Audio URL Transcriptions
    # @param [String] audio_url Required parameter: Audio url
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_audio_url_transcription(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'audio_url' => options['audio_url'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/transcriptions/audiourltranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'AudioUrl' => options['audio_url']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Recording Transcriptions
    # @param [String] recording_sid Required parameter: Unique Recording sid
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_recording_transcription(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'recording_sid' => options['recording_sid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/transcriptions/recordingtranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'RecordingSid' => options['recording_sid']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View Specific Transcriptions
    # @param [String] transcription_sid Required parameter: Unique Transcription ID
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_transcription(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'transcription_sid' => options['transcription_sid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/transcriptions/viewtranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'TranscriptionSid' => options['transcription_sid']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Get All transcriptions
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [Integer] page Optional parameter: Example: 
    # @param [Integer] page_size Optional parameter: Example: 
    # @param [StatusEnum] status Optional parameter: Example: 
    # @param [String] date_transcribed Optional parameter: Example: 
    # @return String response from the API call
    def create_list_transcription(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/transcriptions/listtranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'Status' => options['status'],
        'DateTranscribed' => options['date_transcribed']
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
