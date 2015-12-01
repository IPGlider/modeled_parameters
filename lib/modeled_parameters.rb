require "modeled_parameters/version"
require 'modeled_parameters/controller'
require 'modeled_parameters/model'

module ModeledParameters
  class NotDefinedError < StandardError; end
  class NotValidError < StandardError; end
end
