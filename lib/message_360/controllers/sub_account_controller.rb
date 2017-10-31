# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # SubAccountController
  class SubAccountController < BaseController
    @instance = SubAccountController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Delete sub account or merge numbers into parent
    # @param [String] sub_account_sid Required parameter: The SubaccountSid to
    # be deleted
    # @param [MergeNumberStatusEnum] merge_number Required parameter: 0 to
    # delete or 1 to merge numbers to parent account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def delete_sub_account(options = {})
      # Validate required parameters.
      validate_parameters(
        'sub_account_sid' => options['sub_account_sid'],
        'merge_number' => options['merge_number'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/deletesubaccount.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'SubAccountSID' => options['sub_account_sid'],
        'MergeNumber' => options['merge_number']
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

    # Suspend or unsuspend
    # @param [String] sub_account_sid Required parameter: The SubaccountSid to
    # be activated or suspended
    # @param [ActivateStatusEnum] activate Required parameter: 0 to suspend or 1
    # to activate
    # @param [String] response_type Required parameter: Example:json
    # @return String response from the API call
    def suspend_sub_account(options = {})
      # Validate required parameters.
      validate_parameters(
        'sub_account_sid' => options['sub_account_sid'],
        'activate' => options['activate'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/subaccountactivation.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'SubAccountSID' => options['sub_account_sid'],
        'Activate' => options['activate']
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

    # Create a sub user account under the parent account
    # @param [String] first_name Required parameter: Sub account user first
    # name
    # @param [String] last_name Required parameter: sub account user last name
    # @param [String] email Required parameter: Sub account email address
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def create_sub_account(options = {})
      # Validate required parameters.
      validate_parameters(
        'first_name' => options['first_name'],
        'last_name' => options['last_name'],
        'email' => options['email'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/createsubaccount.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'FirstName' => options['first_name'],
        'LastName' => options['last_name'],
        'Email' => options['email']
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
