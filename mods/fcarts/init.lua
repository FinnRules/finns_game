-- fcarts/init.lua

fcarts = {}
fcarts.modpath = minetest.get_modpath("fcarts")
fcarts.railparams = {}

-- Maximal speed of the cart in m/s (min = -1)
fcarts.speed_max = 7
-- Set to -1 to disable punching the cart from inside (min = -1)
fcarts.punch_speed_max = 5
-- Maximal distance for the path correction (for dtime peaks)
fcarts.path_distance_max = 3


dofile(fcarts.modpath.."/functions.lua")
dofile(fcarts.modpath.."/rails.lua")
dofile(fcarts.modpath.."/cart_entity.lua")

--[[ Register rails as dungeon loot
if minetest.global_exists("dungeon_loot") then
	dungeon_loot.register({
		name = "fcarts:rail", chance = 0.35, count = {1, 6}
	})
end

]]
