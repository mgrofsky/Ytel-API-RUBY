# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # SMSController
  class SMSController < BaseController
    @instance = SMSController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Send an SMS from a Ytel number
    # @param [String] from Required parameter: The 10-digit SMS-enabled Ytel
    # number (E.164 format) in which the message is sent.
    # @param [String] to Required parameter: The 10-digit phone number (E.164
    # format) that will receive the message.
    # @param [String] body Required parameter: The body message that is to be
    # sent in the text.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once SMS sent.
    # @param [String] message_status_callback Optional parameter: URL that can
    # be requested to receive notification when SMS has Sent. A set of default
    # parameters will be sent here once the SMS is finished.
    # @param [Boolean] smartsms Optional parameter: Check's 'to' number can
    # receive sms or not using Carrier API, if wireless = true then text sms is
    # sent, else wireless = false then call is recieved to end user with audible
    # message.
    # @param [Boolean] delivery_status Optional parameter: Delivery reports are
    # a method to tell your system if the message has arrived on the destination
    # phone.
    # @return String response from the API call
    def send_sms(options = {})
      # Validate required parameters.
      validate_parameters(
        'from' => options['from'],
        'to' => options['to'],
        'body' => options['body'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/sms/sendsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'From' => options['from'],
        'To' => options['to'],
        'Body' => options['body'],
        'Method' => options['method'],
        'MessageStatusCallback' => options['message_status_callback'],
        'Smartsms' => options['smartsms'],
        'DeliveryStatus' => options['delivery_status']
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

    # Retrieve a single SMS message object by its SmsSid.
    # @param [String] message_sid Required parameter: The unique identifier for
    # a sms message.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_sms(options = {})
      # Validate required parameters.
      validate_parameters(
        'message_sid' => options['message_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/sms/viewsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'MessageSid' => options['message_sid']
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

    # Retrieve a list of Outbound SMS message objects.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] page_size Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] from Optional parameter: Filter SMS message objects from
    # this valid 10-digit phone number (E.164 format).
    # @param [String] to Optional parameter: Filter SMS message objects to this
    # valid 10-digit phone number (E.164 format).
    # @param [String] date_sent Optional parameter: Only list SMS messages sent
    # in the specified date range
    # @return String response from the API call
    def list_sms(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/sms/listsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'From' => options['from'],
        'To' => options['to'],
        'DateSent' => options['date_sent']
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

    # Retrieve a list of Inbound SMS message objects.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] page_size Optional parameter: The count of objects to
    # return per page.
    # @param [String] from Optional parameter: Filter SMS message objects from
    # this valid 10-digit phone number (E.164 format).
    # @param [String] to Optional parameter: Filter SMS message objects to this
    # valid 10-digit phone number (E.164 format).
    # @param [String] date_sent Optional parameter: Filter sms message objects
    # by this date.
    # @return String response from the API call
    def list_inbound_sms(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/sms/getinboundsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'From' => options['from'],
        'To' => options['to'],
        'DateSent' => options['date_sent']
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

    # Retrieve a single SMS message object with details by its SmsSid.
    # @param [String] message_sid Required parameter: The unique identifier for
    # a sms message.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_detail_sms(options = {})
      # Validate required parameters.
      validate_parameters(
        'message_sid' => options['message_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/sms/viewdetailsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'MessageSid' => options['message_sid']
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
