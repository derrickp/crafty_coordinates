# frozen_string_literal: true

require 'crafty_coordinates/events/event'
require 'crafty_coordinates/minecraft'

module CraftyCoordinates
  module Events
    class WorldCreated < Event
      NAME = 'world_created'

      attribute :name, Types::Strict::String.default(NAME).constrained(eql: NAME)
      attribute :world_name, Types::Strict::String
      attribute :created_at, Types::JSON::DateTime
      attribute? :platform, CraftyCoordinates::Minecraft::PLATFORMS
    end
  end
end
