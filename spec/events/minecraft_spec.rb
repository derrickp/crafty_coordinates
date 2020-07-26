require 'spec_helper'
require 'crafty_coordinates/minecraft'

RSpec.describe CraftyCoordinates::Minecraft do
  describe 'CraftyCoordinates::Minecraft::PLATFORMS enum' do
    subject { CraftyCoordinates::Minecraft::PLATFORMS }

    it 'contains expected values' do
      expect(subject.values).to eq(
        [
          CraftyCoordinates::Minecraft::Platform::UNKNOWN,
          CraftyCoordinates::Minecraft::Platform::BEDROCK,
          CraftyCoordinates::Minecraft::Platform::JAVA,
        ]
      )
    end

    it 'defaults to "unknwon"' do
      expect(subject[]).to eq(CraftyCoordinates::Minecraft::Platform::UNKNOWN)
    end

    it 'raises ConstraintError on nil' do
      expect { subject[nil] }.to raise_error(Dry::Types::ConstraintError)
    end

    it 'raises ConstraintError on values not in enum' do
      expect { subject['other_value'] }.to raise_error(Dry::Types::ConstraintError)
    end
  end
end
