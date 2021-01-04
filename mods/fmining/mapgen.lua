--Coal

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:coal_ore",
	wherein = "fmain:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 12,
	clust_size = 4,
	y_max = 31000,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:coal_ore",
	wherein = "fmain:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 10,
	clust_size = 4,
	y_max = -100,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:coal_ore",
	wherein = "fmain:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 12,
	clust_size = 4,
	y_max = 10,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:rich_coal_ore",
	wherein = "fmining:coal_ore",
	clust_scarcity = 2*2*2,
	clust_num_ores = 3,
	clust_size = 3,
	y_max = 31000,
	y_min = -31000,
})

--Tin
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "fmining:tin_ore",
		wherein        = "fmain:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "fmining:tin_ore",
		wherein        = "fmain:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -32,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "fmining:tin_ore",
		wherein        = "fmain:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})


--Iron
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:iron_ore",
	wherein = "fmain:stone",
	clust_scarcity = 20 * 20 * 20,
	clust_num_ores = 5,
	clust_size = 4,
	y_max = 0,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:iron_ore",
	wherein = "fmain:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -200,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:iron_ore",
	wherein = "fmain:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -500,
	y_min = -31000,
})

--Copper

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:copper_ore",
	wherein = "fmain:stone",
	clust_scarcity = 12 * 12 * 12,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = 0,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:copper_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 12 * 13,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -50,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:copper_ore",
	wherein = "fmain:stone",
	clust_scarcity = 12 * 13 * 12,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -300,
	y_min = 31000,
})

-- Gold
