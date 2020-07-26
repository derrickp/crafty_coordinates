require 'dry-struct'
require 'crafty_coordinates/minecraft/platform'

module CraftyCoordinates
  module Minecraft
    PLATFORMS = Types::String.default(
      CraftyCoordinates::Minecraft::Platform::UNKNOWN
    ).enum(
      Platform::UNKNOWN,
      Platform::BEDROCK,
      Platform::JAVA
    )
  end
end
