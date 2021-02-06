--[[
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
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
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
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
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
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
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
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
})

minetest.register_node("fmain:dahlia", {
	description = "Dahlia",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_dahlia.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_dahlia.png",
--	wield_image = "fmain_flower_nemophila.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
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
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
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
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
})

minetest.register_node("fmain:purple_orchid", {
	description = "Purple Orchid",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_purple_orchid.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_purple_orchid.png",
--	wield_image = "fmain_flower_purple_orchid.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
})

minetest.register_node("fmain:red_hot_poker", {
	description = "Red Hot Poker",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"fmain_flower_red_hot_poker.png"},
	-- Use texture of a taller grass stage in inventory
	inventory_image = "fmain_flower_red_hot_poker.png",
--	wield_image = "fmain_flower_red_hot_poker.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
--	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
	},
})
]]
--Very dirty flower spawn code for test versions
local flowerList = {"nemophila", "bleeding_heart", "bells_of_ireland", "snowdrop", "dahlia", "rose", "hellebore", "purple_orchid", "red_hot_poker"}
for i in pairs(flowerList) do
	minetest.register_node("fmain:" .. flowerList[i], {
		description = string.gsub(" " .. flowerList[i]:gsub("_", " "):gsub("^%l", string.upper), "%W%l", string.upper):sub(2),
		drawtype = "plantlike",
		waving = 1,
		tiles = {"fmain_flower_" .. flowerList[i] .. ".png"},
		inventory_image = "fmain_flower_" .. flowerList[i] .. ".png",
	--	wield_image = "fmain_flower_nemophila.png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1, flammable = 1},
	--	sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -5 / 16, 6 / 16},
		},
	})
end

for i in pairs(flowerList) do
	minetest.register_decoration({
	    deco_type = "simple",
	    place_on = {"fmain:dirt_with_grass"},
	    sidelen = 16,
	    fill_ratio = 0.005,
	    biomes = {"cherry_blossom_forest", "mixed_forest", "white_forest", "grassland"},
	    y_max = 200,
	    y_min = 1,
	    decoration = "fmain:" .. flowerList[i],
	})
end
