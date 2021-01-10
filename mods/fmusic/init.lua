
fmusic = {}

fmusic.path = minetest.get_modpath("fmusic")

dofile(fmusic.path .. "/discs.lua")


minetest.register_craft({
	recipe = {
		{"group:stick", "fmining:diamond", "fmining:sapphire"},
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"}
	},
	output = "jukebox:jukebox",
})

minetest.register_craft({
	recipe = {
		{"group:stick", "fmining:sapphire", "fmining:diamond"},
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"}
	},
	output = "jukebox:jukebox",
})

minetest.register_craft({
	recipe = {
		{"fmining:diamond", "fmining:sapphire", "group:stick"},
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"}
	},
	output = "jukebox:jukebox",
})

minetest.register_craft({
	recipe = {
		{"fmining:sapphire", "fmining:diamond", "group:stick"},
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"}
	},
	output = "jukebox:jukebox",
})
