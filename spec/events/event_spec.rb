require 'spec_helper'
require 'crafty_coordinates/events/event'

RSpec.describe CraftyCoordinates::Events::Event do
  let(:attributes) do
    {
      name: 'event_name',
      id: 'some-id'
    }
  end

  describe '#type' do
    subject do
      described_class.new(attributes).type
    end

    it { is_expected.to eq(:event) }
  end
end
