# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # TranscriptionController
  class TranscriptionController < BaseController
    @instance = TranscriptionController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieve information about a transaction by its TranscriptionSid.
    # @param [String] transcriptionsid Required parameter: The unique identifier
    # for a transcription object.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_transcription(options = {})
      # Validate required parameters.
      validate_parameters(
        'transcriptionsid' => options['transcriptionsid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/transcriptions/viewtranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'transcriptionsid' => options['transcriptionsid']
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

    # Transcribe a message360 recording by its RecordingSid.
    # @param [String] recording_sid Required parameter: The unique identifier
    # for a recording object.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def recording_transcription(options = {})
      # Validate required parameters.
      validate_parameters(
        'recording_sid' => options['recording_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/transcriptions/recordingtranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'recordingSid' => options['recording_sid']
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

    # Transcribe an audio recording from a file.
    # @param [String] audiourl Required parameter: URL pointing to the location
    # of the audio file that is to be transcribed.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def audio_url_transcription(options = {})
      # Validate required parameters.
      validate_parameters(
        'audiourl' => options['audiourl'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/transcriptions/audiourltranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'audiourl' => options['audiourl']
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

    # Retrieve a list of transcription objects for your Ytel account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: The count of objects to
    # return per page.
    # @param [StatusEnum] status Optional parameter: The state of the
    # transcription.
    # @param [String] date_transcribed Optional parameter: The date the
    # transcription took place.
    # @return String response from the API call
    def list_transcription(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/transcriptions/listtranscription.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'status' => options['status'],
        'dateTranscribed' => options['date_transcribed']
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
