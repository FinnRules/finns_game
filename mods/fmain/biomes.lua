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
    schematic = fmain.path .. "/schematics/maple_tree_adj.mts",
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
		y_max = 300,
		y_min = 0,
		heat_point = 60,
		humidity_point = 85,
})


minetest.register_biome({
		name = "grassland",
		node_top = "fmain:dirth_with_grass",
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
--[[
minetest.register_biome({
		name = "rainforest",
		node_top = "fmain:black_sand",
		depth_top = 5,
		node_filler = "fmain:black_sand",
		depth_filler = 1,
		node_stone = "fmain:black_sandstone",
		node_riverbed = "fmain:black_sand",
		depth_riverbed = 2,
		y_max = 15,
		y_min = 0,
		heat_point = 80,
		humidity_point = 45,
})


minetest.register_biome({
		name = "tundra",
		node_top = "fmain:snow",
		depth_top = 5,
		node_stone = "fmain:stone",
		node_riverbed = "fmain:ice",
		depth_riverbed = 2,
		y_max = 30,
		y_min = 0,
		heat_point = 10,
		humidity_point = 5,
})
--[[
minetest.register_biome({
		name = "glacier",
		node_dust = "fmain:snow", --thin snow layer
		node_top = "fmain:black_sand",
		depth_top = 5,
		node_filler = "fmain:black_sand",
		depth_filler = 1,
		node_stone = "fmain:black_sandstone",
		node_riverbed = "fmain:black_sand",
		depth_riverbed = 2,
		y_max = 15,
		y_min = 0,
		heat_point = 80,
		humidity_point = 45,
})
]]


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
    schematic = fmain.path .. "/schematics/redwood_tree_adj.mts",
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
    schematic = fmain.path .. "/schematics/cherry_tree_adj.mts",
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
    schematic = fmain.path .. "/schematics/cherry_tree_white_adj.mts",
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
    biomes = {"white_oak_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/white_oak_tree_adj.mts",
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
    fill_ratio = 0.0035,
    biomes = {"mixed_forest"},
    y_max = 150,
    y_min = 1,
    schematic = fmain.path .. "/schematics/weeping_willow_tree_adj.mts",
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
    schematic = fmain.path .. "/schematics/poplar_tree_adj.mts",
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
    schematic = fmain.path .. "/schematics/poplar_tree_alt1_adj.mts",
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
    schematic = fmain.path .. "/schematics/maple_tree_green_adj.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})
