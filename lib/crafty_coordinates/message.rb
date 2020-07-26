require 'crafty_coordinates/entity'

module CraftyCoordinates
  class Message < Entity
    attribute :name, Types::Strict::String

    def type
      :message
    end
  end
end
