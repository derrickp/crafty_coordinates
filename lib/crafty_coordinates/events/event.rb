# frozen_string_literal: true

require 'crafty_coordinates/message'

module CraftyCoordinates
  module Events
    class Event < CraftyCoordinates::Message
      TYPE_NAME = 'event'

      attribute :id, Types::Strict::String
      attribute :type_name, Types::Strict::String.default(TYPE_NAME).constrained(eql: TYPE_NAME)
    end
  end
end
