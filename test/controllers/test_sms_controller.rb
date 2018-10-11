# ytel_apiv3
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class SMSControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.sms
  end

  # Retrieve a list of Outbound SMS message objects.
  def test_test_list_sms()
    # Parameters for the API call
    page = nil
    page_size = nil
    from = nil
    to = nil
    date_sent = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_sms(page, page_size, from, to, date_sent)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

  # Retrieve a list of Inbound SMS message objects.
  def test_test_list_inbound_sms()
    # Parameters for the API call
    page = nil
    page_size = nil
    from = nil
    to = nil
    date_sent = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_inbound_sms(page, page_size, from, to, date_sent)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

end
