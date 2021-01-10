minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"fmain:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.0001,
    biomes = {"grassland", "moss_mountain", "white_forest", "mixed_forest"},
    y_max = 150,
    y_min = 1,
    schematic = minetest.get_modpath("fmisc") .. "/schematics/prealpha_veg_garden.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

--for prealpha
minetest.register_decoration({
	    deco_type = "simple",
	    place_on = {"fmain:dirt_with_grass"},
	    sidelen = 16,
	    fill_ratio = 0.005,
	    biomes = {"grassland", "mixed_forest"},
	    y_max = 200,
	    y_min = 1,
	    decoration = "overproduced:cotton_wild",
	})
--Sets 1.2 as default speed
minetest.register_on_joinplayer(function(player)
	player:set_physics_override({
		speed = 1.2,
	})
end)
