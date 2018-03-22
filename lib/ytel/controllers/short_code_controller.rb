# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
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
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once the Short Code message is
    # sent.GET or POST
    # @param [String] messagestatuscallback Optional parameter: URL that can be
    # requested to receive notification when Short Code message was sent.
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
      _query_builder << '/dedicatedshortcode/sendsms.{ResponseType}'
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

    # Retrieve a list of Short Code message objects.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] shortcode Optional parameter: Only list messages sent from
    # this Short Code
    # @param [String] to Optional parameter: Only list messages sent to this
    # number
    # @param [String] date_sent Optional parameter: Only list messages sent with
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

    # Retrive a list of inbound Sms Short Code messages associated with your
    # Ytel account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] from Optional parameter: Only list SMS messages sent from
    # this number
    # @param [String] shortcode Optional parameter: Only list SMS messages sent
    # to Shortcode
    # @param [String] datecreated Optional parameter: Only list SMS messages
    # sent in the specified date MAKE REQUEST
    # @return String response from the API call
    def list_inbound_shortcode(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/dedicatedshortcode/getinboundsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'From' => options['from'],
        'Shortcode' => options['shortcode'],
        'Datecreated' => options['datecreated']
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

    # Retrieve a single Short Code object by its shortcode assignment.
    # @param [String] shortcode Required parameter: List of valid Dedicated
    # Short Code to your Ytel account
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_dedicated_shortcode_assignment(options = {})
      # Validate required parameters.
      validate_parameters(
        'shortcode' => options['shortcode'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/dedicatedshortcode/viewshortcode.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Shortcode' => options['shortcode']
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

    # Update a dedicated shortcode.
    # @param [String] shortcode Required parameter: List of valid dedicated
    # shortcode to your Ytel account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] friendly_name Optional parameter: User generated name of
    # the dedicated shortcode.
    # @param [String] callback_method Optional parameter: Specifies the HTTP
    # method used to request the required StatusCallBackUrl once call
    # connects.
    # @param [String] callback_url Optional parameter: URL that can be requested
    # to receive notification when call has ended. A set of default parameters
    # will be sent here once the call is finished.
    # @param [String] fallback_method Optional parameter: Specifies the HTTP
    # method used to request the required FallbackUrl once call connects.
    # @param [String] fallback_url Optional parameter: URL used if any errors
    # occur during execution of InboundXML or at initial request of the required
    # Url provided with the POST.
    # @return String response from the API call
    def update_dedicated_short_code_assignment(options = {})
      # Validate required parameters.
      validate_parameters(
        'shortcode' => options['shortcode'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/dedicatedshortcode/updateshortcode.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Shortcode' => options['shortcode'],
        'FriendlyName' => options['friendly_name'],
        'CallbackMethod' => options['callback_method'],
        'CallbackUrl' => options['callback_url'],
        'FallbackMethod' => options['fallback_method'],
        'FallbackUrl' => options['fallback_url']
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

    # Retrieve a list of Short Code assignment associated with your Ytel
    # account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] shortcode Optional parameter: Only list Short Code
    # Assignment sent from this Short Code
    # @param [String] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [String] pagesize Optional parameter: The count of objects to
    # return per page.
    # @return String response from the API call
    def list_short_code_assignment(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/dedicatedshortcode/listshortcode.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Shortcode' => options['shortcode'],
        'page' => options['page'],
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
  end
end
