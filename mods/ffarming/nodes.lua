minetest.register_node("ffarming:soil", {
	description = "Soil",
	tiles = {"fmain_dirt.png^ffarming_soil.png", "fmain_dirt.png"},
	drop = "fmain:dirt",
	groups = {crumbly=3, not_in_creative_inventory=1, soil=2, grassland = 1, field = 1},
--	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "fmain:dirt",
		dry = "ffarming:soil",
		wet = "ffarming:soil_wet"
	}
})

minetest.register_node("ffarming:soil_wet", {
	description = "Wet Soil",
	tiles = {"fmain_dirt.png^ffarming_soil_wet.png", "fmain_dirt.png^ffarming_soil_wet_side.png"},
	drop = "fmain:dirt",
	groups = {crumbly=3, not_in_creative_inventory=1, soil=3, wet = 1, grassland = 1, field = 1},
--	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "fmain:dirt",
		dry = "ffarming:soil",
		wet = "ffarming:soil_wet"
	}
})
