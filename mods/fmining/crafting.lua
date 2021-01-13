minetest.register_craft({
		output = "fmining:wood_pic",
		recipe = {
			{"group:wood", "group:wood", "group:wood"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})
	
minetest.register_craft({
		output = "fmining:stone_pic",
		recipe = {
			{"group:stone", "group:stone", "group:stone"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})
	
minetest.register_craft({
		output = "fmining:gold_pic",
		recipe = {
			{"fmining:gold_ingot", "fmining:gold_ingot", "fmining:gold_ingot"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})
	
minetest.register_craft({
		output = "fmining:bronze_pic",
		recipe = {
			{"fmining:bronze_ingot", "fmining:bronze_ingot", "fmining:bronze_ingot"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})
	
minetest.register_craft({
		output = "fmining:iron_pic",
		recipe = {
			{"fmining:iron_ingot", "fmining:iron_ingot", "fmining:iron_ingot"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})
	
minetest.register_craft({
		output = "fmining:emerald_pic",
		recipe = {
			{"fmining:emerald", "fmining:emerald", "fmining:emerald"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})
	
minetest.register_craft({
		output = "fmining:diamond_pic",
		recipe = {
			{"fmining:diamond", "fmining:diamond", "fmining:diamond"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})

minetest.register_craft({
		output = "fmining:ruby_pic",
		recipe = {
			{"fmining:ruby", "fmining:ruby", "fmining:ruby"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})

minetest.register_craft({
		output = "fmining:sapphire_pic",
		recipe = {
			{"fmining:sapphire", "fmining:sapphire", "fmining:sapphire"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})

minetest.register_craft({
		output = "fmining:tungsten_pic",
		recipe = {
			{"fmining:tungsten_carbide_ingot", "fmining:tungsten_carbide_ingot", "fmining:tungsten_carbide_ingot"},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"fmining:tin_ingot", "fmining:copper_ingot", "fmining:copper_ingot"},
	output = "fmining:bronze_ingot 3"
})
