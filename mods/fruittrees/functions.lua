fruittrees.register_bushlike = function(name, def)
	local mname = name:split(":")[1]
	local bname = name:split(":")[2]

	if not def.growtime then
		def.growtime = {300, 1500} --Growtime must always be a table with two values, low and high bound for random, make them equal for a set time
	end

	if def.make_drop2 then
		local mname = def.make_drop2:split(":")[1]
		local dname = def.make_drop2:split(":")[2]
		minetest.register_craftitem(":" .. def.make_drop2, {
			description = def.make_drop2_desc or string.gsub(" " .. dname:gsub("_", " "):gsub("^%l", string.upper), "%W%l", string.upper):sub(2),
			inventory_image = mname .. "_" .. dname .. ".png",
		})
	end

	if def.drop == "self" then
		def.drop = name
	end

	--Fruitless bush
	minetest.register_node(":" .. name, {
		description = def.description,
		drawtype = def.drawtype or "allfaces_optional",
		tiles = def.tiles or {mname .. "_" .. bname .. ".png"},
		paramtype = "light",
		groups = def.groups or {snappy = 3, flammable = 2, leaves = 1},
		drop = def.drop or {
							max_items = 1,
							items = {
								{items = {name .. "_sapling"}, rarity = 5},
								{items = {name}}
								}
							},
		sounds = def.sounds or nil,

		on_timer = function(pos, elapsed)
			if def.lightreq then
				if minetest.get_node_light(pos) < def.lightreq then
					minetest.get_node_timer(pos):start(math.random(def.growtime[1], def.growtime[2]))
					return
				end
			end
			minetest.set_node(pos, {name = name .. "_fruit"})
		end,
		
		after_place_node = def.apn_func or nil,
	})
	--name
	--default texture names and overrides
	--regrow time and defaults
	
	--Fruit Bush
	--[[
	if def.groups then
		table.insert(def.groups, dig_immediate = 3)
	end]]
	
	minetest.register_node(":" .. name .. "_fruit", {
		description = def.description2 or def.description .. " with Fruit",
		drawtype = def.drawtype or "allfaces_optional",
		tiles = def.tiles2 or {mname .. "_" .. bname .. ".png^" .. mname .. "_" .. bname .. "_fruit.png"},
		paramtype = "light",
		groups = def.groups2 or def.groups or {snappy = 3, flammable = 2, leaves = 1, dig_immediate = 3}, --if you do not use dig_immediate it will be strange
		drop = def.make_drop2 or def.drop2 or nil, --make_drop2 creates the item for you, drop2 just puts it in, and nil gives you nothing
		sounds = def.sounds or nil,

		node_dig_prediction = name, --maybe add customization here at some point

		after_dig_node = function(pos, oldname, oldmetadata, digger)
			minetest.set_node(pos, {name = name})
			minetest.get_node_timer(pos):start(math.random(def.growtime[1], def.growtime[2]))

		end,
		
		
	})
	--in port minetest.get_modpath("fmain") check this
	if def.trunk and def.radius then --runs leafdecay if you define trunk and radius
		local trunk_timer = false
		def.leaves = {name, name .. "_fruit"}
		assert(def.leaves)
		assert(def.trunk)
		assert(def.radius)
		for _, v in pairs(def.trunk) do
			minetest.override_item(v, {
				after_destruct = function(pos, oldnode)
					for _, v in pairs(minetest.find_nodes_in_area(vector.subtract(pos, def.radius),
							vector.add(pos, def.radius), def.leaves)) do
						local node = minetest.get_node(v)
						local timer = minetest.get_node_timer(v)
						if node.param2 ~= 1 then --if node.param2 ~= 1 and not timer:is_started() then
							timer:start(math.random(20, 120) / 10)
							trunk_timer = true
						end
					end
				end,
			})
		end
		for _, v in pairs(def.leaves) do
			minetest.override_item(v, {
				on_timer = function(pos)
					if v == name .. "_fruit" then
						fmain.leafdecay_on_timer(pos, def)
--[[						
						if def.lightreq then
							if minetest.get_node_light(pos) < def.lightreq then
								minetest.get_node_timer(pos):start(math.random(def.growtime[1], def.growtime[2]))
								return
							end
						end

]]

					else
						if not minetest.find_node_near(pos, def.radius, def.trunk) then
							fmain.leafdecay_on_timer(pos, def)
						elseif trunk_timer then
							minetest.get_node_timer(pos):start(math.random(def.growtime[1], def.growtime[2]))
							trunk_timer = false
						else
							minetest.set_node(pos, {name = name .. "_fruit"})
						end
					end
				end,
			})
		end
	end

end
