# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class WebRTCController < BaseController
    @@instance = WebRTCController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # message360 webrtc
    # @param [String] account_sid Required parameter: Your message360 Account SID
    # @param [String] auth_token Required parameter: Your message360 Token
    # @return void response from the API call
    def create_token(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webrtc/createToken.json'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)
    end

    # TODO: type endpoint description here
    # @param [String] account_sid Required parameter: Your message360 Account SID
    # @param [String] auth_token Required parameter: Your message360 Token
    # @return void response from the API call
    def create_check_funds(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webrtc/checkFunds.json'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)
    end

    # Authenticate a message360 number for use
    # @param [String] phone_number Required parameter: Phone number to authenticate for use
    # @param [String] account_sid Required parameter: Your message360 Account SID
    # @param [String] auth_token Required parameter: Your message360 token
    # @return void response from the API call
    def create_authenticate_number(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'phone_number' => options['phone_number'],
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/webrtc/authenticateNumber.json'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'phone_number' => options['phone_number'],
        'account_sid' => options['account_sid'],
        'auth_token' => options['auth_token']
      }

      # create the HttpRequest object for the call
      _request = @http_client.post _query_url, parameters: _parameters

      # apply authentication
      BasicAuth.apply(_request)

      # execute the request
      _context = execute_request(_request)

      # global error handling using HTTP status codes.
      validate_response(_context)
    end
  end
end
