# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # ShortCodeController
  class ShortCodeController < BaseController
    @instance = ShortCodeController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @param [Integer] shortcode Required parameter: Your dedicated shortcode
    # @param [Float] to Required parameter: The number to send your SMS to
    # @param [String] body Required parameter: The body of your message
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [HttpActionEnum] method Optional parameter: Callback status method,
    # POST or GET
    # @param [String] messagestatuscallback Optional parameter: Callback url for
    # SMS status
    # @return String response from the API call
    def send_dedicated_shortcode(options = {})
      # Validate required parameters.
      validate_parameters(
        'shortcode' => options['shortcode'],
        'to' => options['to'],
        'body' => options['body'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/senddedicatedsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'shortcode' => options['shortcode'],
        'to' => options['to'],
        'body' => options['body'],
        'method' => options['method'],
        'messagestatuscallback' => options['messagestatuscallback']
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

    # View a single Sms Short Code message.
    # @param [String] message_sid Required parameter: The unique identifier for
    # the sms resource
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_shortcode(options = {})
      # Validate required parameters.
      validate_parameters(
        'message_sid' => options['message_sid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/viewsms..{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'MessageSid' => options['message_sid']
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

    # Retrieve a list of Short Code message objects.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] shortcode Optional parameter: Only list messages sent from
    # this Short Code
    # @param [String] to Optional parameter: Only list messages sent to this
    # number
    # @param [Date] date_sent Optional parameter: Only list messages sent with
    # the specified date
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] page_size Optional parameter: The count of objects to
    # return per page.
    # @return String response from the API call
    def list_shortcode(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/listsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Shortcode' => options['shortcode'],
        'To' => options['to'],
        'DateSent' => options['date_sent'],
        'Page' => options['page'],
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

    # Retrive a list of inbound Sms Short Code messages associated with your
    # message360 account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: Which page of the overall
    # response will be returned. Zero indexed
    # @param [Integer] page_size Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] from Optional parameter: Only list SMS messages sent from
    # this number
    # @param [String] shortcode Optional parameter: Only list SMS messages sent
    # to Shortcode
    # @param [String] date_received Optional parameter: Only list SMS messages
    # sent in the specified date MAKE REQUEST
    # @return String response from the API call
    def list_inbound_shortcode(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/getinboundsms.{ResponseType}'
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
        'Shortcode' => options['shortcode'],
        'DateReceived' => options['date_received']
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
