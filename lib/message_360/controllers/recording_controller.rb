# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # RecordingController
  class RecordingController < BaseController
    @instance = RecordingController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # View a specific Recording
    # @param [String] recording_sid Required parameter: Search Recording sid
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_recording(options = {})
      # Validate required parameters.
      validate_parameters(
        'recording_sid' => options['recording_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/recording/viewrecording.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'RecordingSid' => options['recording_sid']
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

    # Delete Recording Record
    # @param [String] recording_sid Required parameter: Unique Recording Sid to
    # be delete
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def delete_recording(options = {})
      # Validate required parameters.
      validate_parameters(
        'recording_sid' => options['recording_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/recording/deleterecording.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'RecordingSid' => options['recording_sid']
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

    # List out Recordings
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: Which page of the overall
    # response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] date_created Optional parameter: Recording date
    # @param [String] call_sid Optional parameter: Call ID
    # @return String response from the API call
    def list_recording(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/recording/listrecording.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'DateCreated' => options['date_created'],
        'CallSid' => options['call_sid']
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
