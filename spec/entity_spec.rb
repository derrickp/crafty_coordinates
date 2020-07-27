require 'spec_helper'
require 'crafty_coordinates/entity'

RSpec.describe CraftyCoordinates::Entity do
  class InnerEntity < described_class
    attribute :name, CraftyCoordinates::Types::Strict::String
  end


  class TestEntity < described_class
    attribute :name, CraftyCoordinates::Types::Strict::String
    attribute :other, CraftyCoordinates::Types::Strict::String

    attribute :inner, InnerEntity
  end

  let(:attributes) do
    {
      name: 'test',
      other: 'thing',
      inner: {
        name: 'craft'
      }
    }
  end

  context 'given string keys' do
    subject { TestEntity.new(attributes) }

    let(:attributes) do
      {
        'name' => 'test',
        'other' => 'thing',
        'inner' => {
          'name' => 'craft'
        }
      }
    end

    it 'still gets created' do
      expect(subject).to be_a(TestEntity)
    end
  end

  describe '#copy' do
    subject do
      TestEntity.new(attributes).copy(new_attributes)
    end

    let(:new_attributes) do
      {
        name: 'minecraft'
      }
    end

    it 'overwrites the new attributes' do
      expect(subject.name).to eq('minecraft')
    end

    it 'leaves other attributes the same' do
      expect(subject.other).to eq('thing')
      expect(subject.inner.name).to eq('craft')
    end

    context 'replacing fields of inner entities' do
      let(:new_attributes) do
        {
          inner: {
            name: 'crafty'
          }
        }
      end

      it 'copies complex inner fields too' do
        expect(subject.inner.name).to eq('crafty')
      end
    end
  end
end
