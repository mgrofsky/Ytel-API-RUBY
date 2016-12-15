# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class SubAccountController < BaseController
    @@instance = SubAccountController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create Sub account
    # @param [String] firstname Required parameter: Example: 
    # @param [String] lastname Required parameter: Example: 
    # @param [String] email Required parameter: Example: 
    # @param [String] response_type Optional parameter: ResponseType Format either json or xml
    # @return String response from the API call
    def create_sub_account(options = Hash.new)
      # validate required parameters
      validate_parameters({
        'firstname' => options['firstname'],
        'lastname' => options['lastname'],
        'email' => options['email']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/user/createsubaccount.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'firstname' => options['firstname'],
        'lastname' => options['lastname'],
        'email' => options['email']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Suspend or unsuspend
    # @param [String] subaccountsid Required parameter: Example: 
    # @param [ActivateStatus] activate Required parameter: Example: 
    # @param [String] response_type Optional parameter: Example: 
    # @return String response from the API call
    def create_suspend_sub_account(options = Hash.new)
      # validate required parameters
      validate_parameters({
        'subaccountsid' => options['subaccountsid'],
        'activate' => options['activate']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/user/subaccountactivation.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'subaccountsid' => options['subaccountsid'],
        'activate' => options['activate']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Delete or Merge Sub account
    # @param [String] subaccountsid Required parameter: Example: 
    # @param [MergeNumberStatus] mergenumber Required parameter: Example: 
    # @param [String] response_type Optional parameter: Response type format either json or xml
    # @return String response from the API call
    def create_delete_merge_sub_account(options = Hash.new)
      # validate required parameters
      validate_parameters({
        'subaccountsid' => options['subaccountsid'],
        'mergenumber' => options['mergenumber']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/user/deletesubaccount.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'subaccountsid' => options['subaccountsid'],
        'mergenumber' => options['mergenumber']
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
