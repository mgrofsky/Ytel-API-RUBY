# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class Message360Client
    # Singleton access to conference controller
    # @return [ConferenceController] Returns the controller instance
    def conference
      ConferenceController.instance
    end

    # Singleton access to transcription controller
    # @return [TranscriptionController] Returns the controller instance
    def transcription
      TranscriptionController.instance
    end

    # Singleton access to phone_number controller
    # @return [PhoneNumberController] Returns the controller instance
    def phone_number
      PhoneNumberController.instance
    end

    # Singleton access to usage controller
    # @return [UsageController] Returns the controller instance
    def usage
      UsageController.instance
    end

    # Singleton access to web_rtc controller
    # @return [WebRTCController] Returns the controller instance
    def web_rtc
      WebRTCController.instance
    end

    # Singleton access to recording controller
    # @return [RecordingController] Returns the controller instance
    def recording
      RecordingController.instance
    end

    # Singleton access to email controller
    # @return [EmailController] Returns the controller instance
    def email
      EmailController.instance
    end

    # Singleton access to sms controller
    # @return [SMSController] Returns the controller instance
    def sms
      SMSController.instance
    end

    # Singleton access to account controller
    # @return [AccountController] Returns the controller instance
    def account
      AccountController.instance
    end

    # Singleton access to call controller
    # @return [CallController] Returns the controller instance
    def call
      CallController.instance
    end

    # Singleton access to carrier controller
    # @return [CarrierController] Returns the controller instance
    def carrier
      CarrierController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(basic_auth_user_name: nil, basic_auth_password: nil)
      Configuration.basic_auth_user_name = basic_auth_user_name if basic_auth_user_name
      Configuration.basic_auth_password = basic_auth_password if basic_auth_password
    end
  end
end
