require 'crafty_coordinates/entity'

module CraftyCoordinates
  class Message < Entity
    attribute :name, Types::Strict::String
  end
end
