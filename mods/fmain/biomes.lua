--Aliases

minetest.register_alias("mapgen_stone", "fmain:stone")
minetest.register_alias("mapgen_water_source", "fmain:water_source")
minetest.register_alias("mapgen_river_water_source", "fmain:water_source")
--minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_dirt", "fmain:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "fmain:dirt_with_grass")
minetest.register_alias("mapgen_sand", "fmain:sand")
minetest.register_alias("mapgen_gravel", "fmain:gravel")
--minetest.register_alias("mapgen_desert_stone", "default:desert_stone")
--minetest.register_alias("mapgen_desert_sand", "default:desert_sand")
--minetest.register_alias("mapgen_dirt_with_snow", "default:dirt_with_snow")
--minetest.register_alias("mapgen_snowblock", "default:snowblock")
--minetest.register_alias("mapgen_snow", "default:snow")
--minetest.register_alias("mapgen_ice", "default:ice")


--Biomes

minetest.register_biome({
	name = "bluestone_cave",
--	node_cave_liquid = {"fmain:water_source", "fmain:lava_source"},
	node_stone = "fmain:bluestone",
	y_max = -100,
	y_min = -300,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_biome({
	name = "cave_main",
	node_cave_liquid = {"fmain:water_source", "fmain:lava_source"},
	y_max = -300,
	y_min = -31000,
})

minetest.register_biome({
		name = "maple_forest",
		node_top = "fmain:dirt_with_litter",
		depth_top = 1,
		node_filler = "fmain:dirt",
		depth_filler = 1,
		node_riverbed = "fmain:gravel",
		depth_riverbed = 2,
		y_max = 100,
		y_min = 0,
		heat_point = 50,
		humidity_point = 35,
})

minetest.register_biome({
		name = "desert",
		node_top = "fmain:sand",
		depth_top = 1,
		node_filler = "fmain:sand",
		depth_filler = 1,
		node_stone = "fmain:sandstone",
		node_riverbed = "fmain:sand",
		depth_riverbed = 2,
		y_max = 20,
		y_min = 0,
		heat_point = 92,
		humidity_point = 16,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_litter"},
    sidelen = 16,
    fill_ratio = 0.03,
    biomes = {"maple_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/maple_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_biome({
		name = "black_sand_beach",
		node_top = "fmain:black_sand",
		depth_top = 5,
		node_filler = "fmain:black_sandstone",
		depth_filler = 5,
--		node_stone = "fmain:black_sandstone",
		node_riverbed = "fmain:black_sand",
		depth_riverbed = 2,
		y_max = 15,
		y_min = 0,
		heat_point = 80,
		humidity_point = 45,
})

minetest.register_biome({
		name = "moss_mountain",
		node_top = "fmain:mossy_stone",
		depth_top = 1,
		node_filler = "fmain:stone",
		depth_filler = 1,
		node_stone = "fmain:stone",
		node_riverbed = "fmain:dirt",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 100,
		heat_point = 60,
		humidity_point = 85,
})


minetest.register_biome({
		name = "grassland",
		node_top = "fmain:dirt_with_grass",
		depth_top = 1,
		node_filler = "fmain:dirt",
		depth_filler = 5,
		node_stone = "fmain:stone",
		node_riverbed = "fmain:dirt",
		depth_riverbed = 2,
		y_max = 15,
		y_min = 0,
		heat_point = 60,
		humidity_point = 45,
})

minetest.register_biome({
        name = "winter_forest",
        node_dust = "fmain:snow",
        node_top = "fmain:dirt_with_snow",
        depth_top = 1,
        node_filler = "fmain:dirt",
        depth_filler = 4,
        node_stone = "fmain:stone",
        node_riverbed = "fmain:dirt",
        depth_riverbed = 2,
        y_max = 100,
        y_min = 0,
        heat_point = 10,
        humidity_point = 26,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_snow"},
    sidelen = 4,
    fill_ratio = 0.004,
    biomes = {"winter_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/pine_snowy_narrow.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_snow"},
    sidelen = 4,
    fill_ratio = 0.003,
    biomes = {"winter_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/pine_snowy_wide.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_biome({
        name = "orange_grove",
        node_top = "fmain:dirt_with_grass",
        depth_top = 1,
        node_filler = "fmain:dirt",
        depth_filler = 4,
        node_stone = "fmain:stone",
        node_riverbed = "fmain:gravel",
        depth_riverbed = 2,
        y_max = 100,
        y_min = 0,
        heat_point = 80,
        humidity_point = 70,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 4,
    fill_ratio = 0.005,
    biomes = {"orange_grove"},
    y_max = 100,
    y_min = 0,
    schematic = fmain.path .. "/schematics/orange_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_biome({
        name = "redwood_forest",
        node_top = "fmain:redwood_litter",
        depth_top = 1,
        node_filler = "fmain:dirt",
        depth_filler = 1,
        node_riverbed = "fmain:gravel",
        depth_riverbed = 2,
        y_max = 100,
        y_min = 0,
        heat_point = 60,
        humidity_point = 55,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:redwood_litter"},
    sidelen = 16,
    fill_ratio = 0.02,
    biomes = {"redwood_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/redwood_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
    
})

--Cherry Blossom Forest
minetest.register_biome({
        name = "cherry_blossom_forest",
        node_top = "fmain:dirt_with_grass",
        depth_top = 1,
        node_filler = "fmain:dirt",
        depth_filler = 5,
        node_stone = "fmain:stone",
        node_riverbed = "fmain:dirt",
        depth_riverbed = 2,
        y_max = 40,
        y_min = 0,
        heat_point = 45,
        humidity_point = 27,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.0075,
    biomes = {"cherry_blossom_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/cherry_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.0075,
    biomes = {"cherry_blossom_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/cherry_tree_white.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})


--White Oak forest
minetest.register_biome({
        name = "white_forest",
        node_top = "fmain:dirt_with_grass",
        depth_top = 1,
        node_filler = "fmain:dirt",
        depth_filler = 5,
        node_stone = "fmain:stone",
        node_riverbed = "fmain:dirt",
        depth_riverbed = 2,
        y_max = 40,
        y_min = 0,
        heat_point = 27,
        humidity_point = 30,
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.0075,
    biomes = {"white_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/white_oak_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_biome({
        name = "mixed_forest",
        node_top = "fmain:dirt_with_grass",
        depth_top = 1,
        node_filler = "fmain:dirt",
        depth_filler = 5,
        node_stone = "fmain:stone",
        node_riverbed = "fmain:dirt",
        depth_riverbed = 2,
        y_max = 40,
        y_min = 0,
        heat_point = 50,
        humidity_point = 60,
})


minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 4,
    fill_ratio = 0.0025,
    biomes = {"mixed_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/weeping_willow_tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 4,
    fill_ratio = 0.0035,
    biomes = {"mixed_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/poplar_tree_tall.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 4,
    fill_ratio = 0.0015,
    biomes = {"mixed_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/poplar_tree_short.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 4,
    fill_ratio = 0.0035,
    biomes = {"mixed_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/maple_tree_green.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

minetest.register_biome({
        name = "riverbed",
        node_top = "fmain:sand",
        depth_top = 3,
        node_filler = "fmain:dirt",
        depth_filler = 3,
        node_stone = "fmain:stone",
        node_riverbed = "fmain:sand",
        depth_riverbed = 2,
        y_max = 0,
        y_min = -15,
--        heat_point = 50,
--        humidity_point = 60,
})


minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:clay",
		wherein         = {"fmain:sand"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 0,
		y_min           = -15,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:sand",
		wherein         = {"fmain:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 0,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:white_sand",
		wherein         = {"fmain:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 0,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:dirt",
		wherein         = {"fmain:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:gravel",
		wherein         = {"fmain:stone"},
		clust_scarcity  = 16 * 14 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:limestone",
		wherein         = {"fmain:sand"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 0,
		y_min           = -15,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:marble",
		wherein         = {"fmain:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "fmain:slate",
		wherein         = {"fmain:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})
