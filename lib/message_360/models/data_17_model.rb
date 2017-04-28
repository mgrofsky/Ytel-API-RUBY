# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class Data17Model < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :companyname

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :otpcode

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["companyname"] = "companyname"
        @hash["otpcode"] = "otpcode"
      end
      @hash
    end

    def initialize(companyname = nil,
                   otpcode = nil)
      @companyname = companyname
      @otpcode = otpcode
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        companyname = hash['companyname']
        otpcode = hash['otpcode']

        # Create object from extracted values
        Data17Model.new(companyname,
                        otpcode)
      end
    end
  end
end
