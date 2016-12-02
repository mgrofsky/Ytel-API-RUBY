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

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/user/createsubaccount.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'firstname' => options['firstname'],
        'lastname' => options['lastname'],
        'email' => options['email']
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

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/user/subaccountactivation.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'subaccountsid' => options['subaccountsid'],
        'activate' => options['activate']
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

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/user/deletesubaccount.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'subaccountsid' => options['subaccountsid'],
        'mergenumber' => options['mergenumber']
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
