# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class CarrierController < BaseController
    @@instance = CarrierController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get the Carrier Lookup
    # @param [String] phonenumber Required parameter: The number to lookup
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_carrier_lookup(options = Hash.new)
      # validate required parameters
      validate_parameters({
        'phonenumber' => options['phonenumber']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/carrier/lookup.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'phonenumber' => options['phonenumber']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Get the All Purchase Number's Carrier lookup
    # @param [Integer] page Optional parameter: Page Number
    # @param [Integer] pagesize Optional parameter: Page Size
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_carrier_lookup_list(options = Hash.new)

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/carrier/lookuplist.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize']
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
