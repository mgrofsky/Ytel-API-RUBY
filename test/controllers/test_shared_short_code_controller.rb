# ytel_apiv3
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class SharedShortCodeControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.shared_short_code
  end

  # List All Inbound ShortCode
  def test_test_list_inbound_sms()
    # Parameters for the API call
    datecreated = nil
    page = nil
    pagesize = nil
    from = nil
    shortcode = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_inbound_sms(datecreated, page, pagesize, from, shortcode)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

  # List Shortcode Templates by Type
  def test_test_list_templates()
    # Parameters for the API call
    type = nil
    page = nil
    pagesize = nil
    shortcode = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_templates(type, page, pagesize, shortcode)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

  # Retrieve a list of keywords associated with your Ytel account.
  def test_test_list_keywords()
    # Parameters for the API call
    page = nil
    pagesize = nil
    keyword = nil
    shortcode = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_keywords(page, pagesize, keyword, shortcode)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

  # Retrieve a list of shortcode assignment associated with your Ytel account.
  def test_test_list_shortcodes()
    # Parameters for the API call
    shortcode = nil
    page = nil
    pagesize = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_shortcodes(shortcode, page, pagesize)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

end
