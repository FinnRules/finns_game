minetest.register_tool("fmining:test_pic", {
	description = "Test Pickaxe",
	inventory_image = "fmining_ruby_pic.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50, [4]=1.0, [5]=5.0}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("fmining:test2_pic", {
	description = "Test2 Pickaxe",
	inventory_image = "fmining_sapphire_pic.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
