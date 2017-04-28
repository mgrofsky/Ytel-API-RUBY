# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
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

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["api_version"] = "ApiVersion"
        @hash["message_sid"] = "MessageSid"
        @hash["from"] = "From"
        @hash["to"] = "To"
        @hash["message_price"] = "MessagePrice"
        @hash["body"] = "Body"
        @hash["date_sent"] = "DateSent"
        @hash["status"] = "Status"
        @hash["template_id"] = "TemplateId"
        @hash["template_data"] = "TemplateData"
      end
      @hash
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

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        api_version = hash['ApiVersion']
        message_sid = hash['MessageSid']
        from = hash['From']
        to = hash['To']
        message_price = hash['MessagePrice']
        body = hash['Body']
        date_sent = hash['DateSent']
        status = hash['Status']
        template_id = hash['TemplateId']
        template_data = TemplateDataModel.from_hash(hash['TemplateData']) if hash['TemplateData']

        # Create object from extracted values
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
end
