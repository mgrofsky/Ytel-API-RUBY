# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # SMSController
  class SMSController < BaseController
    @instance = SMSController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Send an SMS from a message360 number
    # @param [String] from Required parameter: SMS enabled Message360 number to
    # send this message from
    # @param [String] to Required parameter: Number to send the SMS to
    # @param [String] body Required parameter: Text Message To Send
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once SMS sent.
    # @param [String] messagestatuscallback Optional parameter: URL that can be
    # requested to receive notification when SMS has Sent. A set of default
    # parameters will be sent here once the SMS is finished.
    # @param [Boolean] smartsms Optional parameter: Check's 'to' number can
    # receive sms or not using Carrier API, if wireless = true then text sms is
    # sent, else wireless = false then call is recieved to end user with audible
    # message.
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
        'from' => options['from'],
        'to' => options['to'],
        'body' => options['body'],
        'method' => options['method'],
        'messagestatuscallback' => options['messagestatuscallback'],
        'smartsms' => options['smartsms']
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

    # View a Particular SMS
    # @param [String] messagesid Required parameter: Message sid
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_sms(options = {})
      # Validate required parameters.
      validate_parameters(
        'messagesid' => options['messagesid'],
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
        'messagesid' => options['messagesid']
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

    # List All SMS
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: Which page of the overall
    # response will be returned. Zero indexed
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] from Optional parameter: Messages sent from this number
    # @param [String] to Optional parameter: Messages sent to this number
    # @param [String] datesent Optional parameter: Only list SMS messages sent
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
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'from' => options['from'],
        'to' => options['to'],
        'datesent' => options['datesent']
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

    # List All Inbound SMS
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: Which page of the overall
    # response will be returned. Zero indexed
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] from Optional parameter: From Number to Inbound SMS
    # @param [String] to Optional parameter: To Number to get Inbound SMS
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
      _query_builder << '/sms/getInboundsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'from' => options['from'],
        'to' => options['to'],
        'DateSent' => options['date_sent']
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
