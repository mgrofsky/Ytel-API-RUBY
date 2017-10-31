# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # AccountController
  class AccountController < BaseController
    @instance = AccountController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Display Account Description
    # @param [String] date Required parameter: Example:
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_account(options = {})
      # Validate required parameters.
      validate_parameters(
        'date' => options['date'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/accounts/viewaccount.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Date' => options['date']
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
