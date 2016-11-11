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
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_carrier_lookup(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'phonenumber' => options['phonenumber']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/carrier/lookup.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'phonenumber' => options['phonenumber']
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

    # Get the All Purchase Number's Carrier lookup
    # @param [String] page Optional parameter: Page Number
    # @param [String] pagesize Optional parameter: Page Size
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_carrier_lookup_list(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/carrier/lookuplist.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize']
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
