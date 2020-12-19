--
-- Sounds
--
--[[ Sounds!!! These will be included once new sounds are recorded
function fmain.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "", gain = 1.0}
	table.dug = table.dug or
			{name = "fmain_dug_node", gain = 0.25}
	table.place = table.place or
			{name = "fmain_place_node_hard", gain = 1.0}
	return table
end

function fmain.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_hard_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "fmain_hard_footstep", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_dirt_footstep", gain = 0.4}
	table.dug = table.dug or
			{name = "fmain_dirt_footstep", gain = 1.0}
	table.place = table.place or
			{name = "fmain_place_node", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_sand_footstep", gain = 0.05}
	table.dug = table.dug or
			{name = "fmain_sand_footstep", gain = 0.15}
	table.place = table.place or
			{name = "fmain_place_node", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_gravel_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_gravel_footstep", gain = 0.1}
	table.dig = table.dig or
			{name = "fmain_gravel_dig", gain = 0.35}
	table.dug = table.dug or
			{name = "fmain_gravel_dug", gain = 1.0}
	table.place = table.place or
			{name = "fmain_place_node", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_wood_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "fmain_wood_footstep", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_grass_footstep", gain = 0.45}
	table.dug = table.dug or
			{name = "fmain_grass_footstep", gain = 0.7}
	table.place = table.place or
			{name = "fmain_place_node", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_glass_footstep", gain = 0.3}
	table.dig = table.dig or
			{name = "fmain_glass_footstep", gain = 0.5}
	table.dug = table.dug or
			{name = "fmain_break_glass", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_ice_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_ice_footstep", gain = 0.3}
	table.dig = table.dig or
			{name = "fmain_ice_dig", gain = 0.5}
	table.dug = table.dug or
			{name = "fmain_ice_dug", gain = 0.5}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_metal_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_metal_footstep", gain = 0.4}
	table.dig = table.dig or
			{name = "fmain_dig_metal", gain = 0.5}
	table.dug = table.dug or
			{name = "fmain_dug_metal", gain = 0.5}
	table.place = table.place or
			{name = "fmain_place_node_metal", gain = 0.5}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_water_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_water_footstep", gain = 0.2}
	fmain.node_sound_defaults(table)
	return table
end

function fmain.node_sound_snow_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "fmain_snow_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "fmain_snow_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "fmain_snow_footstep", gain = 0.3}
	table.place = table.place or
			{name = "fmain_place_node", gain = 1.0}
	fmain.node_sound_defaults(table)
	return table
end

]]
--
-- Lavacooling
--
--[[Keep for later, after blocks are defined
fmain.cool_lava = function(pos, node)
	if node.name == "fmain:lava_source" then
		minetest.set_node(pos, {name = "fmain:obsidian"})
	else -- Lava flowing
		minetest.set_node(pos, {name = "fmain:stone"})
	end
	minetest.sound_play("fmain_cool_lava",
		{pos = pos, max_hear_distance = 16, gain = 0.25}, true)
end

if minetest.settings:get_bool("enable_lavacooling") ~= false then
	minetest.register_abm({
		label = "Lava cooling",
		nodenames = {"fmain:lava_source", "fmain:lava_flowing"},
		neighbors = {"group:cools_lava", "group:water"},
		interval = 2,
		chance = 2,
		catch_up = false,
		action = function(...)
			fmain.cool_lava(...)
		end,
	})
end
]]

--
-- Optimized helper to put all items in an inventory into a drops list
--

function fmain.get_inventory_drops(pos, inventory, drops)
	local inv = minetest.get_meta(pos):get_inventory()
	local n = #drops
	for i = 1, inv:get_size(inventory) do
		local stack = inv:get_stack(inventory, i)
		if stack:get_count() > 0 then
			drops[n+1] = stack:to_table()
			n = n + 1
		end
	end
end


--
-- Papyrus and cactus growing
--

-- Wrapping the functions in ABM action is necessary to make overriding them possible
--[[Cactus
function fmain.grow_cactus(pos, node)
	if node.param2 >= 4 then
		return
	end
	pos.y = pos.y - 1
	if minetest.get_item_group(minetest.get_node(pos).name, "sand") == 0 then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "fmain:cactus" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "fmain:cactus"})
	return true
end

function fmain.grow_papyrus(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "fmain:dirt" and
			name ~= "fmain:dirt_with_grass" and
			name ~= "fmain:dirt_with_dry_grass" and
			name ~= "fmain:dirt_with_rainforest_litter" and
			name ~= "fmain:dry_dirt" and
			name ~= "fmain:dry_dirt_with_dry_grass" then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "fmain:papyrus" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "fmain:papyrus"})
	return true
end

minetest.register_abm({
	label = "Grow cactus",
	nodenames = {"fmain:cactus"},
	neighbors = {"group:sand"},
	interval = 12,
	chance = 83,
	action = function(...)
		fmain.grow_cactus(...)
	end
})

minetest.register_abm({
	label = "Grow papyrus",
	nodenames = {"fmain:papyrus"},
	-- Grows on the dirt and surface dirt nodes of the biomes papyrus appears in,
	-- including the old savanna nodes.
	-- 'fmain:dirt_with_grass' is here only because it was allowed before.
	neighbors = {
		"fmain:dirt",
		"fmain:dirt_with_grass",
		"fmain:dirt_with_dry_grass",
		"fmain:dirt_with_rainforest_litter",
		"fmain:dry_dirt",
		"fmain:dry_dirt_with_dry_grass",
	},
	interval = 14,
	chance = 71,
	action = function(...)
		fmain.grow_papyrus(...)
	end
})

]]
--
-- Dig upwards
--

function fmain.dig_up(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name then
		minetest.node_dig(np, nn, digger)
	end
end


--
-- Fence registration helper
--
local fence_collision_extra = minetest.settings:get_bool("enable_fence_tall") and 3/8 or 0

--Fence Registration
function fmain.register_fence(name, def)
	minetest.register_craft({
		output = name .. " 4",
		recipe = {
			{ def.material, 'group:stick', def.material },
			{ def.material, 'group:stick', def.material },
		}
	})

	local fence_texture = "fmain_fence_overlay.png^" .. def.texture ..
			"^fmain_fence_overlay.png^[makealpha:255,126,126"
	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
			-- connect_top =
			-- connect_bottom =
			connect_front = {{-1/16,  3/16, -1/2,   1/16,  5/16, -1/8 },
				         {-1/16, -5/16, -1/2,   1/16, -3/16, -1/8 }},
			connect_left =  {{-1/2,   3/16, -1/16, -1/8,   5/16,  1/16},
				         {-1/2,  -5/16, -1/16, -1/8,  -3/16,  1/16}},
			connect_back =  {{-1/16,  3/16,  1/8,   1/16,  5/16,  1/2 },
				         {-1/16, -5/16,  1/8,   1/16, -3/16,  1/2 }},
			connect_right = {{ 1/8,   3/16, -1/16,  1/2,   5/16,  1/16},
				         { 1/8,  -5/16, -1/16,  1/2,  -3/16,  1/16}}
		},
		collision_box = {
			type = "connected",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2 + fence_collision_extra, 1/8},
			-- connect_top =
			-- connect_bottom =
			connect_front = {-1/8, -1/2, -1/2,  1/8, 1/2 + fence_collision_extra, -1/8},
			connect_left =  {-1/2, -1/2, -1/8, -1/8, 1/2 + fence_collision_extra,  1/8},
			connect_back =  {-1/8, -1/2,  1/8,  1/8, 1/2 + fence_collision_extra,  1/2},
			connect_right = { 1/8, -1/2, -1/8,  1/2, 1/2 + fence_collision_extra,  1/8}
		},
		connects_to = {"group:fence", "group:wood", "group:tree", "group:wall"},
		inventory_image = fence_texture,
		wield_image = fence_texture,
		tiles = {def.texture},
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {},
	}
	for k, v in pairs(default_fields) do
		if def[k] == nil then
			def[k] = v
		end
	end

	-- Always add to the fence group, even if no group provided
	def.groups.fence = 1

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end


--
-- Fence rail registration helper
--

function fmain.register_fence_rail(name, def)
	minetest.register_craft({
		output = name .. " 16",
		recipe = {
			{ def.material, def.material },
			{ "", ""},
			{ def.material, def.material },
		}
	})

	local fence_rail_texture = "fmain_fence_rail_overlay.png^" .. def.texture ..
			"^fmain_fence_rail_overlay.png^[makealpha:255,126,126"
	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-1/16,  3/16, -1/16, 1/16,  5/16, 1/16},
				 {-1/16, -3/16, -1/16, 1/16, -5/16, 1/16}},
			-- connect_top =
			-- connect_bottom =
			connect_front = {{-1/16,  3/16, -1/2,   1/16,  5/16, -1/16},
				         {-1/16, -5/16, -1/2,   1/16, -3/16, -1/16}},
			connect_left =  {{-1/2,   3/16, -1/16, -1/16,  5/16,  1/16},
				         {-1/2,  -5/16, -1/16, -1/16, -3/16,  1/16}},
			connect_back =  {{-1/16,  3/16,  1/16,  1/16,  5/16,  1/2 },
				         {-1/16, -5/16,  1/16,  1/16, -3/16,  1/2 }},
			connect_right = {{ 1/16,  3/16, -1/16,  1/2,   5/16,  1/16},
		                         { 1/16, -5/16, -1/16,  1/2,  -3/16,  1/16}}
		},
		collision_box = {
			type = "connected",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2 + fence_collision_extra, 1/8},
			-- connect_top =
			-- connect_bottom =
			connect_front = {-1/8, -1/2, -1/2,  1/8, 1/2 + fence_collision_extra, -1/8},
			connect_left =  {-1/2, -1/2, -1/8, -1/8, 1/2 + fence_collision_extra,  1/8},
			connect_back =  {-1/8, -1/2,  1/8,  1/8, 1/2 + fence_collision_extra,  1/2},
			connect_right = { 1/8, -1/2, -1/8,  1/2, 1/2 + fence_collision_extra,  1/8}
		},
		connects_to = {"group:fence", "group:wall"},
		inventory_image = fence_rail_texture,
		wield_image = fence_rail_texture,
		tiles = {def.texture},
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {},
	}
	for k, v in pairs(default_fields) do
		if def[k] == nil then
			def[k] = v
		end
	end

	-- Always add to the fence group, even if no group provided
	def.groups.fence = 1

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end

--
-- Mese post registration helper
--[[Likely to be removed

function fmain.register_mesepost(name, def)
	minetest.register_craft({
		output = name .. " 4",
		recipe = {
			{'', 'fmain:glass', ''},
			{'fmain:mese_crystal', 'fmain:mese_crystal', 'fmain:mese_crystal'},
			{'', def.material, ''},
		}
	})

	local post_texture = def.texture .. "^fmain_mese_post_light_side.png^[makealpha:0,0,0"
	local post_texture_dark = def.texture .. "^fmain_mese_post_light_side_dark.png^[makealpha:0,0,0"
	-- Allow almost everything to be overridden
	local default_fields = {
		wield_image = post_texture,
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
			},
		},
		paramtype = "light",
		tiles = {def.texture, def.texture, post_texture_dark, post_texture_dark, post_texture, post_texture},
		light_source = fmain.LIGHT_MAX,
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = fmain.node_sound_wood_defaults(),
	}
	for k, v in pairs(default_fields) do
		if def[k] == nil then
			def[k] = v
		end
	end

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end
]]
--
-- Leafdecay
--

-- Prevent decay of placed leaves
fmain.after_place_leaves = function(pos, placer, itemstack, pointed_thing)
	if placer and placer:is_player() then
		local node = minetest.get_node(pos)
		node.param2 = 1
		minetest.set_node(pos, node)
	end
end

-- Leafdecay
local function leafdecay_after_destruct(pos, oldnode, def)
	for _, v in pairs(minetest.find_nodes_in_area(vector.subtract(pos, def.radius),
			vector.add(pos, def.radius), def.leaves)) do
		local node = minetest.get_node(v)
		local timer = minetest.get_node_timer(v)
		if node.param2 ~= 1 and not timer:is_started() then
			timer:start(math.random(20, 120) / 10)
		end
	end
end

local movement_gravity = tonumber(
	minetest.settings:get("movement_gravity")) or 9.81

local function leafdecay_on_timer(pos, def)
	if minetest.find_node_near(pos, def.radius, def.trunks) then
		return false
	end

	local node = minetest.get_node(pos)
	local drops = minetest.get_node_drops(node.name)
	for _, item in ipairs(drops) do
		local is_leaf
		for _, v in pairs(def.leaves) do
			if v == item then
				is_leaf = true
			end
		end
		if minetest.get_item_group(item, "leafdecay_drop") ~= 0 or
				not is_leaf then
			minetest.add_item({
				x = pos.x - 0.5 + math.random(),
				y = pos.y - 0.5 + math.random(),
				z = pos.z - 0.5 + math.random(),
			}, item)
		end
	end

	minetest.remove_node(pos)
	minetest.check_for_falling(pos)

	-- spawn a few particles for the removed node
	minetest.add_particlespawner({
		amount = 8,
		time = 0.001,
		minpos = vector.subtract(pos, {x=0.5, y=0.5, z=0.5}),
		maxpos = vector.add(pos, {x=0.5, y=0.5, z=0.5}),
		minvel = vector.new(-0.5, -1, -0.5),
		maxvel = vector.new(0.5, 0, 0.5),
		minacc = vector.new(0, -movement_gravity, 0),
		maxacc = vector.new(0, -movement_gravity, 0),
		minsize = 0,
		maxsize = 0,
		node = node,
	})
end

function fmain.register_leafdecay(def)
	assert(def.leaves)
	assert(def.trunks)
	assert(def.radius)
	for _, v in pairs(def.trunks) do
		minetest.override_item(v, {
			after_destruct = function(pos, oldnode)
				leafdecay_after_destruct(pos, oldnode, def)
			end,
		})
	end
	for _, v in pairs(def.leaves) do
		minetest.override_item(v, {
			on_timer = function(pos)
				leafdecay_on_timer(pos, def)
			end,
		})
	end
end


--
-- Convert fmain:dirt to something that fits the environment
--[Come back to me to read more]

minetest.register_abm({
	label = "Grass spread",
	nodenames = {"fmain:dirt"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"fmain:snow",
	},
	interval = 6,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "fmain:snow" then
			minetest.set_node(pos, {name = "fmain:dirt_with_snow"})
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "fmain:dirt_with_grass"})
		elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "fmain:dirt_with_dry_grass"})
		end
	end
})


--
-- Grass and dry grass removed in darkness
--

minetest.register_abm({
	label = "Grass covered",
	nodenames = {"group:spreading_dirt_type", "fmain:dry_dirt_with_dry_grass"},
	interval = 8,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef and not ((nodedef.sunlight_propagates or
				nodedef.paramtype == "light") and
				nodedef.liquidtype == "none") then
			if node.name == "fmain:dry_dirt_with_dry_grass" then
				minetest.set_node(pos, {name = "fmain:dry_dirt"})
			else
				minetest.set_node(pos, {name = "fmain:dirt"})
			end
		end
	end
})


--
-- Moss growth on cobble near water
--
--[[
local moss_correspondences = {
	["fmain:cobble"] = "fmain:mossycobble",
	["stairs:slab_cobble"] = "stairs:slab_mossycobble",
	["stairs:stair_cobble"] = "stairs:stair_mossycobble",
	["stairs:stair_inner_cobble"] = "stairs:stair_inner_mossycobble",
	["stairs:stair_outer_cobble"] = "stairs:stair_outer_mossycobble",
	["walls:cobble"] = "walls:mossycobble",
}
minetest.register_abm({
	label = "Moss growth",
	nodenames = {"fmain:cobble", "stairs:slab_cobble", "stairs:stair_cobble",
		"stairs:stair_inner_cobble", "stairs:stair_outer_cobble",
		"walls:cobble"},
	neighbors = {"group:water"},
	interval = 16,
	chance = 200,
	catch_up = false,
	action = function(pos, node)
		node.name = moss_correspondences[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})

]]
--
-- Register a craft to copy the metadata of items
--

function fmain.register_craft_metadata_copy(ingredient, result)
	minetest.register_craft({
		type = "shapeless",
		output = result,
		recipe = {ingredient, result}
	})

	minetest.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)
		if itemstack:get_name() ~= result then
			return
		end

		local original
		local index
		for i = 1, #old_craft_grid do
			if old_craft_grid[i]:get_name() == result then
				original = old_craft_grid[i]
				index = i
			end
		end
		if not original then
			return
		end
		local copymeta = original:get_meta():to_table()
		itemstack:get_meta():from_table(copymeta)
		-- put the book with metadata back in the craft grid
		craft_inv:set_stack("craft", index, original)
	end)
end


--
-- NOTICE: This method is not an official part of the API yet.
-- This method may change in future.
--
--[[Likely unneeded
function fmain.can_interact_with_node(player, pos)
	if player and player:is_player() then
		if minetest.check_player_privs(player, "protection_bypass") then
			return true
		end
	else
		return false
	end

	local meta = minetest.get_meta(pos)
	local owner = meta:get_string("owner")

	if not owner or owner == "" or owner == player:get_player_name() then
		return true
	end

	-- Is player wielding the right key?
	local item = player:get_wielded_item()
	if minetest.get_item_group(item:get_name(), "key") == 1 then
		local key_meta = item:get_meta()

		if key_meta:get_string("secret") == "" then
			local key_oldmeta = item:get_metadata()
			if key_oldmeta == "" or not minetest.parse_json(key_oldmeta) then
				return false
			end

			key_meta:set_string("secret", minetest.parse_json(key_oldmeta).secret)
			item:set_metadata("")
		end

		return meta:get_string("key_lock_secret") == key_meta:get_string("secret")
	end

	return false
end
]]
