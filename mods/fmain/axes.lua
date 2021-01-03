minetest.register_tool("fmain:wood_axe", {
	description = "Wood Axe",
	inventory_image = "fmain_wood_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})


minetest.register_tool("fmain:stone_axe", {
	description = "Stone Axe",
	inventory_image = "fmain_stone_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("fmain:bronze_axe", {
	description = "Bronze Axe",
	inventory_image = "fmain_bronze_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("fmain:iron_axe", {
	description = "Iron Axe",
	inventory_image = "fmain_iron_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("fmain:diamond_axe", {
	description = "Diamond Axe",
	inventory_image = "fmain_diamond_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("fmain:tungsten_axe", {
	description = "Tungsten Carbide Axe",
	inventory_image = "fmain_tungsten_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})
