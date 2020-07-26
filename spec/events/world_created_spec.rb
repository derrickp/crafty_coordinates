require 'spec_helper'
require 'crafty_coordinates/events/world_created'

RSpec.describe CraftyCoordinates::Events::WorldCreated do
  let(:default_attributes) do
    {
      world_name: '1-1',
      created_at: '2020-07-25T15:54:14-07:00',
      id: 'world-created-1'
    }
  end
  let(:attributes) { default_attributes }

  subject do
    described_class.new(attributes)
  end

  it 'returns created_at as DateTime' do
    expect(subject.created_at).to be_a(DateTime)
  end

  context 'given a different from default event name' do
    let(:attributes) do
      default_attributes.merge(name: 'other')
    end

    it 'raises a Dry::Struct::Error' do
      expect { subject }.to raise_error(Dry::Struct::Error)
    end
  end
end
