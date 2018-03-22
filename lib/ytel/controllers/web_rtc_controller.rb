# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # WebRTCController
  class WebRTCController < BaseController
    @instance = WebRTCController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Ytel webrtc
    # @param [String] account_sid Required parameter: Your Ytel Account SID
    # @param [String] auth_token Required parameter: Your Ytel Token
    # @param [String] username Required parameter: WebRTC username
    # authentication
    # @param [String] password Required parameter: WebRTC password
    # authentication
    # @return String response from the API call
    def create_token(options = {})
      # Validate required parameters.
      validate_parameters(
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token'],
        'username' => options['username'],
        'password' => options['password']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/webrtc/agentLogin.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token'],
        'username' => options['username'],
        'password' => options['password']
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

    # TODO: type endpoint description here
    # @param [String] account_sid Required parameter: Your Ytel Account SID
    # @param [String] auth_token Required parameter: Your Ytel Token
    # @return String response from the API call
    def check_funds(options = {})
      # Validate required parameters.
      validate_parameters(
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/webrtc/checkFunds.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
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
