# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class SMSController < BaseController
    @@instance = SMSController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # List All Inbound SMS
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [String] pagesize Optional parameter: Number of individual resources listed in the response per page
    # @param [String] from Optional parameter: From Number to Inbound SMS
    # @param [String] to Optional parameter: To Number to get Inbound SMS
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_list_inbound_sms(options = Hash.new)

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/sms/getInboundsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'from' => options['from'],
        'to' => options['to']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List All SMS
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] pagesize Optional parameter: Number of individual resources listed in the response per page
    # @param [String] from Optional parameter: Messages sent from this number
    # @param [String] to Optional parameter: Messages sent to this number
    # @param [String] datesent Optional parameter: Only list SMS messages sent in the specified date range
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_list_sms(options = Hash.new)

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/sms/listsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'from' => options['from'],
        'to' => options['to'],
        'datesent' => options['datesent']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Send an SMS from a message360 number
    # @param [Integer] fromcountrycode Required parameter: From Country Code
    # @param [String] from Required parameter: SMS enabled Message360 number to send this message from
    # @param [Integer] tocountrycode Required parameter: To country code
    # @param [String] to Required parameter: Number to send the SMS to
    # @param [String] body Required parameter: Text Message To Send
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP method used to request the required URL once SMS sent.
    # @param [String] messagestatuscallback Optional parameter: URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished.
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_send_sms(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'fromcountrycode' => options['fromcountrycode'],
        'from' => options['from'],
        'tocountrycode' => options['tocountrycode'],
        'to' => options['to'],
        'body' => options['body']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/sms/sendsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'fromcountrycode' => options['fromcountrycode'],
        'from' => options['from'],
        'tocountrycode' => options['tocountrycode'],
        'to' => options['to'],
        'body' => options['body'],
        'method' => options['method'],
        'messagestatuscallback' => options['messagestatuscallback']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View a Particular SMS
    # @param [String] messagesid Required parameter: Message sid
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_sms(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'messagesid' => options['messagesid']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/sms/viewsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'messagesid' => options['messagesid']
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
