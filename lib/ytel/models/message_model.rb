# This file was automatically generated for ytel by APIMATIC v2.0
# ( https://apimatic.io ).

module Ytel
  # MessageModel Model.
  class MessageModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :api_version

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message_sid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :to

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message_price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :body

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :date_sent

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :template_id

    # TODO: Write general description for this method
    # @return [TemplateDataModel]
    attr_accessor :template_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['api_version'] = 'ApiVersion'
      @_hash['message_sid'] = 'MessageSid'
      @_hash['from'] = 'From'
      @_hash['to'] = 'To'
      @_hash['message_price'] = 'MessagePrice'
      @_hash['body'] = 'Body'
      @_hash['date_sent'] = 'DateSent'
      @_hash['status'] = 'Status'
      @_hash['template_id'] = 'TemplateId'
      @_hash['template_data'] = 'TemplateData'
      @_hash
    end

    def initialize(api_version = nil,
                   message_sid = nil,
                   from = nil,
                   to = nil,
                   message_price = nil,
                   body = nil,
                   date_sent = nil,
                   status = nil,
                   template_id = nil,
                   template_data = nil)
      @api_version = api_version
      @message_sid = message_sid
      @from = from
      @to = to
      @message_price = message_price
      @body = body
      @date_sent = date_sent
      @status = status
      @template_id = template_id
      @template_data = template_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      api_version = hash['ApiVersion']
      message_sid = hash['MessageSid']
      from = hash['From']
      to = hash['To']
      message_price = hash['MessagePrice']
      body = hash['Body']
      date_sent = hash['DateSent']
      status = hash['Status']
      template_id = hash['TemplateId']
      template_data = TemplateDataModel.from_hash(hash['TemplateData']) if
        hash['TemplateData']

      # Create object from extracted values.
      MessageModel.new(api_version,
                       message_sid,
                       from,
                       to,
                       message_price,
                       body,
                       date_sent,
                       status,
                       template_id,
                       template_data)
    end
  end
end
