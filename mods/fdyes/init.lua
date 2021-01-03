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
	
	minetest.register_node("fdyes:" .. def.name .. "_wool", {
		description = def.woolname or def.displayname .. " Dyed Wool",
		tiles = {"fdyes_" .. def.name .. "_dyed_wool.png"},
		groups = {oddly_breakable_by_hand = 1},
	})

	

end

--local f = "finns_game_test"

--print(f:gsub("[%u_]+", " "):gsub("^%s", string.upper))
--print(f)


fdyes.register_color({
	name = "purple",
	displayname = "Purple",
})
