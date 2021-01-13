minetest.register_tool("fmining:wood_pic", {
	description = "Wood Pickaxe",
	inventory_image = "fmining_wood_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=5.0}, uses=2},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("fmining:stone_pic", {
	description = "Stone Pickaxe",
	inventory_image = "fmining_stone_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.5, [2]=4.0}, uses=8},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("fmining:bronze_pic", {
	description = "Bronze Pickaxe",
	inventory_image = "fmining_bronze_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=1.1, [2]=2.3, [3]=4.0}, uses=25},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("fmining:iron_pic", {
	description = "Iron Pickaxe",
	inventory_image = "fmining_iron_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=0.6, [2]=1.2, [3]=2.0, [4]=4.0}, uses=120},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
--[[
minetest.register_tool("fmining:gold_pic", {
	description = ("Gold Pickaxe"),
	inventory_image = "fmining_gold_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("fmining:emerald_pic", {
	description = ("Emerald Pickaxe"),
	inventory_image = "fmining_emerald_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
]]
minetest.register_tool("fmining:diamond_pic", {
	description = "Diamond Pickaxe",
	inventory_image = "fmining_diamond_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=0.5, [2]=1.0, [3]=1.5, [4]=2.5, [5]=3.5}, uses=215},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("fmining:tungsten_pic", {
	description = "Tungsten Carbide Pickaxe",
	inventory_image = "fmining_tungsten_pic.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=0.1, [2]=0.5, [3]=0.8, [4]=1.2, [5]=2.5, [6]=4.0}, uses=600},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
