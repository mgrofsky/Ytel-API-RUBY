# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class ShortCodeTestResponseModel < BaseModel
    # TODO: Write general description for this method
    # @return [Message360Model]
    attr_accessor :message_360

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["message_360"] = "Message360"
      end
      @hash
    end

    def initialize(message_360 = nil)
      @message_360 = message_360
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        message_360 = Message360Model.from_hash(hash['Message360']) if hash['Message360']

        # Create object from extracted values
        ShortCodeTestResponseModel.new(message_360)
      end
    end
  end
end
