require 'crafty_coordinates/message'

module CraftyCoordinates
  module Events
    class Event < CraftyCoordinates::Message
      attribute :id, Types::Strict::String

      def type
        :event
      end
    end
  end
end
