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

  describe 'CraftyCoordinates::Minecraft::BIOMES enum' do
    subject { CraftyCoordinates::Minecraft::BIOMES }

    it 'contains expected values' do
      expect(subject.values).to eq(
        [
          CraftyCoordinates::Minecraft::Biome::BADLANDS,
          CraftyCoordinates::Minecraft::Biome::BAMBOO_JUNGLE,
          CraftyCoordinates::Minecraft::Biome::BEACH,
          CraftyCoordinates::Minecraft::Biome::BIRCH_FOREST,
          CraftyCoordinates::Minecraft::Biome::COLD_OCEAN,
          CraftyCoordinates::Minecraft::Biome::DARK_FOREST,
          CraftyCoordinates::Minecraft::Biome::DARK_FOREST_HILLS,
          CraftyCoordinates::Minecraft::Biome::DEEP_COLD_OCEAN,
          CraftyCoordinates::Minecraft::Biome::DEEP_FROZEN_OCEAN,
          CraftyCoordinates::Minecraft::Biome::DEEP_LUKEWARM_OCEAN,
          CraftyCoordinates::Minecraft::Biome::DEEP_OCEAN,
          CraftyCoordinates::Minecraft::Biome::DESERT,
          CraftyCoordinates::Minecraft::Biome::DESERT_LAKES,
          CraftyCoordinates::Minecraft::Biome::ERODED_BADLANDS,
          CraftyCoordinates::Minecraft::Biome::FLOWER_FOREST,
          CraftyCoordinates::Minecraft::Biome::FOREST,
          CraftyCoordinates::Minecraft::Biome::FROZEN_OCEAN,
          CraftyCoordinates::Minecraft::Biome::FROZEN_RIVER,
          CraftyCoordinates::Minecraft::Biome::GIANT_SPRUCE_TAIGA,
          CraftyCoordinates::Minecraft::Biome::GIANT_TREE_TAIGA,
          CraftyCoordinates::Minecraft::Biome::GRAVELLY_MOUNTAINS,
          CraftyCoordinates::Minecraft::Biome::GRAVELLY_MOUNTAINS_PLUS,
          CraftyCoordinates::Minecraft::Biome::HILLS,
          CraftyCoordinates::Minecraft::Biome::ICE_SPIKES,
          CraftyCoordinates::Minecraft::Biome::JUNGLE,
          CraftyCoordinates::Minecraft::Biome::JUNGLE_EDGE,
          CraftyCoordinates::Minecraft::Biome::LUKEWARM_OCEAN,
          CraftyCoordinates::Minecraft::Biome::MODIFIED_JUNGLE,
          CraftyCoordinates::Minecraft::Biome::MODIFIED_JUNGLE_EDGE,
          CraftyCoordinates::Minecraft::Biome::MODIFIED_WOODED_BADLANDS_PLATEAU,
          CraftyCoordinates::Minecraft::Biome::MOUNTAIN,
          CraftyCoordinates::Minecraft::Biome::MUSHROOM_FIELDS,
          CraftyCoordinates::Minecraft::Biome::MUSHROOM_FIELDS_SHORE,
          CraftyCoordinates::Minecraft::Biome::OCEAN,
          CraftyCoordinates::Minecraft::Biome::PLAINS,
          CraftyCoordinates::Minecraft::Biome::RIVER,
          CraftyCoordinates::Minecraft::Biome::ROOFED_FOREST,
          CraftyCoordinates::Minecraft::Biome::SAVANNAH,
          CraftyCoordinates::Minecraft::Biome::SHATTERED_SAVANNAH,
          CraftyCoordinates::Minecraft::Biome::SNOWY_BEACH,
          CraftyCoordinates::Minecraft::Biome::SNOWY_TAIGA,
          CraftyCoordinates::Minecraft::Biome::SNOWY_TAIGA_MOUNTAINS,
          CraftyCoordinates::Minecraft::Biome::SNOWY_TUNRA,
          CraftyCoordinates::Minecraft::Biome::STONE_SHORE,
          CraftyCoordinates::Minecraft::Biome::SUNFLOWER_PLAINS,
          CraftyCoordinates::Minecraft::Biome::SWAMP,
          CraftyCoordinates::Minecraft::Biome::SWAMP_HILLS,
          CraftyCoordinates::Minecraft::Biome::TAIGA,
          CraftyCoordinates::Minecraft::Biome::TAIGA_MOUNTAINS,
          CraftyCoordinates::Minecraft::Biome::TALL_BIRCH_FOREST,
          CraftyCoordinates::Minecraft::Biome::WARM_OCEAN,
          CraftyCoordinates::Minecraft::Biome::WOODED_BADLANDS_PLATEAU,
          CraftyCoordinates::Minecraft::Biome::WOODED_MOUNTAINS,
          CraftyCoordinates::Minecraft::Biome::BASALT_DELTA,
          CraftyCoordinates::Minecraft::Biome::CRIMSON_FOREST,
          CraftyCoordinates::Minecraft::Biome::NETHER_WASTES,
          CraftyCoordinates::Minecraft::Biome::SOUL_SAND_VALLEY,
          CraftyCoordinates::Minecraft::Biome::WARPED_FOREST,
          CraftyCoordinates::Minecraft::Biome::END_BARRENS,
          CraftyCoordinates::Minecraft::Biome::END_HIGHLANDS,
          CraftyCoordinates::Minecraft::Biome::END_ISLANDS,
          CraftyCoordinates::Minecraft::Biome::END_MIDLANDS,
          CraftyCoordinates::Minecraft::Biome::THE_END,
        ]
      )
    end

    it 'does not have a default' do
      expect { subject[] }.to raise_error(Dry::Types::ConstraintError)
    end

    it 'raises ConstraintError on nil' do
      expect { subject[nil] }.to raise_error(Dry::Types::ConstraintError)
    end

    it 'raises ConstraintError on values not in enum' do
      expect { subject['other_value'] }.to raise_error(Dry::Types::ConstraintError)
    end
  end
end
