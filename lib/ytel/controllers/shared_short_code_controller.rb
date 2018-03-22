# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # SharedShortCodeController
  class SharedShortCodeController < BaseController
    @instance = SharedShortCodeController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # View a Shared ShortCode Template
    # @param [UUID | String] template_id Required parameter: The unique
    # identifier for a template object
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_template(options = {})
      # Validate required parameters.
      validate_parameters(
        'template_id' => options['template_id'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/template/view.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'TemplateId' => options['template_id']
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

    # View a ShortCode Message
    # @param [String] messagesid Required parameter: Message sid
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_shared_shortcodes(options = {})
      # Validate required parameters.
      validate_parameters(
        'messagesid' => options['messagesid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/viewsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'messagesid' => options['messagesid']
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

    # List ShortCode Messages
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] shortcode Optional parameter: Only list messages sent from
    # this Short Code
    # @param [String] to Optional parameter: Only list messages sent to this
    # number
    # @param [String] datesent Optional parameter: Only list SMS messages sent
    # in the specified date range
    # @return String response from the API call
    def list_outbound_shared_shortcodes(options = {})
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
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'Shortcode' => options['shortcode'],
        'to' => options['to'],
        'datesent' => options['datesent']
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

    # List All Inbound ShortCode
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] from Optional parameter: From Number to Inbound
    # ShortCode
    # @param [String] shortcode Optional parameter: Only list messages sent to
    # this Short Code
    # @param [String] datecreated Optional parameter: Only list messages sent
    # with the specified date
    # @return String response from the API call
    def list_inbound_shared_shortcodes(options = {})
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
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'Datecreated' => options['datecreated']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'from' => options['from'],
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

    # Send an SMS from a Ytel ShortCode
    # @param [String] shortcode Required parameter: The Short Code number that
    # is the sender of this message
    # @param [String] to Required parameter: A valid 10-digit number that should
    # receive the message
    # @param [UUID | String] templateid Required parameter: The unique
    # identifier for the template used for the message
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] data Required parameter: format of your data, example:
    # {companyname}:test,{otpcode}:1234
    # @param [HttpActionEnum] method Optional parameter: Specifies the HTTP
    # method used to request the required URL once the Short Code message is
    # sent.
    # @param [String] message_status_callback Optional parameter: URL that can
    # be requested to receive notification when Short Code message was sent.
    # @return String response from the API call
    def send_shared_shortcode(options = {})
      # Validate required parameters.
      validate_parameters(
        'shortcode' => options['shortcode'],
        'to' => options['to'],
        'templateid' => options['templateid'],
        'response_type' => options['response_type'],
        'data' => options['data']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/sendsms.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'shortcode' => options['shortcode'],
        'to' => options['to'],
        'templateid' => options['templateid'],
        'data' => options['data'],
        'Method' => options['method'],
        'MessageStatusCallback' => options['message_status_callback']
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

    # List Shortcode Templates by Type
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] type Optional parameter: The type (category) of template
    # Valid values: marketing, authorization
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: The count of objects to
    # return per page.
    # @param [String] shortcode Optional parameter: Only list templates of
    # type
    # @return String response from the API call
    def list_templates(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/template/lists.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'type' => options['type'],
        'page' => options['page'],
        'pagesize' => options['pagesize'],
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

    # View a set of properties for a single keyword.
    # @param [String] keywordid Required parameter: The unique identifier of
    # each keyword
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_keyword(options = {})
      # Validate required parameters.
      validate_parameters(
        'keywordid' => options['keywordid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/keyword/view.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Keywordid' => options['keywordid']
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

    # Retrieve a list of keywords associated with your Ytel account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] keyword Optional parameter: Only list keywords of
    # keyword
    # @param [Integer] shortcode Optional parameter: Only list keywords of
    # shortcode
    # @return String response from the API call
    def list_keyword(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/keyword/lists.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'Keyword' => options['keyword'],
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

    # The response returned here contains all resource properties associated
    # with the given Shortcode.
    # @param [String] shortcode Required parameter: List of valid Shortcode to
    # your Ytel account
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def view_assignement(options = {})
      # Validate required parameters.
      validate_parameters(
        'shortcode' => options['shortcode'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/viewshortcode.{ResponseType}'
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

    # Retrieve a list of shortcode assignment associated with your Ytel account.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: Number of individual
    # resources listed in the response per page
    # @param [String] shortcode Optional parameter: Only list keywords of
    # shortcode
    # @return String response from the API call
    def list_assignment(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/listshortcode.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'Shortcode' => options['shortcode']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
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

    # TODO: type endpoint description here
    # @param [String] shortcode Required parameter: List of valid shortcode to
    # your Ytel account
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] friendly_name Optional parameter: User generated name of
    # the shortcode
    # @param [String] callback_url Optional parameter: URL that can be requested
    # to receive notification when call has ended. A set of default parameters
    # will be sent here once the call is finished.
    # @param [HttpActionEnum] callback_method Optional parameter: Specifies the
    # HTTP method used to request the required StatusCallBackUrl once call
    # connects.
    # @param [String] fallback_url Optional parameter: URL used if any errors
    # occur during execution of InboundXML or at initial request of the required
    # Url provided with the POST.
    # @param [HttpActionEnum] fallback_url_method Optional parameter: Specifies
    # the HTTP method used to request the required FallbackUrl once call
    # connects.
    # @return String response from the API call
    def update_assignment(options = {})
      # Validate required parameters.
      validate_parameters(
        'shortcode' => options['shortcode'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/shortcode/updateshortcode.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Shortcode' => options['shortcode'],
        'FriendlyName' => options['friendly_name'],
        'CallbackUrl' => options['callback_url'],
        'CallbackMethod' => options['callback_method'],
        'FallbackUrl' => options['fallback_url'],
        'FallbackUrlMethod' => options['fallback_url_method']
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
