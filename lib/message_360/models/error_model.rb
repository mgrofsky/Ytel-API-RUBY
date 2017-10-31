# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # ErrorModel Model.
  class ErrorModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :more_info

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['code'] = 'Code'
        @_hash['message'] = 'Message'
        @_hash['more_info'] = 'MoreInfo'
      end
      @_hash
    end

    def initialize(code = nil,
                   message = nil,
                   more_info = nil)
      @code = code
      @message = message
      @more_info = more_info
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash['Code']
      message = hash['Message']
      more_info = hash['MoreInfo']

      # Create object from extracted values.
      ErrorModel.new(code,
                     message,
                     more_info)
    end
  end
end
