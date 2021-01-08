minetest.register_craft({
	output = "fmain:maple_planks 4",
	recipe = {
		{"fmain:maple_wood"},
	}
})

minetest.register_craft({
	output = "fmain:redwood_planks 4",
	recipe = {
		{"fmain:redwood_wood"},
	}
})

minetest.register_craft({
	output = "fmain:poplar_planks 4",
	recipe = {
		{"fmain:poplar_wood"},
	}
})

minetest.register_craft({
	output = "fmain:white_oak_planks 4",
	recipe = {
		{"fmain:white_oak_wood"},
	}
})

minetest.register_craft({
	output = "fmain:weeping_willow_planks 4",
	recipe = {
		{"fmain:weeping_willow_wood"},
	}
})

minetest.register_craft({
	output = "fmain:cherry_planks 4",
	recipe = {
		{"fmain:cherry_wood"},
	}
})

minetest.register_craft({
	output = "fmain:stick 4",
	recipe = {
		{"group:wood"},
		{"group:wood"},
	}
})


--Axes

minetest.register_craft({
		output = "fmain:wood_axe",
		recipe = {
			{"group:wood", "group:wood"},
			{"group:wood", "group:stick"},
			{"", "group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:stone_axe",
		recipe = {
			{"group:stone", "group:stone"},
			{"group:stone", "group:stick"},
			{"", "group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:iron_axe",
		recipe = {
			{"fmining:iron_ingot", "fmining:iron_ingot"},
			{"fmining:iron_ingot", "group:stick"},
			{"", "group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:bronze_axe",
		recipe = {
			{"fmining:bronze_ingot", "fmining:bronze_ingot"},
			{"fmining:bronze_ingot", "group:stick"},
			{"", "group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:diamond_axe",
		recipe = {
			{"fmining:diamond", "fmining:diamond"},
			{"fmining:diamond", "group:stick"},
			{"", "group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:tungsten_axe",
		recipe = {
			{"fmining:tungsten_ingot", "fmining:tungsten_ingot"},
			{"fmining:tungsten_ingot", "group:stick"},
			{"", "group:stick"}
	}
})

--Other side Axes
minetest.register_craft({
		output = "fmain:wood_axe",
		recipe = {
			{"group:wood", "group:wood"},
			{"group:stick", "group:wood"},
			{"group:stick", ""}
	}
})

minetest.register_craft({ --might change this to group:cobble
		output = "fmain:stone_axe",
		recipe = {
			{"group:stone", "group:stone"},
			{"group:stick", "group:stone"},
			{"group:stick", ""}
	}
})

minetest.register_craft({
		output = "fmain:iron_axe",
		recipe = {
			{"fmining:iron_ingot", "fmining:iron_ingot"},
			{"group:stick", "fmining:iron_ingot"},
			{"group:stick", ""}
	}
})

minetest.register_craft({
		output = "fmain:bronze_axe",
		recipe = {
			{"fmining:bronze_ingot", "fmining:bronze_ingot"},
			{"group:stick", "fmining:bronze_ingot"},
			{"group:stick", ""}
	}
})

minetest.register_craft({
		output = "fmain:diamond_axe",
		recipe = {
			{"fmining:diamond", "fmining:diamond"},
			{"group:stick", "fmining:diamond"},
			{"group:stick", ""}
	}
})

minetest.register_craft({
		output = "fmain:tungsten_axe",
		recipe = {
			{"fmining:tungsten_ingot", "fmining:tungsten_ingot"},
			{"group:stick", "fmining:tungsten_ingot"},
			{"group:stick", ""}
	}
})

--Swords

minetest.register_craft({
		output = "fmain:wood_sword",
		recipe = {
			{"group:wood"},
			{"group:wood"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:stone_sword",
		recipe = {
			{"group:stone"},
			{"group:stone"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:iron_sword",
		recipe = {
			{"fmining:iron_ingot"},
			{"fmining:iron_ingot"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:bronze_sword",
		recipe = {
			{"fmining:bronze_ingot"},
			{"fmining:bronze_ingot"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:diamond_sword",
		recipe = {
			{"fmining:diamond"},
			{"fmining:diamond"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:tungsten_sword",
		recipe = {
			{"fmining:tungsten_ingot"},
			{"fmining:tungsten_ingot"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:wood_shovel",
		recipe = {
			{"group:wood"},
			{"group:stick"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:stone_shovel",
		recipe = {
			{"group:stone"},
			{"group:stick"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:iron_shovel",
		recipe = {
			{"fmining:iron_ingot"},
			{"group:stick"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:bronze_shovel",
		recipe = {
			{"fmining:bronze_ingot"},
			{"group:stick"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:diamond_shovel",
		recipe = {
			{"fmining:diamond"},
			{"group:stick"},
			{"group:stick"}
	}
})

minetest.register_craft({
		output = "fmain:tungsten_shovel",
		recipe = {
			{"fmining:tungsten_ingot"},
			{"group:stick"},
			{"group:stick"}
	}
})

--Other
minetest.register_craft({
		output = "fmain:clay",
		recipe = {
			{"fmain:clay_lump", "fmain:clay_lump"},
			{"fmain:clay_lump", "fmain:clay_lump"},
	}
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"fmain:limestone_chunk", "fmining:coal", "fmining:coal"},
	output = "fmain:fluxed_coal_powder 3",
})
