# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # AddressController
  class AddressController < BaseController
    @instance = AddressController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # To add an address to your address book, you create a new address object.
    # You can retrieve and delete individual addresses as well as get a list of
    # addresses. Addresses are identified by a unique random ID.
    # @param [String] name Required parameter: Name of user
    # @param [String] address Required parameter: Address of user.
    # @param [String] country Required parameter: Must be a 2 letter country
    # short-name code (ISO 3166)
    # @param [String] state Required parameter: Must be a 2 letter State eg. CA
    # for US. For Some Countries it can be greater than 2 letters.
    # @param [String] city Required parameter: City Name.
    # @param [String] zip Required parameter: Zip code of city.
    # @param [String] response_type Required parameter: Response type either
    # json or xml
    # @param [String] description Optional parameter: Description of
    # addresses.
    # @param [String] email Optional parameter: Email Id of user.
    # @param [String] phone Optional parameter: Phone number of user.
    # @return String response from the API call
    def create_address(options = {})
      # Validate required parameters.
      validate_parameters(
        'name' => options['name'],
        'address' => options['address'],
        'country' => options['country'],
        'state' => options['state'],
        'city' => options['city'],
        'zip' => options['zip'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/address/createaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'Name' => options['name'],
        'Address' => options['address'],
        'Country' => options['country'],
        'State' => options['state'],
        'City' => options['city'],
        'Zip' => options['zip'],
        'Description' => options['description'],
        'email' => options['email'],
        'Phone' => options['phone']
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

    # View Address Specific address Book by providing the address id
    # @param [String] addressid Required parameter: The identifier of the
    # address to be retrieved.
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @return String response from the API call
    def view_address(options = {})
      # Validate required parameters.
      validate_parameters(
        'addressid' => options['addressid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/address/viewaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'addressid' => options['addressid']
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

    # List All Address
    # @param [String] response_type Required parameter: Response Type either
    # json or xml
    # @param [Integer] page Optional parameter: The page count to retrieve from
    # the total results in the collection. Page indexing starts at 1.
    # @param [Integer] pagesize Optional parameter: How many results to return,
    # default is 10, max is 100, must be an integer
    # @param [String] addressid Optional parameter: addresses Sid
    # @param [String] date_created Optional parameter: date created address.
    # @return String response from the API call
    def list_address(options = {})
      # Validate required parameters.
      validate_parameters(
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/address/listaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'page' => options['page'],
        'pagesize' => options['pagesize'],
        'addressid' => options['addressid'],
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

    # Validates an address given.
    # @param [String] addressid Required parameter: The identifier of the
    # address to be verified.
    # @param [String] response_type Required parameter: Response type either
    # json or xml
    # @return String response from the API call
    def verify_address(options = {})
      # Validate required parameters.
      validate_parameters(
        'addressid' => options['addressid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/address/verifyaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'addressid' => options['addressid']
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

    # To delete Address to your address book
    # @param [String] addressid Required parameter: The identifier of the
    # address to be deleted.
    # @param [String] response_type Required parameter: Response type either
    # json or xml
    # @return String response from the API call
    def delete_address(options = {})
      # Validate required parameters.
      validate_parameters(
        'addressid' => options['addressid'],
        'response_type' => options['response_type']
      )
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/address/deleteaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'ResponseType' => options['response_type']
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'addressid' => options['addressid']
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
