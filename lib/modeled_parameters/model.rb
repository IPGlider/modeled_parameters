require 'active_model'
require 'virtus'

module ModeledParameters
  class Model
    include ActiveModel::Model
    include Virtus.model

    def initialize(original_attributes = {})
      attributes = {}

      if original_attributes
        original_attributes.each do |key, value|
          if self.respond_to?("#{key}=")
            attributes[key] = value
          end
        end
      end

      super(attributes)
    end
  end
end
