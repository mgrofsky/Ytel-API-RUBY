# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # EmailController
  class EmailController < BaseController
    @instance = EmailController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Remove an email from the spam email list.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] email Required parameter: A valid email address that is to
    # be remove from the spam list.
    # @return String response from the API call
    def delete_spam(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type'],
        'email' => options['email']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/deletespamemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Email' => options['email']
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

    # Remove an email from blocked emails list.
    # @param [String] email Required parameter: The email address to be remove
    # from the blocked list.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def delete_block(options = {})
      # Validate required parameters.
      validate_parameters(
        'email' => options['email'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/deleteblocksemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Email' => options['email']
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

    # Add an email to the unsubscribe list
    # @param [String] email Required parameter: A valid email address that is to
    # be added to the unsubscribe list
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def add_unsubscribes(options = {})
      # Validate required parameters.
      validate_parameters(
        'email' => options['email'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/addunsubscribesemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'email' => options['email']
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

    # Create and submit an email message to one or more email addresses.
    # @param [String] to Required parameter: A valid address that will receive
    # the email. Multiple addresses can be separated by using commas.
    # @param [SendEmailAsEnum] type Required parameter: Specifies the type of
    # email to be sent
    # @param [String] subject Required parameter: The subject of the mail. Must
    # be a valid string.
    # @param [String] message Required parameter: The email message that is to
    # be sent in the text.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] from Optional parameter: A valid address that will send
    # the email.
    # @param [String] cc Optional parameter: Carbon copy. A valid address that
    # will receive the email. Multiple addresses can be separated by using
    # commas.
    # @param [String] bcc Optional parameter: Blind carbon copy. A valid address
    # that will receive the email. Multiple addresses can be separated by using
    # commas.
    # @param [String] attachment Optional parameter: A file that is attached to
    # the email. Must be less than 7 MB in size.
    # @return String response from the API call
    def send_email(options = {})
      # Validate required parameters.
      validate_parameters(
        'to' => options['to'],
        'type' => options['type'],
        'subject' => options['subject'],
        'message' => options['message'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/sendemails.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'To' => options['to'],
        'Type' => options['type'],
        'Subject' => options['subject'],
        'Message' => options['message'],
        'From' => options['from'],
        'Cc' => options['cc'],
        'Bcc' => options['bcc'],
        'Attachment' => options['attachment']
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

    # Remove an email address from the list of unsubscribed emails.
    # @param [String] email Required parameter: A valid email address that is to
    # be remove from the unsubscribe list.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @return String response from the API call
    def delete_unsubscribes(options = {})
      # Validate required parameters.
      validate_parameters(
        'email' => options['email'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/deleteunsubscribedemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'email' => options['email']
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

    # Retrieve a list of email addresses from the unsubscribe list.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] offset Optional parameter: The starting point of the list
    # of unsubscribed emails that should be returned.
    # @param [String] limit Optional parameter: The count of results that should
    # be returned.
    # @return String response from the API call
    def list_unsubscribes(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/listunsubscribedemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Offset' => options['offset'],
        'Limit' => options['limit']
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

    # Retrieve a list of invalid email addresses.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] offset Optional parameter: The starting point of the list
    # of invalid emails that should be returned.
    # @param [String] limit Optional parameter: The count of results that should
    # be returned.
    # @return String response from the API call
    def list_invalid(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/listinvalidemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Offset' => options['offset'],
        'Limit' => options['limit']
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

    # Remove an email address from the bounced list.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] email Required parameter: The email address to be remove
    # from the bounced email list.
    # @return String response from the API call
    def delete_bounces(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type'],
        'email' => options['email']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/deletebouncesemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Email' => options['email']
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

    # Retrieve a list of emails that have bounced.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] offset Optional parameter: The starting point of the list
    # of bounced emails that should be returned.
    # @param [String] limit Optional parameter: The count of results that should
    # be returned.
    # @return String response from the API call
    def list_bounces(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/listbounceemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Offset' => options['offset'],
        'Limit' => options['limit']
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

    # Retrieve a list of emails that are on the spam list.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] offset Optional parameter: The starting point of the list
    # of spam emails that should be returned.
    # @param [String] limit Optional parameter: The count of results that should
    # be returned.
    # @return String response from the API call
    def list_spam(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/listspamemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Offset' => options['offset'],
        'Limit' => options['limit']
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

    # Retrieve a list of emails that have been blocked.
    # @param [String] response_type Required parameter: Response type format xml
    # or json
    # @param [String] offset Optional parameter: The starting point of the list
    # of blocked emails that should be returned.
    # @param [String] limit Optional parameter: The count of results that should
    # be returned.
    # @return String response from the API call
    def list_blocks(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/listblockemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Offset' => options['offset'],
        'Limit' => options['limit']
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

    # Remove an email from the invalid email list.
    # @param [String] email Required parameter: A valid email address that is to
    # be remove from the invalid email list.
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @return String response from the API call
    def delete_invalid(options = {})
      # Validate required parameters.
      validate_parameters(
        'email' => options['email'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/email/deleteinvalidemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Email' => options['email']
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
