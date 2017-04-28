# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class Message360Model < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :response_status

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :message_count

    # TODO: Write general description for this method
    # @return [MessageModel]
    attr_accessor :message

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["response_status"] = "ResponseStatus"
        @hash["message_count"] = "MessageCount"
        @hash["message"] = "Message"
      end
      @hash
    end

    def initialize(response_status = nil,
                   message_count = nil,
                   message = nil)
      @response_status = response_status
      @message_count = message_count
      @message = message
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        response_status = hash['ResponseStatus']
        message_count = hash['MessageCount']
        message = MessageModel.from_hash(hash['Message']) if hash['Message']

        # Create object from extracted values
        Message360Model.new(response_status,
                            message_count,
                            message)
      end
    end
  end
end
