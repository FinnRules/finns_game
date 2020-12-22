--[[

Wood.lua

Containing:
- Wood
- Planks
- Leaves
- Fence

Sorted by wood type
	
]]


--Maple

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

minetest.register_node("fmain:maple_planks", {
	description = "Maple Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"fmain_maple_planks.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--	sounds = default.node_sound_wood_defaults(),
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



--Redwood

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



--Cherry

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

minetest.register_node("fmain:cherry_planks", {
    description = "Cherry Wood Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"fmain_cherry_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--    sounds = default.node_sound_wood_defaults(),
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

minetest.register_node("fmain:weeping_willow_planks", {
    description = "Weeping Willow Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"fmain_weeping_willow_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--    sounds = default.node_sound_wood_defaults(),
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

minetest.register_node("fmain:white_oak_planks", {
    description = "White_Oak Planks",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"fmain_white_oak_planks.png"},
    is_ground_content = false,
    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
--    sounds = default.node_sound_wood_defaults(),
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
