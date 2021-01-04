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


minetest.register_tool("fmain:wood_sword", {
	description = ("Wood Sword"),
	inventory_image = "fmain_wood_sword.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1, flammable = 2}
})

minetest.register_tool("fmain:stone_sword", {
	description = ("Stone Sword"),
	inventory_image = "fmain_stone_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("fmain:iron_sword", {
	description = ("Iron Sword"),
	inventory_image = "fmain_iron_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("fmain:bronze_sword", {
	description = ("Bronze Sword"),
	inventory_image = "fmain_bronze_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("fmain:diamond_sword", {
	description = ("Diamond Sword"),
	inventory_image = "fmain_diamond_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("fmain:tungsten_sword", {
	description = ("Tungsten Carbide Sword"),
	inventory_image = "fmain_tungsten_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("fmain:wood_shovel", {
	description = ("Wood Shovel"),
	inventory_image = "fmain_wood_shovel.png",
	wield_image = "fmain_wood_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1, flammable = 2}
})

minetest.register_tool("fmain:stone_shovel", {
	description = ("Stone Shovel"),
	inventory_image = "fmain_stone_shovel.png",
	wield_image = "fmain_stone_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("fmain:iron_shovel", {
	description = ("Iron Shovel"),
	inventory_image = "fmain_iron_shovel.png",
	wield_image = "fmain_iron_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("fmain:bronze_shovel", {
	description = ("Bronze Shovel"),
	inventory_image = "fmain_bronze_shovel.png",
	wield_image = "fmain_bronze_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("fmain:diamond_shovel", {
	description = ("Diamond Shovel"),
	inventory_image = "fmain_diamond_shovel.png",
	wield_image = "fmain_diamond_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("fmain:tungsten_shovel", {
	description = ("Tungsten Carbide Shovel"),
	inventory_image = "fmain_tungsten_shovel.png",
	wield_image = "fmain_tungsten_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})