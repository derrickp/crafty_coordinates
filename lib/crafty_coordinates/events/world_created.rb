# frozen_string_literal: true

require 'crafty_coordinates/events/event'
require 'crafty_coordinates/minecraft'

module CraftyCoordinates
  module Events
    class WorldCreated < Event
      EVENT_NAME = 'world_created'

      attribute :name, Types::Strict::String.default(EVENT_NAME).constrained(eql: EVENT_NAME)
      attribute :world_name, Types::Strict::String
      attribute :created_at, Types::JSON::DateTime
      attribute? :platform, CraftyCoordinates::Minecraft::PLATFORMS
    end
  end
end
