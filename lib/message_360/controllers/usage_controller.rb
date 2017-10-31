# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # UsageController
  class UsageController < BaseController
    @instance = UsageController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get all usage
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [ProductCodeEnum] product_code Optional parameter: Product Code
    # @param [String] start_date Optional parameter: Start Usage Date
    # @param [String] end_date Optional parameter: End Usage Date
    # @return String response from the API call
    def list_usage(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/usage/listusage.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'ProductCode' => options['product_code'],
        'startDate' => options['start_date'],
        'endDate' => options['end_date']
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
