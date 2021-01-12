fdyes = {}
fdyes.path = minetest.get_modpath("fdyes")
fdyes.dyes = {}

function fdyes.register_color(def)
--	if not def.displayname then
--		def.displayname = def.name:gsub("^%l", string.upper):gsub("[%u_]+", " ")
--	end
	if not def.outside then --Set outside to anything to avoid creating an item for your color
		minetest.register_craftitem("fdyes:" .. def.name .. "_dye", {
			description = def.displayname .. " Dye",
			inventory_image = "fdyes_" .. def.name .. "_dye.png",
			groups = def.groups or {dye = 1},
		})
	end
	if not def.nowool then
		minetest.register_node("fdyes:" .. def.name .. "_wool", {
			description = def.woolname or def.displayname .. " Dyed Wool",
			tiles = {"fdyes_" .. def.name .. "_wool.png"},
			groups = {oddly_breakable_by_hand = 1},
		})
		minetest.register_craft({
			type = "shapeless",
			recipe = {"fmain:wool", "fdyes:" .. def.name .. "_dye"},
			output = "fdyes:" .. def.name .. "_wool",	
		})
	end
	if not def.noclay then
		minetest.register_node("fdyes:" .. def.name .. "_baked_clay", {
			description = def.clayname or def.displayname .. " Dyed Baked Clay",
			tiles = {"fdyes_" .. def.name .. "_baked_clay.png"},
			groups = {cracky = 1},
		})
	end
--	table.insert(fdyes.dyes, def.name)
	

end

--local f = "finns_game_test"

--print(f:gsub("[%u_]+", " "):gsub("^%s", string.upper))
--print(f)


fdyes.register_color({
	name = "purple",
	displayname = "Purple",
})

minetest.register_craft({
	recipe = {"fmain:purple_orchid"},
	type = "shapeless",
	output = "fdyes:purple_dye 2",
})

fdyes.register_color({
	name = "light_blue",
	displayname = "Light Blue",
})

minetest.register_craft({
	recipe = {"fmain:nemophila"},
	type = "shapeless",
	output = "fdyes:light_blue_dye 2",
})

fdyes.register_color({
	name = "pink",
	displayname = "Pink",
})

minetest.register_craft({
	recipe = {"fmain:bleeding_heart"},
	type = "shapeless",
	output = "fdyes:pink_dye 2",
})

fdyes.register_color({
	name = "red",
	displayname = "Red",
})

minetest.register_craft({
	recipe = {"fmain:rose"},
	type = "shapeless",
	output = "fdyes:red_dye 2",
})

fdyes.register_color({
	name = "lime",
	displayname = "Lime",
})

minetest.register_craft({
	recipe = {"fmain:bells_of_ireland"},
	type = "shapeless",
	output = "fdyes:lime_dye 2",
})

fdyes.register_color({
	name = "green",
	displayname = "Green",
})

fdyes.register_color({
	name = "black",
	displayname = "Black",
})

minetest.register_craft({
	recipe = {"fmain:hellebore"},
	type = "shapeless",
	output = "fdyes:black_dye 2",
})

fdyes.register_color({
	name = "yellow",
	displayname = "Yellow",
})

minetest.register_craft({
	recipe = {"fmain:dahlia"},
	type = "shapeless",
	output = "fdyes:yellow_dye 2",
})

fdyes.register_color({
	name = "white",
	displayname = "White",
	nowool = true,
})

fdyes.register_color({
	name = "gray",
	displayname = "Gray",
})

minetest.register_craft({
	recipe = {"fdyes:white_dye", "fdyes:black_dye"},
	type = "shapeless",
	output = "fdyes:gray_dye 2",
})

fdyes.register_color({
	name = "orange",
	displayname = "Orange",
})

minetest.register_craft({
	recipe = {"fmain:red_hot_poker"},
	type = "shapeless",
	output = "fdyes:orange_dye 2",
})


local dye_recipes = {
	-- src1, src2, dst
	-- RYB mixes
	{"red", "blue", "purple"}, -- "purple"
	{"yellow", "red", "orange"},
	{"yellow", "blue", "green"},
	-- RYB complementary mixes
--	{"yellow", "purple", "dark_grey"},
--	{"blue", "orange", "dark_grey"},
	-- CMY mixes - approximation
--	{"cyan", "yellow", "green"},
--	{"cyan", "magenta", "blue"},
--	{"yellow", "magenta", "red"},
	-- other mixes that result in a color we have
	{"red", "green", "brown"},
--	{"magenta", "blue", "violet"},
--	{"green", "blue", "cyan"},
--	{"pink", "violet", "magenta"},
	-- mixes with black
	{"white", "black", "grey"},
--	{"grey", "black", "dark_grey"},
--	{"green", "black", "dark_green"},
	{"orange", "black", "brown"},
	-- mixes with white
	{"white", "red", "pink"},
--	{"white", "dark_grey", "grey"},
--	{"white", "dark_green", "green"},
}

for _, mix in pairs(dye_recipes) do
	minetest.register_craft({
		type = "shapeless",
		output = "fdyes:" .. mix[3] .. "_dye 2",
		recipe = {"fdyes:" .. mix[1] .. "_dye", "fdyes:" .. mix[2] .. "_dye"},
	})
end
