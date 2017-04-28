# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class EmailController < BaseController
    @@instance = EmailController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Outputs email addresses on your blocklist
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] offset Optional parameter: Where to start in the output list
    # @param [String] limit Optional parameter: Maximum number of records to return
    # @return String response from the API call
    def create_list_blocks(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/listblockemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List out all email addresses marked as spam
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] offset Optional parameter: The record number to start the list at
    # @param [String] limit Optional parameter: Maximum number of records to return
    # @return String response from the API call
    def create_list_spam(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/listspamemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List out all email addresses that have bounced
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] offset Optional parameter: The record to start the list at
    # @param [String] limit Optional parameter: The maximum number of records to return
    # @return String response from the API call
    def create_list_bounces(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/listbounceemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Delete an email address from the bounced address list
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] email Required parameter: The email address to remove from the bounce list
    # @return String response from the API call
    def create_delete_bounces(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type'],
        'email' => options['email']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/deletebouncesemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'email' => options['email']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List out all invalid email addresses
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] offet Optional parameter: Starting record for listing out emails
    # @param [String] limit Optional parameter: Maximum number of records to return
    # @return String response from the API call
    def create_list_invalid(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/listinvalidemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'offet' => options['offet'],
        'limit' => options['limit']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List all unsubscribed email addresses
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] offset Optional parameter: Starting record of the list
    # @param [String] limit Optional parameter: Maximum number of records to be returned
    # @return String response from the API call
    def create_list_unsubscribes(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/listunsubscribedemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'offset' => options['offset'],
        'limit' => options['limit']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Delete emails from the unsubscribe list
    # @param [String] email Required parameter: The email to remove from the unsubscribe list
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_delete_unsubscribes(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/deleteunsubscribedemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'email' => options['email']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Add an email to the unsubscribe list
    # @param [String] email Required parameter: The email to add to the unsubscribe list
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def add_unsubscribes(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/addunsubscribesemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'email' => options['email']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Deletes a blocked email
    # @param [String] email Required parameter: Email address to remove from block list
    # @param [String] response_type Required parameter: Response type format xml or json
    # @return String response from the API call
    def create_delete_block(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/deleteblocksemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'email' => options['email']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Deletes a email address marked as spam from the spam list
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] email Required parameter: Email address
    # @return String response from the API call
    def create_delete_spam(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'response_type' => options['response_type'],
        'email' => options['email']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/deletespamemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'email' => options['email']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Send out an email
    # @param [String] to Required parameter: The to email address
    # @param [String] from Required parameter: The from email address
    # @param [SendEmailAsEnum] type Required parameter: email format type, html or text
    # @param [String] subject Required parameter: Email subject
    # @param [String] message Required parameter: The body of the email message
    # @param [String] response_type Required parameter: Response type format xml or json
    # @param [String] cc Optional parameter: CC Email address
    # @param [String] bcc Optional parameter: BCC Email address
    # @param [String] attachment Optional parameter: File to be attached.File must be less than 7MB.
    # @return String response from the API call
    def create_send_email(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'to' => options['to'],
        'from' => options['from'],
        'type' => options['type'],
        'subject' => options['subject'],
        'message' => options['message'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/sendemails.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'to' => options['to'],
        'from' => options['from'],
        'type' => options['type'],
        'subject' => options['subject'],
        'message' => options['message'],
        'cc' => options['cc'],
        'bcc' => options['bcc'],
        'attachment' => options['attachment']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # This endpoint allows you to delete entries in the Invalid Emails list.
    # @param [String] email Required parameter: Example: 
    # @param [String] response_type Required parameter: Example: json
    # @return String response from the API call
    def create_delete_invalid(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'email' => options['email'],
        'response_type' => options['response_type']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/email/deleteinvalidemail.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'email' => options['email']
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
