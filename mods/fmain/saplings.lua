function fmain.can_grow(pos)
	local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under then
		return false
	end
	if minetest.get_item_group(node_under.name, "soil") == 0 then
		return false
	end
	local light_level = minetest.get_node_light(pos)
	if not light_level or light_level < 13 then
		return false
	end
	return true
end


function fmain.grow_sapling(pos)
	if not fmain.can_grow(pos) then
		-- try again 5 min later
		minetest.get_node_timer(pos):start(300)
		return
	end

	local mg_name = minetest.get_mapgen_setting("mg_name")
	local node = minetest.get_node(pos)

	if node.name == "fmain:maple_sapling" then
		minetest.log("action", "A sapling grows into a tree at " .. minetest.pos_to_string(pos))
		fmain.grow_maple_tree(pos)
	elseif node.name == "fmain:white_oak_sapling" then
		minetest.log("action", "A sapling grows into a tree at " .. minetest.pos_to_string(pos))
		fmain.grow_white_oak_tree(pos)
	elseif node.name == "fmain:maple_sapling_green" then
			minetest.log("action", "A sapling grows into a tree at " .. minetest.pos_to_string(pos))
			fmain.grow_maple_tree_green(pos)
	end
	--[[
	if node.name == "fmain:sapling" then
		minetest.log("action", "A sapling grows into a tree at "..
			minetest.pos_to_string(pos))
		if mg_name == "v6" then
			fmain.grow_tree(pos, random(1, 4) == 1)
		else
			fmain.grow_new_apple_tree(pos)
		end
	elseif node.name == "fmain:junglesapling" then
		minetest.log("action", "A jungle sapling grows into a tree at "..
			minetest.pos_to_string(pos))
		if mg_name == "v6" then
			fmain.grow_jungle_tree(pos)
		else
			fmain.grow_new_jungle_tree(pos)
		end
	elseif node.name == "fmain:pine_sapling" then
		minetest.log("action", "A pine sapling grows into a tree at "..
			minetest.pos_to_string(pos))
		local snow = is_snow_nearby(pos)
		if mg_name == "v6" then
			fmain.grow_pine_tree(pos, snow)
		elseif snow then
			fmain.grow_new_snowy_pine_tree(pos)
		else
			fmain.grow_new_pine_tree(pos)
		end
	elseif node.name == "fmain:acacia_sapling" then
		minetest.log("action", "An acacia sapling grows into a tree at "..
			minetest.pos_to_string(pos))
		fmain.grow_new_acacia_tree(pos)
	elseif node.name == "fmain:aspen_sapling" then
		minetest.log("action", "An aspen sapling grows into a tree at "..
			minetest.pos_to_string(pos))
		fmain.grow_new_aspen_tree(pos)
	elseif node.name == "fmain:bush_sapling" then
		minetest.log("action", "A bush sapling grows into a bush at "..
			minetest.pos_to_string(pos))
		fmain.grow_bush(pos)
	elseif node.name == "fmain:blueberry_bush_sapling" then
		minetest.log("action", "A blueberry bush sapling grows into a bush at "..
			minetest.pos_to_string(pos))
		fmain.grow_blueberry_bush(pos)
	elseif node.name == "fmain:acacia_bush_sapling" then
		minetest.log("action", "An acacia bush sapling grows into a bush at "..
			minetest.pos_to_string(pos))
		fmain.grow_acacia_bush(pos)
	elseif node.name == "fmain:pine_bush_sapling" then
		minetest.log("action", "A pine bush sapling grows into a bush at "..
			minetest.pos_to_string(pos))
		fmain.grow_pine_bush(pos)
	elseif node.name == "fmain:emergent_jungle_sapling" then
		minetest.log("action", "An emergent jungle sapling grows into a tree at "..
			minetest.pos_to_string(pos))
		fmain.grow_new_emergent_jungle_tree(pos)
	end
	]]
end

function fmain.sapling_on_place(itemstack, placer, pointed_thing,
		sapling_name, minp_relative, maxp_relative, interval)
	-- Position of sapling
	local pos = pointed_thing.under
	local node = minetest.get_node_or_nil(pos)
	local pdef = node and minetest.registered_nodes[node.name]

	if pdef and pdef.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
		return pdef.on_rightclick(pos, node, placer, itemstack, pointed_thing)
	end

	if not pdef or not pdef.buildable_to then
		pos = pointed_thing.above
		node = minetest.get_node_or_nil(pos)
		pdef = node and minetest.registered_nodes[node.name]
		if not pdef or not pdef.buildable_to then
			return itemstack
		end
	end

	local player_name = placer and placer:get_player_name() or ""
	-- Check sapling position for protection
	if minetest.is_protected(pos, player_name) then
		minetest.record_protection_violation(pos, player_name)
		return itemstack
	end
	-- Check tree volume for protection
	if minetest.is_area_protected(
			vector.add(pos, minp_relative),
			vector.add(pos, maxp_relative),
			player_name,
			interval) then
		minetest.record_protection_violation(pos, player_name)
		-- Print extra information to explain
--		minetest.chat_send_player(player_name,
--			itemstack:get_definition().description .. " will intersect protection " ..
--			"on growth")
		minetest.chat_send_player(player_name, "@1 will intersect protection on growth.", itemstack:get_definition().description)
		return itemstack
	end

	minetest.log("action", player_name .. " places node "
			.. sapling_name .. " at " .. minetest.pos_to_string(pos))

	local take_item = not minetest.is_creative_enabled(player_name)
	local newnode = {name = sapling_name}
	local ndef = minetest.registered_nodes[sapling_name]
	minetest.set_node(pos, newnode)

	-- Run callback
	if ndef and ndef.after_place_node then
		-- Deepcopy place_to and pointed_thing because callback can modify it
		if ndef.after_place_node(table.copy(pos), placer,
				itemstack, table.copy(pointed_thing)) then
			take_item = false
		end
	end

	-- Run script hook
	for _, callback in ipairs(minetest.registered_on_placenodes) do
		-- Deepcopy pos, node and pointed_thing because callback can modify them
		if callback(table.copy(pos), table.copy(newnode),
				placer, table.copy(node or {}),
				itemstack, table.copy(pointed_thing)) then
			take_item = false
		end
	end

	if take_item then
		itemstack:take_item()
	end

	return itemstack
end


minetest.register_node("fmain:maple_sapling", {
	description = "Maple Tree Sapling",
	drawtype = "plantlike",
	tiles = {"fmain_maple_sapling.png"},
	inventory_image = "fmain_maple_sapling.png",
	wield_image = "fmain_maple_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = fmain.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
--	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500)) --300, 1500
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = fmain.sapling_on_place(itemstack, placer, pointed_thing,
			"fmain:maple_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 6, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

function fmain.grow_maple_tree(pos)
	spos = {x = pos.x - 3, y = pos.y - 1, z = pos.z - 3}
	minetest.set_node(pos, {name = "air"})
	minetest.place_schematic(spos, fmain.path .. "/schematics/maple_tree.mts", "random", nil, false)
end

minetest.register_node("fmain:maple_sapling_green", {
	description = "Green Maple Tree Sapling",
	drawtype = "plantlike",
	tiles = {"fmain_maple_sapling_green.png"},
	inventory_image = "fmain_maple_sapling_green.png",
	wield_image = "fmain_maple_sapling_green.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = fmain.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
--	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500)) --300, 1500
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = fmain.sapling_on_place(itemstack, placer, pointed_thing,
			"fmain:maple_sapling_green",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 6, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

function fmain.grow_maple_tree_green(pos)
	spos = {x = pos.x - 3, y = pos.y - 1, z = pos.z - 3}
	minetest.set_node(pos, {name = "air"})
	minetest.place_schematic(spos, fmain.path .. "/schematics/maple_tree_green.mts", "random", nil, false)
end



minetest.register_node("fmain:white_oak_sapling", {
	description = "White Oak Tree Sapling",
	drawtype = "plantlike",
	tiles = {"fmain_white_oak_sapling.png"},
	inventory_image = "fmain_white_oak_sapling.png",
	wield_image = "fmain_white_oak_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = fmain.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
--	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500)) --300, 1500
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = fmain.sapling_on_place(itemstack, placer, pointed_thing,
			"fmain:white_oak_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -8, y = 1, z = -6},
			{x = 8, y = 19, z = 6},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

function fmain.grow_white_oak_tree(pos)
	spos = {x = pos.x - 8, y = pos.y - 1, z = pos.z - 6}
	minetest.set_node(pos, {name = "air"})
	minetest.place_schematic(spos, fmain.path .. "/schematics/white_oak_tree.mts", "random", nil, false)
end

--[[
minetest.register_node("fmain:weeping_willow_sapling", {
	description = "Weeping Willow Sapling",
	drawtype = "plantlike",
	tiles = {"fmain_weeping_willow_sapling.png"},
	inventory_image = "fmain_weeping_willow_sapling.png",
	wield_image = "fmain_weeping_willow_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = fmain.grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
--	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(3, 15)) --300, 1500
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = fmain.sapling_on_place(itemstack, placer, pointed_thing,
			"fmain:white_oak_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -8, y = 1, z = -6},
			{x = 8, y = 19, z = 6},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

function fmain.grow_white_oak_tree(pos)
	spos = {x = pos.x - 8, y = pos.y, z = pos.z - 6}
	minetest.set_node(pos, {name = "air"})
	minetest.place_schematic(spos, fmain.path .. "/schematics/weeping_willow.mts", "random", nil, false)
end
]]
