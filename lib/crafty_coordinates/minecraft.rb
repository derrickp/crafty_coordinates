require 'crafty_coordinates/entity'
require 'crafty_coordinates/minecraft/biome'
require 'crafty_coordinates/minecraft/platform'

module CraftyCoordinates
  module Minecraft
    PLATFORMS = Types::String.default(
      Platform::UNKNOWN
    ).enum(
      Platform::UNKNOWN,
      Platform::BEDROCK,
      Platform::JAVA
    )

    BIOMES = Types::String.enum(*Biome.all_biomes)
  end
end
