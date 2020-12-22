--Stone (not including sandstone)

minetest.register_node("fmain:stone", {
	description = "Stone",
	tiles = {"fmain_stone.png"},
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
	description = "Sand",
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
minetest.register_node("fmain:maple_wood", {
	description = "Maple Wood",
	tiles = {
		"fmain_maple_core.png", 
		"fmain_maple_core.png", 
		"fmain_maple_bark.png",
		"fmain_maple_bark.png",
		"fmain_maple_bark.png",
		"fmain_maple_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("fmain:maple_leaves", {
	description = "Maple Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"fmain_maple_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {"fmain:maple_wood"}, --DO NOT FORGET TO FIX ME, I should be a sapling
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {"fmain:maple_leaves"},
			}
		}
	},
--	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

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

minetest.register_node("fmain:maple_planks", {
	description = "Maple Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"fmain_maple_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("fmain:redwood_wood", {
	description = "Redwood Wood",
	tiles = {
		"fmain_redwood_core.png", 
		"fmain_redwood_core.png", 
		"fmain_redwood_bark.png",
		"fmain_redwood_bark.png",
		"fmain_redwood_bark.png",
		"fmain_redwood_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("fmain:redwood_planks", {
	description = "Redwood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"fmain_redwood_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("fmain:redwood_leaves", {
    description = "Redwood Tree Leaves",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"fmain_redwood_leaves.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"fmain:redwood_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"fmain:redwood_leaves"},
            }
        }
    },
--    sounds = default.node_sound_leaves_defaults(),

    after_place_node = after_place_leaves,
})


--Poplar
minetest.register_node("fmain:poplar_wood", {
    description = "Poplar Wood",
    tiles = {
        "fmain_poplar_core.png", 
        "fmain_poplar_core.png", 
        "fmain_poplar_bark.png",
        "fmain_poplar_bark.png",
        "fmain_poplar_bark.png",
        "fmain_poplar_bark.png",
        
    },
    paramtype2 = "facedir",
    is_ground_content = false,
    groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--    sounds = default.node_sound_wood_defaults(),

    on_place = minetest.rotate_node
})

minetest.register_node("fmain:poplar_planks", {
    description = "Poplar Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"fmain_poplar_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--    sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("fmain:poplar_leaves", {
    description = "Poplar Tree Leaves",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"fmain_poplar_leaves.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"fmain:poplar_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"fmain:poplar_leaves"},
            }
        }
    },
--    sounds = default.node_sound_leaves_defaults(),

    after_place_node = after_place_leaves,
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


fmain.register_fence("fmain:redwood_fence", {
	description = "Redwood Planks Fence",
	texture = "fmain_redwood_fence.png",
	inventory_image = "fmain_fence_overlay.png^fmain_redwood_planks.png^" ..
				"fmain_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "fmain_fence_overlay.png^fmain_redwood_planks.png^" ..
				"fmain_fence_overlay.png^[makealpha:255,126,126",
	material = "fmain:redwood_planks",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
--	sounds = default.node_sound_wood_defaults()
})

--Cherry Wood and leaves
minetest.register_node("fmain:cherry_wood", {
    description = "Cherry Wood",
    tiles = {
        "fmain_cherry_core.png", 
        "fmain_cherry_core.png", 
        "fmain_cherry_bark.png",
        "fmain_cherry_bark.png",
        "fmain_cherry_bark.png",
        "fmain_cherry_bark.png",
        
    },
    paramtype2 = "facedir",
    is_ground_content = false,
    groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--    sounds = default.node_sound_wood_defaults(),

    on_place = minetest.rotate_node
})

minetest.register_node("fmain:cherry_blossoms", {
    description = "Cherry Blossoms",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"fmain_cherry_blossoms.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"fmain:cherry_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"fmain:cherry_blossoms"},
            }
        }
    },
--    sounds = default.node_sound_leaves_defaults(),

    after_place_node = after_place_leaves,
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

minetest.register_node("fmain:cherry_white_blossoms", {
    description = "White Cherry Blossoms",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"fmain_cherry_white_blossoms.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"fmain:cherry_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"fmain:cherry_white_blossoms"},
            }
        }
    },
--    sounds = default.node_sound_leaves_defaults(),

    after_place_node = after_place_leaves,
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

--Weeping Willow
minetest.register_node("fmain:weeping_willow_wood", {
	description = "Weeping Willow Wood",
	tiles = {
		"fmain_weepingwillow_core.png", 
		"fmain_weepingwillow_core.png", 
		"fmain_weepingwillow_bark.png",
		"fmain_weepingwillow_bark.png",
		"fmain_weepingwillow_bark.png",
		"fmain_weepingwillow_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("fmain:weeping_willow_leaves", {
    description = "Weeping Willow Leaves",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"fmain_weepingwillow_leaves.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"fmain:weeping_willow_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"fmain:weeping_willow_leaves"},
            }
        }
    },
--    sounds = default.node_sound_leaves_defaults(),

    after_place_node = after_place_leaves,
})


minetest.register_node("fmain:weeping_willow_planks", {
    description = "Weeping Willow Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"fmain_weeping_willow_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--    sounds = default.node_sound_wood_defaults(),
})

--White Oak
minetest.register_node("fmain:white_oak_wood", {
	description = "White Oak Wood",
	tiles = {
		"fmain_white_oak_core.png", 
		"fmain_white_oak_core.png", 
		"fmain_white_oak_bark.png",
		"fmain_white_oak_bark.png",
		"fmain_white_oak_bark.png",
		"fmain_white_oak_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
--	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("fmain:white_oak_leaves", {
    description = "White Oak Leaves",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"fmain_white_oak_leaves.png"},
    paramtype = "light",
    is_ground_content = false,
    groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    drop = {
        max_items = 1,
        items = {
            {
                -- player will get sapling with 1/20 chance
                items = {"fmain:white_oak_sapling"}, 
                rarity = 20,
            },
            {
                -- player will get leaves only if he get no saplings,
                -- this is because max_items is 1
                items = {"fmain:white_oak_leaves"},
            }
        }
    },
--    sounds = default.node_sound_leaves_defaults(),

    after_place_node = after_place_leaves,
})

--Obsidian
minetest.register_node("fmain:obsidian", {
	description = "Obsidian",
	tiles = {"fmain_obsidian.png"},
--	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3, level = 2},
})
