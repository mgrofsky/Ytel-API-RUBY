# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class PhoneNumberController < BaseController
    @@instance = PhoneNumberController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Available Phone Number
    # @param [String] number_type Required parameter: Number type either SMS,Voice or all
    # @param [String] area_code Required parameter: Phone Number Area Code
    # @param [Integer] page_size Optional parameter: Page Size
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_available_phone_number(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'number_type' => options['number_type'],
        'area_code' => options['area_code']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/availablenumber.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'NumberType' => options['number_type'],
        'AreaCode' => options['area_code'],
        'PageSize' => options['page_size']
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

    # List Account's Phone number details
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual resources listed in the response per page
    # @param [String] number_type Optional parameter: Example: 
    # @param [String] friendly_name Optional parameter: Example: 
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_list_number(options = Hash.new)

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/listnumber.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'NumberType' => options['number_type'],
        'FriendlyName' => options['friendly_name']
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

    # Get Phone Number Details
    # @param [String] phone_number Required parameter: Get Phone number Detail
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_view_number_details(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'phone_number' => options['phone_number']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/viewnumber.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'PhoneNumber' => options['phone_number']
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

    # Release number from account
    # @param [String] phone_number Required parameter: Phone number to be relase
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_release_number(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'phone_number' => options['phone_number']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/releasenumber.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'PhoneNumber' => options['phone_number']
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

    # Buy Phone Number 
    # @param [String] phone_number Required parameter: Phone number to be purchase
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def create_buy_number(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'phone_number' => options['phone_number']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/buynumber.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'PhoneNumber' => options['phone_number']
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

    # Update Phone Number Details
    # @param [String] phone_number Required parameter: Example: 
    # @param [String] friendly_name Optional parameter: Example: 
    # @param [String] voice_url Optional parameter: URL requested once the call connects
    # @param [HttpAction] voice_method Optional parameter: Example: 
    # @param [String] voice_fallback_url Optional parameter: URL requested if the voice URL is not available
    # @param [HttpAction] voice_fallback_method Optional parameter: Example: 
    # @param [String] hangup_callback Optional parameter: Example: 
    # @param [HttpAction] hangup_callback_method Optional parameter: Example: 
    # @param [String] heartbeat_url Optional parameter: URL requested once the call connects
    # @param [HttpAction] heartbeat_method Optional parameter: URL that can be requested every 60 seconds during the call to notify of elapsed time
    # @param [String] sms_url Optional parameter: URL requested when an SMS is received
    # @param [HttpAction] sms_method Optional parameter: Example: 
    # @param [String] sms_fallback_url Optional parameter: URL requested once the call connects
    # @param [HttpAction] sms_fallback_method Optional parameter: URL requested if the sms URL is not available
    # @param [String] response_type Optional parameter: Response format, xml or json
    # @return String response from the API call
    def update_phone_number(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'phone_number' => options['phone_number']
      })

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/incomingphone/updatenumber.{ResponseType}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare parameters
      _parameters = {
        'PhoneNumber' => options['phone_number'],
        'FriendlyName' => options['friendly_name'],
        'VoiceUrl' => options['voice_url'],
        'VoiceMethod' => options['voice_method'],
        'VoiceFallbackUrl' => options['voice_fallback_url'],
        'VoiceFallbackMethod' => options['voice_fallback_method'],
        'HangupCallback' => options['hangup_callback'],
        'HangupCallbackMethod' => options['hangup_callback_method'],
        'HeartbeatUrl' => options['heartbeat_url'],
        'HeartbeatMethod' => options['heartbeat_method'],
        'SmsUrl' => options['sms_url'],
        'SmsMethod' => options['sms_method'],
        'SmsFallbackUrl' => options['sms_fallback_url'],
        'SmsFallbackMethod' => options['sms_fallback_method']
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
