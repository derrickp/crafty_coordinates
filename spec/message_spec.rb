require 'spec_helper'
require 'crafty_coordinates/message'

RSpec.describe CraftyCoordinates::Message do
  subject { described_class.new(attributes) }

  let(:attributes) do
    {
      name: 'message-name'
    }
  end

  it 'returns the passed in name' do
    expect(subject.name).to eq(attributes[:name])
  end

  context 'given missing attributes' do
    let(:attributes) do
      {}
    end

    it 'explodes' do
      expect { subject }.to raise_error(Dry::Struct::Error)
    end
  end
end
