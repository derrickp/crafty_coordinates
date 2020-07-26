# frozen_string_literal: true

require 'crafty_coordinates/events/event'

module CraftyCoordinates
  module Events
    class WorldCreated < Event
      EVENT_NAME = 'world_created'

      attribute :name, Types::Strict::String.default(EVENT_NAME).constrained(eql: EVENT_NAME)
      attribute :world_name, Types::Strict::String
      attribute :created_at, Types::JSON::DateTime
    end
  end
end
