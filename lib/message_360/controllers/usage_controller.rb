# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class UsageController < BaseController
    @@instance = UsageController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get all usage 
    # @param [ProductCode] product_code Required parameter: Product Code
    # @param [String] start_date Required parameter: Start Usage Date
    # @param [String] end_date Required parameter: End Usage Date
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_list_usage(options = Hash.new)
      # validate required parameters
      validate_parameters({
        'product_code' => options['product_code'],
        'start_date' => options['start_date'],
        'end_date' => options['end_date']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/usage/listusage.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'ProductCode' => options['product_code'],
        'startDate' => options['start_date'],
        'endDate' => options['end_date']
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
