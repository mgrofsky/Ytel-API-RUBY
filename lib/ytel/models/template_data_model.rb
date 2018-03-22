# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # TemplateDataModel Model.
  class TemplateDataModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :companyname

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :otpcode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['companyname'] = 'companyname'
      @_hash['otpcode'] = 'otpcode'
      @_hash
    end

    def initialize(companyname = nil,
                   otpcode = nil)
      @companyname = companyname
      @otpcode = otpcode
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      companyname = hash['companyname']
      otpcode = hash['otpcode']

      # Create object from extracted values.
      TemplateDataModel.new(companyname,
                            otpcode)
    end
  end
end
