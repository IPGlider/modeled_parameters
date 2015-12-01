require 'active_support/concern'
require 'active_support/inflector'
require_relative 'finder'

module ModeledParameters
  module Controller
    extend ActiveSupport::Concern

    included do
      self::PROTECTED_IVARS.add(:@_modeled_parameters)

      before_action :validate_modeled_parameters

      private

      def modeled_parameters
        @_modeled_parameters ||= Finder.new(self.class.parent.to_s + '::' + controller_name.camelize + '::' + action_name.camelize).model.new(params)
      end

      def validate_modeled_parameters
        if !modeled_parameters.valid?
          raise NotValidError
        end
      end
    end
  end
end
