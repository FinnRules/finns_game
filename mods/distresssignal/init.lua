--[[
local function findSpace(user)
	local pos = user:get_pos()
	local vm = minetest.get_voxel_manip()
	local emin, emax = vm:read_from_map({x = pos.x, y = -10, z = pos.z}, {x = pos.x, y = 1000, z = pos.z})
	local a = VoxelArea:new{
		MinEdge = emin,
		MaxEdge = emax
	}
	local data = vm:get_data()

	local idx = a:index(pos.x, pos.y - 2, pos.z)

	local CID_air = minetest.get_content_id("air")

	for i in pairs(data) do
		print(i)
		local idx = a:index(pos.x, pos.y - 10 + i, pos.z)
		if data[idx] == CID_air then
			minetest.log("air found " .. pos.y - 10 + i)
			local idx_2 = a:index(pos.x, pos.y - 9 + i, pos.z)
			if data[idx_2] == CID_air then
				minetest.log("air found again " .. pos.y - 9 + i)
				user:set_pos({x = pos.x, y = pos.y - 10 + i, z = pos.z})
				minetest.log("you made it this far")
				return
			end
		end
	end
	minetest.log("no air found somehow")

	
	
end


local function findSpaceFromTop(user)
	local pos = user:get_pos()
	local vm = minetest.get_voxel_manip()
	local emin, emax = vm:read_from_map({x = pos.x, y = -10, z = pos.z}, {x = pos.x, y = 23000, z = pos.z})
	local a = VoxelArea:new{
		MinEdge = emin,
		MaxEdge = emax
	}
	local data = vm:get_data()

	local CID_air = minetest.get_content_id("air")
	local CID_ignore = minetest.get_content_id("ignore")

	for i in pairs(data) do
		local idx = a:index(pos.x, 23000 - i, pos.z)
--		minetest.log("idx: " .. data[idx])
		minetest.log("idx (realname): " .. minetest.get_name_from_content_id(data[idx]))
		minetest.log("CID_air: " .. CID_air)
		
		if data[idx] ~= CID_air and data[idx] ~= CID_ignore then
			minetest.log("solid ground found @ " .. 23002 - i)
			user:set_pos({x = pos.x, y = 23002 - i, z = pos.z})
			return
		end
	end
	minetest.log("no air found somehow")

	
end
]]

local function findSpaceFromMiddle(user)
	local pos = vector.round(user:get_pos())
	local vm = minetest.get_voxel_manip()
	local emin, emax = vm:read_from_map({x = pos.x, y = -10, z = pos.z}, {x = pos.x, y = 200, z = pos.z})
	local a = VoxelArea:new{
		MinEdge = emin,
		MaxEdge = emax
	}
	local data = vm:get_data()

	local CID_air = minetest.get_content_id("air")
	local CID_ignore = minetest.get_content_id("ignore")

	for i=0, 200, 1 do --if it's all nodes through 200 you are out of luck lol
		local idx = a:index(pos.x, 200 - i, pos.z)
		
		if data[idx] ~= CID_air and data[idx] ~= CID_ignore then
--			user:set_pos({x = pos.x, y = 100 - i, z = pos.z})
		local idx2 = a:index(pos.x, 199 - i, pos.z)
		if data[idx2] ~= CID_air and data[idx2] ~= CID_ignore then
--			local idx3, idx4 = a:index(pos.x, 201 - i, pos.z), a:index(pos.x, 202 - i, pos.z) --Checks to make sure that the player is not going to be forced to spawn inside solid ground
--			if idx3 == CID_air and idx4 == CID_air then
			user:set_pos({x = pos.x, y = 201 - i, z = pos.z})
			return
		end
		else
			--Send message to user
		end
	end
--	minetest.log("no air found somehow")
	
end


minetest.register_craftitem("distresssignal:signal", {
	description = "Distress Signal",
	inventory_image = "distresssignal_signal.png",
	on_use = function(itemstack, user)
		findSpaceFromMiddle(user)

		itemstack:take_item()
		return itemstack
		
		
	end
})

minetest.register_craft({
	output = "distresssignal:signal",
	recipe = {
		{"", "fmining:silver_nugget", ""},
		{"fmining:silver_nugget", "fmining:opal", "fmining:silver_nugget"},
		{"", "fmining:silver_nugget", ""}
	}
})
