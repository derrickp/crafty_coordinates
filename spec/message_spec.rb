require 'spec_helper'
require 'crafty_coordinates/message'

RSpec.describe CraftyCoordinates::Message do
  subject { described_class.new(attributes) }

  let(:default_attributes) do
    {
      name: 'message-name'
    }
  end

  let(:attributes) { default_attributes }

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

  describe '#type_name' do
    subject do
      described_class.new(attributes).type_name
    end

    it { is_expected.to eq('message') }

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
