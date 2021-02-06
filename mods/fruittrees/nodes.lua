--[[
fruittrees.after_place_leaves = function(pos, placer, itemstack, pointed_thing)
	if placer and placer:is_player() then
		local node = minetest.get_node(pos)
		node.param2 = 1
		minetest.set_node(pos, node)
	end
end
]]
minetest.register_node("fruittrees:orange_wood", {
	description = "Orange Wood",
	tiles = {
		"fruittrees_orange_core.png", 
		"fruittrees_orange_core.png", 
		"fruittrees_orange_bark.png",
		"fruittrees_orange_bark.png",
		"fruittrees_orange_bark.png",
		"fruittrees_orange_bark.png",
		
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = fmain.node_sound_wood_defaults(),

	on_place = minetest.rotate_node,
})


fruittrees.register_bushlike("fruittrees:orange_leaves", {
	description = "Orange Tree Leaves",
--	growtime = {3, 15},
	apn_func = fmain.after_place_leaves,
	make_drop2 = "fruittrees:orange",
	trunk = {"fruittrees:orange_wood"},
	radius = 3,
})

fruittrees.register_bushlike("fruittrees:strawberry_bush_leaves", {
	description = "Strawberry Bush Leaves",
	apn_func = fmain.after_place_leaves,
	make_drop2 = "fruittrees:strawberries",
--	growtime = {3, 15},
	drop = "self",
})

--[[
minetest.register_node("fruittrees:orange_leaves", {
	description = "Orange Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"fruittrees_orange_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {"fruittrees:orange_sapling"}, --DO NOT FORGET TO FIX ME, I should be a sapling
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {"fruittrees:orange_leaves"},
			}
		}
	},
--	sounds = default.node_sound_leaves_defaults(),

	after_place_node = fmain.after_place_leaves, --replace with new function to stop the production of fruit after being placed
})

minetest.register_node("fruittrees:orange_leaves_fruit", {
	description = "Orange Tree Leaves with Fruit",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"fruittrees_orange_leaves_fruit.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {"fruittrees:orange_sapling"}, --DO NOT FORGET TO FIX ME, I should be a sapling
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {"fruittrees:orange_leaves"},
			}
		}
	},
--	sounds = default.node_sound_leaves_defaults(),

	after_place_node = fmain.after_place_leaves, --replace with new function to stop the production of fruit after being placed
})
]]
