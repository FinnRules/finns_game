-- fcarts/rails.lua

fcarts:register_rail("fcarts:rail", {
	description = "Rail",
	tiles = {
		"fcarts_rail_straight.png", "fcarts_rail_curved.png",
		"fcarts_rail_t_junction.png", "fcarts_rail_crossing.png"
	},
	inventory_image = "fcarts_rail_straight.png",
	wield_image = "fcarts_rail_straight.png",
	groups = fcarts:get_rail_groups(),
}, {})

minetest.register_craft({
	output = "fcarts:rail 18",
	recipe = {
		{"group:iron_ingot", "group:stick", "group:iron_ingot"},
		{"group:iron_ingot", "", "group:iron_ingot"},
		{"group:iron_ingot", "group:stick", "group:iron_ingot"},
	}
})

minetest.register_alias("default:rail", "fcarts:rail")


fcarts:register_rail("fcarts:powerrail", {
	description = "Powered Rail",
	tiles = {
		"fcarts_rail_straight_pwr.png", "fcarts_rail_curved_pwr.png",
		"fcarts_rail_t_junction_pwr.png", "fcarts_rail_crossing_pwr.png"
	},
	groups = fcarts:get_rail_groups(),
}, {acceleration = 5})

minetest.register_craft({
	output = "fcarts:powerrail 18",
	recipe = {
		{"group:iron_ingot", "group:stick", "group:iron_ingot"},
		{"group:iron_ingot", "fmining:gold_ingot", "group:iron_ingot"},
		{"group:iron_ingot", "group:stick", "group:iron_ingot"},
	}
})


fcarts:register_rail("fcarts:brakerail", {
	description = "Brake Rail",
	tiles = {
		"fcarts_rail_straight_brk.png", "fcarts_rail_curved_brk.png",
		"fcarts_rail_t_junction_brk.png", "fcarts_rail_crossing_brk.png"
	},
	groups = fcarts:get_rail_groups(),
}, {acceleration = -3})

minetest.register_craft({
	output = "fcarts:brakerail 18",
	recipe = {
		{"group:iron_ingot", "group:stick", "group:iron_ingot"},
		{"group:iron_ingot", "fmining:lead_ingot", "group:iron_ingot"},
		{"group:iron_ingot", "group:stick", "group:iron_ingot"},
	}
})
