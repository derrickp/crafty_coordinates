# frozen_string_literal: true

require 'crafty_coordinates/events/event'

module CraftyCoordinates
  module Events
    class CoordinateAdded < Event
      NAME = 'coordinate_added'

      attribute :name, Types::String.default(NAME).constrained(eql: NAME)
      attribute :world_id, Types::String
      attribute :coordinate_id, Types::String
      attribute :coordinate_name, Types::String
      attribute :x, Types::String
      attribute :y, Types::String
      attribute :z, Types::String
      attribute? :biome, CraftyCoordinates::Minecraft::BIOMES
    end
  end
end
