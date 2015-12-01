require 'active_support/inflector'

module ModeledParameters
  class Finder
    def initialize(klass)
      @klass = klass
    end

    def model
      object = @klass.safe_constantize

      if object.nil?
        raise NotDefinedError
      end

      object
    end
  end
end
