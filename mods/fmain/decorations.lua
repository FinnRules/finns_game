minetest.register_node("fmain:nemophila", {
	description = "Nemophila",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_nemophila.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_nemophila.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_node("fmain:bleeding_heart", {
	description = "Bleeding Heart",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_bleeding_heart.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_bleeding_heart.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_node("fmain:short_grass", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_short_grass.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_short_grass.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.1,
    biomes = {"cherry_blossom_forest", "mixed_forest", "white_forest"},
    y_max = 200,
    y_min = 1,
    decoration = "fmain:short_grass",
})


minetest.register_node("fmain:redwood_short_grass", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_redwood_short_grass.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_redwood_short_grass.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"fmain:redwood_litter"},
    sidelen = 16,
    fill_ratio = 0.3,
    biomes = {"redwood_forest"},
    y_max = 200,
    y_min = 1,
    decoration = "fmain:redwood_short_grass",
})


minetest.register_node("fmain:bells_of_ireland", {
	description = "Bells of Ireland",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_bells_of_ireland.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_bells_of_ireland.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_node("fmain:snowdrop", {
	description = "Snowdrop",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_snowdrop.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_snowdrop.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_node("fmain:dahlia", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_dahlia.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_dahlia.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_node("fmain:rose", {
	description = "Rose",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_rose.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_rose.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

minetest.register_node("fmain:hellebore", {
	description = "Hellebore",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_hellebore.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_hellebore.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
--[[
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("default:grass_" .. math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("default:grass_1 " ..
			itemstack:get_count() - (1 - ret:get_count()))
	end,]]
})

