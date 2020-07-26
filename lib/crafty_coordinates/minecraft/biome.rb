# frozen_string_literal: true

module CraftyCoordinates
  module Minecraft
    class Biome
      # Overworld
      BADLANDS = 'badlands'
      BAMBOO_JUNGLE = 'bamboo_jungle'
      BEACH = 'beach'
      BIRCH_FOREST = 'birch_forest'
      COLD_OCEAN = 'cold_ocean'
      DARK_FOREST = 'dark_forest'
      DARK_FOREST_HILLS = 'dark_forest_hills'
      DEEP_COLD_OCEAN = 'deep_cold_ocean'
      DEEP_FROZEN_OCEAN = 'deep_frozen_ocean'
      DEEP_LUKEWARM_OCEAN = 'deep_lukewarm_ocean'
      DEEP_OCEAN = 'deep_ocean'
      DESERT = 'desert'
      DESERT_LAKES = 'desert_lakes'
      ERODED_BADLANDS = 'eroded_badlands'
      FLOWER_FOREST = 'flower_forest'
      FOREST = 'forest'
      FROZEN_OCEAN = 'frozen_ocean'
      FROZEN_RIVER = 'frozen_river'
      GIANT_SPRUCE_TAIGA = 'giant_spruce_taiga'
      GIANT_TREE_TAIGA = 'giant_tree_taiga'
      GRAVELLY_MOUNTAINS = 'gravelly_mountains'
      GRAVELLY_MOUNTAINS_PLUS = 'gravelly_mountains_plus'
      HILLS = 'hills'
      ICE_SPIKES = 'ice_spikes'
      JUNGLE = 'jungle'
      JUNGLE_EDGE = 'jungle_edge'
      LUKEWARM_OCEAN = 'lukewarm_ocean'
      MODIFIED_JUNGLE = 'modified_jungle'
      MODIFIED_JUNGLE_EDGE = 'modified_jungle_edge'
      MODIFIED_WOODED_BADLANDS_PLATEAU = 'modified_wooded_badlands_plateau'
      MOUNTAIN = 'mountain'
      MUSHROOM_FIELDS = 'mushroom_fields'
      MUSHROOM_FIELDS_SHORE = 'mushroom_fields_shore'
      OCEAN = 'ocean'
      PLAINS = 'plains'
      RIVER = 'river'
      ROOFED_FOREST = 'roofed_forest'
      SAVANNAH = 'savannah'
      SHATTERED_SAVANNAH = 'shattered_savannah'
      SNOWY_BEACH = 'snowy_beach'
      SNOWY_TAIGA = 'snowy_taiga'
      SNOWY_TAIGA_MOUNTAINS = 'snowy_taiga_mountains'
      SNOWY_TUNRA = 'snowy_tundra'
      STONE_SHORE = 'stone_shore'
      SUNFLOWER_PLAINS = 'sunflower_plains'
      SWAMP = 'swamp'
      SWAMP_HILLS = 'swamp_hills'
      TAIGA = 'taiga'
      TAIGA_MOUNTAINS = 'taiga_mountains'
      TALL_BIRCH_FOREST = 'tall_birch_forest'
      WARM_OCEAN = 'warm_ocean'
      WOODED_BADLANDS_PLATEAU = 'wooded_badlands_plateau'
      WOODED_MOUNTAINS = 'wooded_mountains'

      # Nether
      BASALT_DELTA = 'basalt_delta'
      CRIMSON_FOREST = 'crimson_forest'
      NETHER_WASTES = 'nether_wastes'
      SOUL_SAND_VALLEY = 'soul_sand_valley'
      WARPED_FOREST = 'warped_forest'

      # End Dimension
      END_BARRENS = 'end_barrens'
      END_HIGHLANDS = 'end_highlands'
      END_ISLANDS = 'end_islands'
      END_MIDLANDS = 'end_midlands'
      THE_END = 'the_end'

      def self.all_biomes
        [
          BADLANDS,
          BAMBOO_JUNGLE,
          BEACH,
          BIRCH_FOREST,
          COLD_OCEAN,
          DARK_FOREST,
          DARK_FOREST_HILLS,
          DEEP_COLD_OCEAN,
          DEEP_FROZEN_OCEAN,
          DEEP_LUKEWARM_OCEAN,
          DEEP_OCEAN,
          DESERT,
          DESERT_LAKES,
          ERODED_BADLANDS,
          FLOWER_FOREST,
          FOREST,
          FROZEN_OCEAN,
          FROZEN_RIVER,
          GIANT_SPRUCE_TAIGA,
          GIANT_TREE_TAIGA,
          GRAVELLY_MOUNTAINS,
          GRAVELLY_MOUNTAINS_PLUS,
          HILLS,
          ICE_SPIKES,
          JUNGLE,
          JUNGLE_EDGE,
          LUKEWARM_OCEAN,
          MODIFIED_JUNGLE,
          MODIFIED_JUNGLE_EDGE,
          MODIFIED_WOODED_BADLANDS_PLATEAU,
          MOUNTAIN,
          MUSHROOM_FIELDS,
          MUSHROOM_FIELDS_SHORE,
          OCEAN,
          PLAINS,
          RIVER,
          ROOFED_FOREST,
          SAVANNAH,
          SHATTERED_SAVANNAH,
          SNOWY_BEACH,
          SNOWY_TAIGA,
          SNOWY_TAIGA_MOUNTAINS,
          SNOWY_TUNRA,
          STONE_SHORE,
          SUNFLOWER_PLAINS,
          SWAMP,
          SWAMP_HILLS,
          TAIGA,
          TAIGA_MOUNTAINS,
          TALL_BIRCH_FOREST,
          WARM_OCEAN,
          WOODED_BADLANDS_PLATEAU,
          WOODED_MOUNTAINS,
          BASALT_DELTA,
          CRIMSON_FOREST,
          NETHER_WASTES,
          SOUL_SAND_VALLEY,
          WARPED_FOREST,
          END_BARRENS,
          END_HIGHLANDS,
          END_ISLANDS,
          END_MIDLANDS,
          THE_END
        ]
      end
    end
  end
end
