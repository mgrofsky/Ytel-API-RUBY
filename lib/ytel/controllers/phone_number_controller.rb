# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # PhoneNumberController
  class PhoneNumberController < BaseController
    @instance = PhoneNumberController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieve a list of available phone numbers that can be purchased and used
    # for your Ytel account.
    # @param [NumberTypeEnum] numbertype Required parameter: Number type either
    # SMS,Voice or all
    # @param [String] areacode Required parameter: Specifies the area code for
    # the returned list of available numbers. Only available for North American
    # numbers.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] pagesize Optional parameter: The count of objects to
    # return.
    # @return String response from the API call
    def available_phone_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'numbertype' => options['numbertype'],
        'areacode' => options['areacode'],
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
        'numbertype' => options['numbertype'],
        'areacode' => options['areacode'],
        'pagesize' => options['pagesize']
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

    # Remove a purchased Ytel number from your account.
    # @param [String] phone_number Required parameter: A valid Ytel comma
    # separated numbers (E.164 format).
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def mass_release_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'phone_number' => options['phone_number'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/massreleasenumber.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'PhoneNumber' => options['phone_number']
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

    # Retrieve the details for a phone number by its number.
    # @param [String] phone_number Required parameter: A valid Ytel 10-digit
    # phone number (E.164 format).
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

    # Remove a purchased Ytel number from your account.
    # @param [String] phone_number Required parameter: A valid 10-digit Ytel
    # number (E.164 format).
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

    # Purchase a phone number to be used with your Ytel account
    # @param [String] phone_number Required parameter: A valid 10-digit Ytel
    # number (E.164 format).
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

    # Update properties for a Ytel number that has been purchased for your
    # account. Refer to the parameters list for the list of properties that can
    # be updated.
    # @param [String] phone_number Required parameter: A valid Ytel number
    # (E.164 format).
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
    # @param [String] sms_fallback_url Optional parameter: URL used if any
    # errors occur during execution of InboundXML from an SMS or at initial
    # request of the SmsUrl.
    # @param [HttpActionEnum] sms_fallback_method Optional parameter: The HTTP
    # method Ytel will use when URL requested if the SmsUrl is not available.
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

    # Transfer phone number that has been purchased for from one account to
    # another account.
    # @param [String] phonenumber Required parameter: A valid 10-digit Ytel
    # number (E.164 format).
    # @param [String] fromaccountsid Required parameter: A specific Accountsid
    # from where Number is getting transfer.
    # @param [String] toaccountsid Required parameter: A specific Accountsid to
    # which Number is getting transfer.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def transfer_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'phonenumber' => options['phonenumber'],
        'fromaccountsid' => options['fromaccountsid'],
        'toaccountsid' => options['toaccountsid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/transferphonenumbers.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'phonenumber' => options['phonenumber'],
        'fromaccountsid' => options['fromaccountsid'],
        'toaccountsid' => options['toaccountsid']
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

    # Retrieve a list of purchased phones numbers associated with your Ytel
    # account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: Which page of the overall
    # response will be returned. Page indexing starts at 1.
    # @param [Integer] page_size Optional parameter: The page count to retrieve
    # from the total results in the collection. Page indexing starts at 1.
    # @param [NumberTypeEnum] number_type Optional parameter: The capability
    # supported by the number.Number type either SMS,Voice or all
    # @param [String] friendly_name Optional parameter: A human-readable label
    # added to the number object.
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

    # Update properties for a Ytel numbers that has been purchased for your
    # account. Refer to the parameters list for the list of properties that can
    # be updated.
    # @param [String] phone_number Required parameter: A valid comma(,)
    # separated Ytel numbers. (E.164 format).
    # @param [String] voice_url Required parameter: The URL returning InboundXML
    # incoming calls should execute when connected.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] friendly_name Optional parameter: A human-readable value
    # for labeling the number.
    # @param [HttpActionEnum] voice_method Optional parameter: Specifies the
    # HTTP method used to request the VoiceUrl once incoming call connects.
    # @param [String] voice_fallback_url Optional parameter: URL used if any
    # errors occur during execution of InboundXML on a call or at initial
    # request of the voice url
    # @param [HttpActionEnum] voice_fallback_method Optional parameter:
    # Specifies the HTTP method used to request the VoiceFallbackUrl once
    # incoming call connects.
    # @param [String] hangup_callback Optional parameter: URL that can be
    # requested to receive notification when and how incoming call has ended.
    # @param [HttpActionEnum] hangup_callback_method Optional parameter: The
    # HTTP method Ytel will use when requesting the HangupCallback URL.
    # @param [String] heartbeat_url Optional parameter: URL that can be used to
    # monitor the phone number.
    # @param [HttpActionEnum] heartbeat_method Optional parameter: The HTTP
    # method Ytel will use when requesting the HeartbeatUrl.
    # @param [String] sms_url Optional parameter: URL requested when an SMS is
    # received.
    # @param [HttpActionEnum] sms_method Optional parameter: The HTTP method
    # Ytel will use when requesting the SmsUrl.
    # @param [String] sms_fallback_url Optional parameter: URL used if any
    # errors occur during execution of InboundXML from an SMS or at initial
    # request of the SmsUrl.
    # @param [HttpActionEnum] sms_fallback_method Optional parameter: The HTTP
    # method Ytel will use when URL requested if the SmsUrl is not available.
    # @return String response from the API call
    def mass_update_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'phone_number' => options['phone_number'],
        'voice_url' => options['voice_url'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/massupdatenumber.{ResponseType}'
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

    # Get DID Score Number
    # @param [String] phonenumber Required parameter: Specifies the multiple
    # phone numbers for check updated spamscore .
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def get_did_score_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'phonenumber' => options['phonenumber'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/getdidscore.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Phonenumber' => options['phonenumber']
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

    # Purchase a selected number of DID's from specific area codes to be used
    # with your Ytel account.
    # @param [NumberTypeEnum] number_type Required parameter: The capability the
    # number supports.
    # @param [String] area_code Required parameter: Specifies the area code for
    # the returned list of available numbers. Only available for North American
    # numbers.
    # @param [String] quantity Required parameter: A positive integer that tells
    # how many number you want to buy at a time.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] leftover Optional parameter: If desired quantity is
    # unavailable purchase what is available .
    # @return String response from the API call
    def bulk_buy_number(options = {})
      # Validate required parameters.
      validate_parameters(
        'number_type' => options['number_type'],
        'area_code' => options['area_code'],
        'quantity' => options['quantity'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/incomingphone/bulkbuy.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'NumberType' => options['number_type'],
        'AreaCode' => options['area_code'],
        'Quantity' => options['quantity'],
        'Leftover' => options['leftover']
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
