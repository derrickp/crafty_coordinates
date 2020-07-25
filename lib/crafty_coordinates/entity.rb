require 'dry-struct'

module CraftyCoordinates
  module Types
    include Dry.Types()
  end

  class Entity < Dry::Struct
  end
end
