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
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_audio_url_transcription(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'audio_url' => options['audio_url']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/transcriptions/audiourltranscription.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'AudioUrl' => options['audio_url']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Recording Transcriptions
    # @param [String] recording_sid Required parameter: Unique Recording sid
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_recording_transcription(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'recording_sid' => options['recording_sid']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/transcriptions/recordingtranscription.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'RecordingSid' => options['recording_sid']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View Specific Transcriptions
    # @param [String] transcription_sid Required parameter: Unique Transcription ID
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_transcription(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'transcription_sid' => options['transcription_sid']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/transcriptions/viewtranscription.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'TranscriptionSid' => options['transcription_sid']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Get All transcriptions
    # @param [Integer] page Optional parameter: Example: 
    # @param [Integer] page_size Optional parameter: Example: 
    # @param [Status] status Optional parameter: Example: 
    # @param [String] date_transcribed Optional parameter: Example: 
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_list_transcription(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/transcriptions/listtranscription.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'Status' => options['status'],
        'DateTranscribed' => options['date_transcribed']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end
  end
end
