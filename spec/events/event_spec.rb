require 'spec_helper'
require 'crafty_coordinates/events/event'

RSpec.describe CraftyCoordinates::Events::Event do
  let(:default_attributes) do
    {
      name: 'event_name',
      id: 'some-id'
    }
  end

  let(:attributes) { default_attributes }

  describe '#type_name' do
    subject do
      described_class.new(attributes).type_name
    end

    it { is_expected.to eq('event') }

    context 'given a different type_name' do
      let(:attributes) do
        default_attributes.merge(type_name: 'other')
      end

      it 'cannot be overridden' do
        expect { subject }.to raise_error(Dry::Struct::Error)
      end
    end
  end
end
