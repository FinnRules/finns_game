--From default


--[[
function fmain.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end
]]

--
-- Formspecs
--

wood_stove = {}

wood_fuel = {}

function fmain.register_stove_craft(def)
	if not def.recipe then
		def.recipe = nil
	end
	if not def.cooktime then
		def.cooktime = 0
	end
	if not def.output then
		def.output = nil
	end
	--Add support for multiple outputs, just have output2, 3 etc then check to see if they exist
	
	table.insert(wood_stove, def)
end

function fmain.register_stove_fuel(def)
	if not def.recipe then
		def.recipe = nil
	end
	if not def.burntime then
		def.burntime = 0
	end

	table.insert(wood_fuel, def)
end
	

function fmain.get_stovable(item)
	for i in pairs(wood_stove) do
		if wood_stove[i].recipe == item then
			return wood_stove[i]
		end
	end
	local foo = {recipe = "", cooktime = 0, output = ""}
	return foo --
end

function fmain.get_stove_fuel(item)
	for i in pairs(wood_fuel) do
		if wood_fuel[i].recipe == item then
			return wood_fuel[i]
		end
	end
	local foo = {recipe = "", burntime = 0}
	return foo
end

fmain.register_stove_craft({
	recipe = "fmining:copper_ore",
	cooktime = 10,
	output = "fmining:copper_ingot",
})

fmain.register_stove_fuel({
	recipe = "fmain:maple_planks",
	burntime = 30,
})

fmain.register_stove_fuel({
	recipe = "fmain:redwood_planks",
	burntime = 30,
})

fmain.register_stove_fuel({
	recipe = "fmain:weeping_willow_planks",
	burntime = 30,
})

fmain.register_stove_fuel({
	recipe = "fmain:cherry_planks",
	burntime = 30,
})

function fmain.get_wood_stove_active_formspec(fuel_percent, item_percent)
	return "size[8,8.5]"..
		"list[context;src;2.75,0.5;1,1;]"..
		"list[context;fuel;2.75,2.5;1,1;]"..
		"image[2.75,1.5;1,1;fmain_furnace_fire_bg.png^[lowpart:"..
		(fuel_percent)..":fmain_furnace_fire_fg.png]"..
		"image[3.75,1.5;1,1;gui_furnace_arrow_bg.png^[lowpart:"..
		(item_percent)..":gui_furnace_arrow_fg.png^[transformR270]"..
		"list[context;dst;4.75,0.96;2,2;]"..
		"list[current_player;main;0,4.25;8,1;]"..
		"list[current_player;main;0,5.5;8,3;8]"..
		"listring[context;dst]"..
		"listring[current_player;main]"..
		"listring[context;src]"..
		"listring[current_player;main]"..
		"listring[context;fuel]"..
		"listring[current_player;main]"..
		fmain.get_hotbar_bg(0, 4.25)
end

function fmain.get_wood_stove_inactive_formspec()
	return "size[8,8.5]"..
		"list[context;src;2.75,0.5;1,1;]"..
		"list[context;fuel;2.75,2.5;1,1;]"..
		"image[2.75,1.5;1,1;fmain_furnace_fire_bg.png]"..
		"image[3.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
		"list[context;dst;4.75,0.96;2,2;]"..
		"list[current_player;main;0,4.25;8,1;]"..
		"list[current_player;main;0,5.5;8,3;8]"..
		"listring[context;dst]"..
		"listring[current_player;main]"..
		"listring[context;src]"..
		"listring[current_player;main]"..
		"listring[context;fuel]"..
		"listring[current_player;main]"..
		fmain.get_hotbar_bg(0, 4.25)
end

--
-- Node callback functions that are the same for active and inactive furnace
--

local function can_dig(pos, player)
	local meta = minetest.get_meta(pos);
	local inv = meta:get_inventory()
	return inv:is_empty("fuel") and inv:is_empty("dst") and inv:is_empty("src")
end

local function allow_metadata_inventory_put(pos, listname, index, stack, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	if listname == "fuel" then
		if fmain.get_stove_fuel(stack:get_name()).burntime ~= 0 then --probably broken
			if inv:is_empty("src") then
				meta:set_string("infotext", "Wood Stove is empty")
			end
			return stack:get_count()
		else
			return 0
		end
	elseif listname == "src" then
		return stack:get_count()
	elseif listname == "dst" then
		return 0
	end
end

local function allow_metadata_inventory_move(pos, from_list, from_index, to_list, to_index, count, player)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local stack = inv:get_stack(from_list, from_index)
	return allow_metadata_inventory_put(pos, to_list, to_index, stack, player)
end

local function allow_metadata_inventory_take(pos, listname, index, stack, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end
	return stack:get_count()
end

local function swap_node(pos, name)
	local node = minetest.get_node(pos)
	if node.name == name then
		return
	end
	node.name = name
	minetest.swap_node(pos, node)
end

local function furnace_node_timer(pos, elapsed)
	--
	-- Initialize metadata
	--
	local meta = minetest.get_meta(pos) --Meta is the block
	local fuel_time = meta:get_float("fuel_time") or 0
	local src_time = meta:get_float("src_time") or 0
	local fuel_totaltime = meta:get_float("fuel_totaltime") or 0

	local inv = meta:get_inventory() --Inventory of the block
	local srclist, fuellist
	local dst_full = false

	local cookable, cooked
	local fuel

	local update = true
	while elapsed > 0 and update do
		update = false

		srclist = inv:get_list("src") --A table
		fuellist = inv:get_list("fuel")
		local itemInside = inv:get_stack("src", 1):get_name()
		local fuelInside = inv:get_stack("fuel", 1):get_name()
		--
		-- Cooking
		--

		-- Check if we have cookable content
		local aftercooked
		cooked = fmain.get_stovable(itemInside) --Change me to a custom function
		aftercooked = fmain.get_stovable(itemInside)
		cookable = cooked.cooktime ~= 0 --Checks to see if object is cookable
		local el = math.min(elapsed, fuel_totaltime - fuel_time)
		if cookable then -- fuel lasts long enough, adjust el to cooking duration
			el = math.min(el, cooked.cooktime - src_time)
		end

		-- Check if we have enough fuel to burn
		if fuel_time < fuel_totaltime then
			-- The furnace is currently active and has enough fuel
			fuel_time = fuel_time + el
			-- If there is a cookable item then check if it is ready yet
			if cookable then
				src_time = src_time + el
				if src_time >= cooked.cooktime then
					-- Place result in dst list if possible
					if inv:room_for_item("dst", cooked.output) then
						inv:add_item("dst", cooked.output)
						inv:remove_item("src", inv:get_stack("src", 1):get_name())
						src_time = src_time - cooked.cooktime
						update = true
					else
						dst_full = true
					end
				else
					-- Item could not be cooked: probably missing fuel
					update = true
				end
			end
		else
			-- Furnace ran out of fuel
			if cookable then
				-- We need to get new fuel
				local afterfuel
				fuel = fmain.get_stove_fuel(fuelInside)
				afterfuel = fmain.get_stove_fuel(fuelInside)
				if fuel.burntime == 0 then
					-- No valid fuel in fuel list
					fuel_totaltime = 0
					src_time = 0
				else
					-- Take fuel from fuel list
					inv:remove_item("fuel", inv:get_stack("fuel", 1):get_name())
					-- Put replacements in dst list or drop them on the furnace.
--[[
					local replacements = fuel.replacements
					if replacements[1] then
						local leftover = inv:add_item("dst", replacements[1])
						if not leftover:is_empty() then
							local above = vector.new(pos.x, pos.y + 1, pos.z)
							local drop_pos = minetest.find_node_near(above, 1, {"air"}) or above
							minetest.item_drop(replacements[1], nil, drop_pos)
						end
					end
]] --Leave me until replacements are supported
					update = true
					fuel_totaltime = fuel.burntime + (fuel_totaltime - fuel_time)
				end
			else
				-- We don't need to get new fuel since there is no cookable item
				fuel_totaltime = 0
				src_time = 0
			end
			fuel_time = 0
		end

		elapsed = elapsed - el
	end

	if fuel and fuel_totaltime > fuel.burntime then
		fuel_totaltime = fuel.burntime
	end
	if srclist and srclist[1]:is_empty() then
		src_time = 0
	end

	--
	-- Update formspec, infotext and node
	--
	local formspec
	local item_state
	local item_percent = 0
	if cookable then
		item_percent = math.floor(src_time / cooked.cooktime * 100)
		if dst_full then
			item_state = "100% (output full)"
		else
			item_state = "@1%", item_percent
		end
	else
		if srclist and not srclist[1]:is_empty() then
			item_state = "Not cookable"
		else
			item_state = "Empty"
		end
	end

	local fuel_state = "Empty"
	local active = false
	local result = false

	if fuel_totaltime ~= 0 then
		active = true
		local fuel_percent = 100 - math.floor(fuel_time / fuel_totaltime * 100)
		fuel_state = "@1%", fuel_percent
		formspec = fmain.get_wood_stove_active_formspec(fuel_percent, item_percent)
		swap_node(pos, "fmain:wood_stove_active")
		-- make sure timer restarts automatically
		result = true
	else
		if fuellist and not fuellist[1]:is_empty() then
			fuel_state = "@1%", 0
		end
		formspec = fmain.get_wood_stove_inactive_formspec()
		swap_node(pos, "fmain:wood_stove")
		-- stop timer on the inactive furnace
		minetest.get_node_timer(pos):stop()
	end


	local infotext
	if active then
		infotext = "Wood Stove active"
	else
		infotext = "Wood Stove inactive"
	end
	infotext = infotext .. "\n" .. "(Item: @1; Fuel: @2)", item_state, fuel_state

	--
	-- Set meta values
	--
	meta:set_float("fuel_totaltime", fuel_totaltime)
	meta:set_float("fuel_time", fuel_time)
	meta:set_float("src_time", src_time)
	meta:set_string("formspec", formspec)
	meta:set_string("infotext", infotext)

	return result
end

--
-- Node definitions
--

minetest.register_node("fmain:wood_stove", {
	description = "Wood Stove",
	tiles = {
		"fmain_furnace_top.png", "fmain_furnace_bottom.png",
		"fmain_wood_stove_side.png", "fmain_wood_stove_side.png",
		"fmain_wood_stove_side.png", "fmain_wood_stove_front.png"
	},
	paramtype2 = "facedir",
	groups = {cracky=2, unsilktouchable = 1},
	legacy_facedir_simple = true,
	is_ground_content = false,
--	sounds = default.node_sound_stone_defaults(),

	can_dig = can_dig,

	on_timer = furnace_node_timer,

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size('src', 1)
		inv:set_size('fuel', 1)
		inv:set_size('dst', 4)
		furnace_node_timer(pos, 0)
	end,

	on_metadata_inventory_move = function(pos)
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_metadata_inventory_put = function(pos)
		-- start timer function, it will sort out whether furnace can burn or not.
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_blast = function(pos)
		local drops = {}
		fmain.get_inventory_drops(pos, "src", drops)
		fmain.get_inventory_drops(pos, "fuel", drops)
		fmain.get_inventory_drops(pos, "dst", drops)
		drops[#drops+1] = "fmain:wood_stove"
		minetest.remove_node(pos)
		return drops
	end,

	allow_metadata_inventory_put = allow_metadata_inventory_put,
	allow_metadata_inventory_move = allow_metadata_inventory_move,
	allow_metadata_inventory_take = allow_metadata_inventory_take,
})

minetest.register_node("fmain:wood_stove_active", {
	description = "Wood Stove",
	tiles = {
		"fmain_furnace_top.png", 
		"fmain_furnace_bottom.png",
		"fmain_wood_stove_side.png", 
		"fmain_wood_stove_side.png",
		"fmain_wood_stove_side.png",
		{
			image = "fmain_furnace_front_active.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5
			},
		}
	},
	paramtype2 = "facedir",
	light_source = 8,
	drop = "fmain:wood_stove",
	groups = {cracky=2, not_in_creative_inventory=1, unsilktouchable = 1},
	legacy_facedir_simple = true,
	is_ground_content = false,
--	sounds = default.node_sound_stone_defaults(),
	on_timer = furnace_node_timer,

	can_dig = can_dig,

	allow_metadata_inventory_put = allow_metadata_inventory_put,
	allow_metadata_inventory_move = allow_metadata_inventory_move,
	allow_metadata_inventory_take = allow_metadata_inventory_take,
})

minetest.register_craft({
	output = "fmain:wood_stove",
	recipe = {
		{"group:cobble", "group:cobble", "group:cobble"},
		{"group:cobble", "", "group:cobble"},
		{"group:cobble", "group:cobble", "group:cobble"},
	}
})

