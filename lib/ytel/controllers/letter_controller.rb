# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # LetterController
  class LetterController < BaseController
    @instance = LetterController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieve a letter object by its LetterSid.
    # @param [String] lettersid Required parameter: The unique identifier for a
    # letter object.
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @return String response from the API call
    def view_letter(options = {})
      # Validate required parameters.
      validate_parameters(
        'lettersid' => options['lettersid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/letter/viewletter.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'lettersid' => options['lettersid']
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

    # Create, print, and mail a letter to an address. The letter file must be
    # supplied as a PDF or an HTML string.
    # @param [String] to Required parameter: The AddressId or an object
    # structured when creating an address by addresses/Create.
    # @param [String] from Required parameter: The AddressId or an object
    # structured when creating an address by addresses/Create.
    # @param [String] attachbyid Required parameter: Set an existing letter by
    # attaching its LetterId.
    # @param [String] file Required parameter: File can be a 8.5"x11" PDF
    # uploaded file or URL that links to a file.
    # @param [String] color Required parameter: Specify if letter should be
    # printed in color.
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @param [String] description Optional parameter: A description for the
    # letter.
    # @param [String] extraservice Optional parameter: Add an extra service to
    # your letter. Options are "certified" or "registered". Certified provides
    # tracking and delivery confirmation for domestic destinations and is an
    # additional $5.00. Registered provides tracking and confirmation for
    # international addresses and is an additional $16.50.
    # @param [String] doublesided Optional parameter: Specify if letter should
    # be printed on both sides.
    # @param [String] template Optional parameter: Boolean that defaults to
    # true. When set to false, this specifies that your letter does not follow
    # the m360 address template. In this case, a blank address page will be
    # inserted at the beginning of your file and you will be charged for the
    # extra page.
    # @param [String] htmldata Optional parameter: A string value that contains
    # HTML markup.
    # @return String response from the API call
    def create_letter(options = {})
      # Validate required parameters.
      validate_parameters(
        'to' => options['to'],
        'from' => options['from'],
        'attachbyid' => options['attachbyid'],
        'file' => options['file'],
        'color' => options['color'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/letter/create.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'to' => options['to'],
        'from' => options['from'],
        'attachbyid' => options['attachbyid'],
        'file' => options['file'],
        'color' => options['color'],
        'description' => options['description'],
        'extraservice' => options['extraservice'],
        'doublesided' => options['doublesided'],
        'template' => options['template'],
        'htmldata' => options['htmldata']
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

    # Retrieve a list of letter objects. The letter objects are sorted by
    # creation date, with the most recently created letters appearing first.
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: The count of objects to
    # return per page.
    # @param [String] lettersid Optional parameter: The unique identifier for a
    # letter object.
    # @param [String] date_created Optional parameter: The date the letter was
    # created.
    # @return String response from the API call
    def list_letters(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/letter/listsletter.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'lettersid' => options['lettersid'],
        'dateCreated' => options['date_created']
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

    # Remove a letter object by its LetterId.
    # @param [String] lettersid Required parameter: The unique identifier for a
    # letter object.
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @return String response from the API call
    def delete_letter(options = {})
      # Validate required parameters.
      validate_parameters(
        'lettersid' => options['lettersid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/letter/delete.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'lettersid' => options['lettersid']
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
