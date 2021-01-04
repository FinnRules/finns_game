fdyes = {}
fdyes.path = minetest.get_modpath("fdyes")


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
	end

	

end

--local f = "finns_game_test"

--print(f:gsub("[%u_]+", " "):gsub("^%s", string.upper))
--print(f)


fdyes.register_color({
	name = "purple",
	displayname = "Purple",
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

fdyes.register_color({
	name = "green",
	displayname = "Green",
})

fdyes.register_color({
	name = "black",
	displayname = "Black",
})

fdyes.register_color({
	name = "yellow",
	displayname = "Yellow",
})

fdyes.register_color({
	name = "white",
	displayname = "White",
	nowool = true,
})
