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
	
--[[	
minetest.register_craft({
	type = "cooking",
	output = "fmining:coal_ore",
	recipe = "fmining:coal",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:iron_ore",
	recipe = "fmining:iron_ingot",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:copper_ore",
	recipe = "fmining:copper_ingot",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:silver_ore",
	recipe = "fmining:silver_ingot",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:gold_ore",
	recipe = "fmining:gold_ingot",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:sapphire_ore",
	recipe = "fmining:sapphire",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:emerald_ore",
	recipe = "fmining:emerald",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:ruby_ore",
	recipe = "fmining:ruby",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:lapis_ore",
	recipe = "fmining:lapis",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:tungsten_ore",
	recipe = "fmining:tungsten_ingot",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:opal_ore",
	recipe = "fmining:opal",
})

minetest.register_craft({
	type = "cooking",
	output = "fmining:tin_ore",
	recipe = "fmining:tin_ingot",
})

minetest.register_craft({
	type = "fuel",
	recipe = "fmining:coal",
	burntime = 38,
})
]]

minetest.register_craft({
	type = "shapeless",
	recipe = {"fmining:tin_ingot", "fmining:copper_ingot"},
	output = "fmining:bronze_ingot 2"
})
