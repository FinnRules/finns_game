--Stone (not including sandstone)

minetest.register_node("fmain:stone", {
	description = "Stone",
	tiles = {"fmain_stone2.png"},
	groups = {cracky = 3, stone = 1},
	drop = "fmain:cobble",
})

minetest.register_node("fmain:mossy_stone", {
	description = "Mossy Stone",
	tiles = {
		"fmain_stone.png^fmain_moss.png",
		"fmain_stone.png",
		"fmain_stone.png^fmain_moss_side.png",
		"fmain_stone.png^fmain_moss_side.png",
		"fmain_stone.png^fmain_moss_side.png",
		"fmain_stone.png^fmain_moss_side.png",
		},
	groups = {cracky = 3, stone = 1},
	drop = "fmain:cobble",
})

minetest.register_node("fmain:cobble", {
	description = "Cobblestone",
	tiles = {"fmain_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
})
--[[
minetest.register_node("fmain:bluestone_cobble", {
	description = "Bluestone Cobblestone",
	tiles = {"fmain_bluestone_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
})
]]
--Dirt (not including sand)
minetest.register_node("fmain:dirt", {
	description = "Dirt",
	tiles = {"fmain_dirt.png"},
	groups = {crumbly = 3, soil = 1},
})

minetest.register_node("fmain:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"fmain_grass.png", "fmain_dirt.png",
		{name = "fmain_dirt.png^fmain_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "fmain:dirt",
--	sounds = default.node_sound_dirt_defaults({
--		footstep = {name = "default_grass_footstep", gain = 0.25},
--	}),
	soil = {
			base = "fmain:dirt_with_grass",
			dry = "ffarming:soil",
			wet = "ffarming:soil_wet"
		}
})

--Liquids (oil will be found in fmining)
minetest.register_node("fmain:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "fmain_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "fmain_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 191,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "fmain:water_flowing",
	liquid_alternative_source = "fmain:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1, fall_damage_add_percent = -100},
--	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("fmain:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"fmain_water.png"},
	special_tiles = {
		{
			name = "fmain_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
		{
			name = "fmain_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.5,
			},
		},
	},
	alpha = 191,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "fmain:water_flowing",
	liquid_alternative_source = "fmain:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1, fall_damage_add_percent = -100},
--	sounds = default.node_sound_water_defaults(),
})

--Falling nodes (sands and gravels)
minetest.register_node("fmain:sand", {
	description = "Sand",
	tiles = {"fmain_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
--	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("fmain:white_sand", {
	description = "Sand",
	tiles = {"fmain_white_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
--	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("fmain:black_sand", {
	description = "Black Sand",
	tiles = {"fmain_black_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
--	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("fmain:gravel", {
	description = "Gravel",
	tiles = {"fmain_gravel.png"},
	groups = {crumbly = 2, falling_node = 1},
--	sounds = default.node_sound_gravel_defaults(),
	drop = {
		max_items = 1,
		items = {
--			{items = {"default:flint"}, rarity = 16}, fix me when flint is added
			{items = {"fmain:gravel"}}
		}
	}
})

--Sandstones
minetest.register_node("fmain:sandstone", {
	description = "Sandstone",
	tiles = {"fmain_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("fmain:white_sandstone", {
	description = "White Sandstone",
	tiles = {"fmain_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("fmain:black_sandstone", {
	description = "Black Sandstone",
	tiles = {"fmain_black_sandstone.png"},
	groups = {crumbly = 1, cracky = 3},
--	sounds = default.node_sound_stone_defaults(),
})

--Wood and tree items (incl leaves)

minetest.register_node("fmain:dirt_with_litter", {
	description = "Dirt with Leaf Litter",
	tiles = {"fmain_grass.png^fmain_leaf_litter.png", "fmain_dirt.png",
		{name = "fmain_dirt.png^fmain_leaf_litter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "fmain:dirt",
--	sounds = default.node_sound_dirt_defaults({
--		footstep = {name = "default_grass_footstep", gain = 0.25},
--	}),
})

--Ladder

minetest.register_node("fmain:ladder", {
	description = "Ladder",
	drawtype = "signlike",
	tiles = {"fmain_ladder.png"},
	inventory_image = "fmain_ladder.png",
	wield_image = "fmain_ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
--	sounds = default.node_sound_wood_defaults(),
})



minetest.register_node("fmain:dirt_with_blossoms", {
    description = "Dirt with Cherry Blossoms",
    tiles = {"fmain_grass.png^fmain_dirt_cherry.png", "fmain_dirt.png",
        {name = "fmain_dirt.png^fmain_grass_side.png",
            tileable_vertical = false}},
    groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
    drop = "fmain:dirt",
--    sounds = default.node_sound_dirt_defaults({
--        footstep = {name = "default_grass_footstep", gain = 0.25},
--    }),
})


minetest.register_node("fmain:dirt_with_white_blossoms", {
    description = "Dirt with White Cherry Blossoms",
    tiles = {"fmain_grass.png^fmain_dirt_cherry_white.png", "fmain_dirt.png",
        {name = "fmain_dirt.png^fmain_grass_side.png",
            tileable_vertical = false}},
    groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
    drop = "fmain:dirt",
--    sounds = default.node_sound_dirt_defaults({
--        footstep = {name = "default_grass_footstep", gain = 0.25},
--    }),
})


--Obsidian
minetest.register_node("fmain:obsidian", {
	description = "Obsidian",
	tiles = {"fmain_obsidian.png"},
--	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3, level = 2},
})
