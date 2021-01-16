distresssignal = {}

local base_file = minetest.get_worldpath() .. "/base"

local base_pos = {}

local function loadhomes()
	local input = io.open(base_file, "r")
	if not input then
		return -- no longer an error
	end

	-- Iterate over all stored positions in the format "x y z player" for each line
	for pos, name in input:read("*a"):gmatch("(%S+ %S+ %S+)%s([%w_-]+)[\r\n]") do
		base_pos[name] = minetest.string_to_pos(pos)
	end
	input:close()
end

loadhomes()

distresssignal.set = function(name, pos)
	local player = minetest.get_player_by_name(name)
	if not player or not pos then
		return false
	end
	local player_meta = player:get_meta()
	player_meta:set_string("distresssignal:base", minetest.pos_to_string(pos))

	-- remove `name` from the old storage file
	if not base_pos[name] then
		return true
	end
	local data = {}
	local output = io.open(base_file, "w")
	if output then
		base_pos[name] = nil
		for i, v in pairs(homepos) do
			table.insert(data, string.format("%.1f %.1f %.1f %s\n", v.x, v.y, v.z, i))
		end
		output:write(table.concat(data))
		io.close(output)
		return true
	end
	return true -- if the file doesn't exist - don't return an error.
end

distresssignal.get = function(name)
	local player = minetest.get_player_by_name(name)
	local player_meta = player:get_meta()
	local pos = minetest.string_to_pos(player_meta:get_string("distresssignal:base"))
	if pos then
		return pos
	end

	-- fetch old entry from storage table
	pos = base_pos[name]
	if pos then
		return vector.new(pos)
	else
		return nil
	end
end

distresssignal.go = function(name)
	local pos = distresssignal.get(name)
	local player = minetest.get_player_by_name(name)
	if player and pos then
		player:set_pos(pos)
		return true
	end
	return false
end

minetest.register_craftitem("distresssignal:signal", {
	description = "Distress Signal",
	inventory_image = "fmining_opal.png",
	on_use = function(_, user, pointed_thing)
		local name = user:get_player_name()
		local pos = pointed_thing.above
		distresssignal.set(name, pos)
		minetest.log("you made it this far")
	end,
})
