require 'spec_helper'
require 'crafty_coordinates/events/coordinate_added'

RSpec.describe CraftyCoordinates::Events::CoordinateAdded do
  let(:default_attributes) do
    {
      id: 'coordinate-added-1',
      world_id: '1',
      coordinate_id: '1',
      coordinate_name: 'c',
      x: '90',
      y: '63',
      z: '~ -3000'
    }
  end

  let(:attributes) { default_attributes }

  subject { described_class.new(attributes) }

  it 'name is coordinate_added' do
    expect(subject.name).to eq('coordinate_added')
  end

  context 'given a different event name' do
    let(:attributes) do
      default_attributes.merge(name: 'other')
    end

    it 'raises Dry::Struct::Error' do
      expect { subject }.to raise_error(Dry::Struct::Error)
    end
  end
end
