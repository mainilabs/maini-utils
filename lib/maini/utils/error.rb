require 'json'

module Maini
  class Error

    def initialize(type, message, custom_json = nil)
      @type     = type
      @message  = I18n.t("maini.errors.#{type}", :default => message)
      @custom_json = custom_json
    end

    def to_json(options={})
      @obj = {:errors => { @type => [@message] }}

      if @custom_json
        @obj[:errors][@type] = [@message,@custom_json]
      end

      @obj.to_json
    end

  end
end