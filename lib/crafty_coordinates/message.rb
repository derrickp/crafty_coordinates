# frozen_string_literal: true

require 'crafty_coordinates/entity'

module CraftyCoordinates
  class Message < Entity
    TYPE_NAME = 'message'

    attribute :name, Types::Strict::String
    attribute :type_name, Types::Strict::String.default(TYPE_NAME).constrained(eql: TYPE_NAME)
  end
end
