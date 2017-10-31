# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # PhoneNumberController
  class PhoneNumberController < BaseController
    @instance = PhoneNumberController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Available Phone Number
    # @param [NumberTypeEnum] number_type Required parameter: Number type either
    # SMS,Voice or all
    # @param [String] area_code Required parameter: Phone Number Area Code
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page_size Optional parameter: Page Size
    # @return String response from the API call
    def available_phone_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'number_type' => options['number_type'],
        'area_code' => options['area_code'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/availablenumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'NumberType' => options['number_type'],
        'AreaCode' => options['area_code'],
        'PageSize' => options['page_size']
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

    # List Account's Phone number details
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: Which page of the overall
    # response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [NumberTypeEnum] number_type Optional parameter: SMS or Voice
    # @param [String] friendly_name Optional parameter: Friendly name of the
    # number
    # @return String response from the API call
    def list_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/listnumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'NumberType' => options['number_type'],
        'FriendlyName' => options['friendly_name']
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

    # Get Phone Number Details
    # @param [String] phone_number Required parameter: Get Phone number Detail
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_number_details(options = {})
      # Validate required parameters.
      validate_parameters(
        'phone_number' => options['phone_number'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/viewnumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'PhoneNumber' => options['phone_number']
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

    # Release number from account
    # @param [String] phone_number Required parameter: Phone number to be
    # relase
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def release_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'phone_number' => options['phone_number'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/releasenumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'PhoneNumber' => options['phone_number']
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

    # Buy Phone Number
    # @param [String] phone_number Required parameter: Phone number to be
    # purchase
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def buy_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'phone_number' => options['phone_number'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/buynumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'PhoneNumber' => options['phone_number']
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

    # Update Phone Number Details
    # @param [String] phone_number Required parameter: The phone number to
    # update
    # @param [String] voice_url Required parameter: URL requested once the call
    # connects
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] friendly_name Optional parameter: Phone number friendly
    # name description
    # @param [HttpActionEnum] voice_method Optional parameter: Post or Get
    # @param [String] voice_fallback_url Optional parameter: URL requested if
    # the voice URL is not available
    # @param [HttpActionEnum] voice_fallback_method Optional parameter: Post or
    # Get
    # @param [String] hangup_callback Optional parameter: callback url after a
    # hangup occurs
    # @param [HttpActionEnum] hangup_callback_method Optional parameter: Post or
    # Get
    # @param [String] heartbeat_url Optional parameter: URL requested once the
    # call connects
    # @param [HttpActionEnum] heartbeat_method Optional parameter: URL that can
    # be requested every 60 seconds during the call to notify of elapsed time
    # @param [String] sms_url Optional parameter: URL requested when an SMS is
    # received
    # @param [HttpActionEnum] sms_method Optional parameter: Post or Get
    # @param [String] sms_fallback_url Optional parameter: URL requested once
    # the call connects
    # @param [HttpActionEnum] sms_fallback_method Optional parameter: URL
    # requested if the sms URL is not available
    # @return String response from the API call
    def update_phone_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'phone_number' => options['phone_number'],
        'voice_url' => options['voice_url'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/updatenumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'PhoneNumber' => options['phone_number'],
        'VoiceUrl' => options['voice_url'],
        'FriendlyName' => options['friendly_name'],
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
