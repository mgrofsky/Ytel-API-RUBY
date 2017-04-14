# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class ShortCodeController < BaseController
    @@instance = ShortCodeController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # View a Shared ShortCode Template
    # @param [UUID | String] templateid Required parameter: The unique identifier for a template object
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_template(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'templateid' => options['templateid'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/template/view.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'templateid' => options['templateid']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Send an SMS from a message360 ShortCode
    # @param [String] shortcode Required parameter: The Short Code number that is the sender of this message
    # @param [String] tocountrycode Required parameter: The country code for sending this message
    # @param [String] to Required parameter: A valid 10-digit number that should receive the message+
    # @param [UUID | String] templateid Required parameter: The unique identifier for the template used for the message
    # @param [String] method Optional parameter: Specifies the HTTP method used to request the required URL once the Short Code message is sent.
    # @param [String] message_status_callback Optional parameter: URL that can be requested to receive notification when Short Code message was sent.
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @param [Hash] _field_parameters Additional optional form parameters are supported by this endpoint
    # @return String response from the API call
    def create_send_short_code(options = Hash.new, 
                               _field_parameters = nil)

      # validate required parameters
      validate_parameters({
        'shortcode' => options['shortcode'],
        'tocountrycode' => options['tocountrycode'],
        'to' => options['to'],
        'templateid' => options['templateid']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/shortcode/sendsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'shortcode' => options['shortcode'],
        'tocountrycode' => options['tocountrycode'],
        'to' => options['to'],
        'templateid' => options['templateid'],
        'Method' => options['method'],
        'MessageStatusCallback' => options['message_status_callback']
      }
      if _parameters != nil && _field_parameters != nil
        _parameters.merge!(APIHelper.form_encode_parameters(_field_parameters))
      end


      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List All Inbound ShortCode
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] pagesize Optional parameter: Number of individual resources listed in the response per page
    # @param [String] from Optional parameter: From Number to Inbound ShortCode
    # @param [String] shortcode Optional parameter: Only list messages sent to this Short Code
    # @param [String] date_received Optional parameter: Only list messages sent with the specified date
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_list_inbound_short_code(options = Hash.new)

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/shortcode/getinboundsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'DateReceived' => options['date_received']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'from' => options['from'],
        'Shortcode' => options['shortcode']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List ShortCode Messages
    # @param [Integer] page Optional parameter: Which page of the overall response will be returned. Zero indexed
    # @param [Integer] pagesize Optional parameter: Number of individual resources listed in the response per page
    # @param [String] from Optional parameter: Messages sent from this number
    # @param [String] to Optional parameter: Messages sent to this number
    # @param [String] datesent Optional parameter: Only list SMS messages sent in the specified date range
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_list_short_code(options = Hash.new)

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/shortcode/listsms.{ResponseType}'
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

    # List Shortcode Templates by Type
    # @param [String] type Optional parameter: The type (category) of template Valid values: marketing, authorization
    # @param [Integer] page Optional parameter: The page count to retrieve from the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: The count of objects to return per page.
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_list_templates(options = Hash.new)

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/template/lists.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'type' => options['type'],
        'page' => options['page'],
        'pagesize' => options['pagesize']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View a ShortCode Message
    # @param [String] messagesid Required parameter: Message sid
    # @param [String] response_type Optional parameter: Response type format xml or json
    # @return String response from the API call
    def create_view_short_code(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'messagesid' => options['messagesid']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/shortcode/viewsms.{ResponseType}'
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
