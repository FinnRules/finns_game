--Coal

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:coal_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11*11*11,
	clust_num_ores = 12,
	clust_size = 4,
	y_max = 31000,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:coal_ore",
	wherein = "fmain:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 10,
	clust_size = 4,
	y_max = -100,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:coal_ore",
	wherein = "fmain:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 12,
	clust_size = 4,
	y_max = -150,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:rich_coal_ore",
	wherein = "fmining:coal_ore",
	clust_scarcity = 2*2*2,
	clust_num_ores = 3,
	clust_size = 3,
	y_max = 0,
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

--Lead
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:lead_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 11 * 11,
	clust_num_ores = 5,
	clust_size = 4,
	y_max = -5,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:lead_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 11 * 11,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -75,
	y_min = -31000,
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
--[[
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:gold_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ore = 4,
	clust_size = 4,
	y_max = -50,
	y_min = 31000,
})
]]
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:gold_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ore = 4,
	clust_size = 4,
	y_max = -100,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:gold_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -200,
	y_min = 31000,
})

--Silver
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:silver_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 11 * 11,
	clust_num_ore = 4,
	clust_size = 4,
	y_max = -50,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:silver_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 11 * 11,
	clust_num_ore = 4,
	clust_size = 4,
	y_max = -100,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:silver_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 11 * 11,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -200,
	y_min = 31000,
})

--Diamond
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:diamond_ore",
	wherein = "fmain:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ore = 4,
	clust_size = 4,
	y_max = -75,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:diamond_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ore = 5,
	clust_size = 4,
	y_max = -150,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:gold_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 11 * 11,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -300,
	y_min = 31000,
})

--Tungsten
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:tungsten_ore",
	wherein = "fmain:stone",
	clust_scarcity = 17 * 17 * 17,
	clust_num_ore = 4,
	clust_size = 4,
	y_max = -150,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:tungsten_ore",
	wherein = "fmain:stone",
	clust_scarcity = 14 * 14 * 14,
	clust_num_ore = 5,
	clust_size = 5,
	y_max = -230,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:tungsten_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 12 * 11,
	clust_num_ore = 6,
	clust_size = 5,
	y_max = -300,
	y_min = 31000,
})

--Thorium
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:thorium_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 12 * 13,
	clust_num_ore = 5,
	clust_size = 6,
	y_max = -300,
	y_min = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:thorium_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 11 * 11,
	clust_num_ore = 7,
	clust_size = 6,
	y_max = -500,
	y_min = 31000,
})

--Opal
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:opal_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ore = 2,
	clust_size = 2,
	y_max = -130,
	y_min = 31000,
})

--Lapis Lazuli
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:lapis_ore",
	wherein = "fmain:stone",
	clust_scarcity = 23 * 23 * 23,
	clust_num_ores = 8,
	clust_size = 5,
	y_max = -69,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:lapis_ore",
	wherein = "fmain:stone",
	clust_scarcity = 13 * 12 * 23,
	clust_num_ore = 8,
	clust_size = 5,
	y_max = -115,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:lapis_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 10 * 13,
	clust_num_ore = 8,
	clust_size = 5,
	y_max = -230,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:lapis_ore",
	wherein = "fmain:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ore = 8,
	clust_size = 6,
	y_max = -529,
	y_min = -31000,
})

--Ruby
--[[
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:ruby_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 10 * 11,
	clust_num_ore = 2,
	clust_size = 2,
	y_max = -100,
	y_min = -31000,
})]]

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:ruby_ore",
	wherein = "fmain:stone",
	clust_scarcity = 10 * 11 * 10,
	clust_num_ore = 8,
	clust_size = 5,
	y_max = -150,
	y_min = -31000,
})

--Sapphire
--[[
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:sapphire_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 10 * 11,
	clust_num_ore = 2,
	clust_size = 2,
	y_max = -100,
	y_min = -31000,
})]]

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:sapphire_ore",
	wherein = "fmain:stone",
	clust_scarcity = 10 * 11 * 10,
	clust_num_ore = 8,
	clust_size = 5,
	y_max = -150,
	y_min = -31000,
})

--Uranium
minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:uranium_ore",
	wherein = "fmain:stone",
	clust_scarcity = 10 * 11 * 10,
	clust_num_ore = 8,
	clust_size = 5,
	y_max = -150,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:uranium_ore",
	wherein = "fmain:stone",
	clust_scarcity = 11 * 10 * 11,
	clust_num_ore = 2,
	clust_size = 2,
	y_max = -200,
	y_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "fmining:uranium_ore",
	wherein = "fmain:stone",
	clust_scarcity = 10 * 9 * 10,
	clust_num_ore = 8,
	clust_size = 5,
	y_max = -250,
	y_min = -31000,
})
