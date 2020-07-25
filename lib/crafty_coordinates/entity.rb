require 'dry-struct'

module CraftyCoordinates
  module Types
    include Dry.Types()
  end

  class Entity < Dry::Struct
    def copy(new_attributes)
      # attributes defined by Dry::Struct to get current attributes
      combined = attributes.merge(new_attributes)
      new(combined)
    end
  end
end
