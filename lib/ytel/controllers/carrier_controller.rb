# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # CarrierController
  class CarrierController < BaseController
    @instance = CarrierController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieve a list of carrier lookup objects.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] page_size Optional parameter: The count of objects to
    # return per page.
    # @return String response from the API call
    def carrier_lookup_list(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/carrier/lookuplist.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size']
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

    # Get the Carrier Lookup
    # @param [String] phone_number Required parameter: A valid 10-digit number
    # (E.164 format).
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def carrier_lookup(options = {})
      # Validate required parameters.
      validate_parameters(
        'phone_number' => options['phone_number'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/carrier/lookup.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'PhoneNumber' => options['phone_number']
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
