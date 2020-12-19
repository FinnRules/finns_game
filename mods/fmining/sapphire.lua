minetest.register_tool("fmining:sapphire_pic", {
	description = "Sapphire Pickaxe",
	inventory_image = "fmining_sapphire_pic.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=3, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
minetest.register_on_dignode(function(pos, oldnode, digger)
	if digger == nil then
		return
	end
	if minetest.get_item_group(oldnode.name, "ore") == 0 then --checks to make sure it's an ore
		return
	end
	if digger:get_wielded_item():get_name() == "fmining:sapphire_pic" then
		local inv = digger:get_inventory()
		if inv then
			local free_slots = 0
			for _,i in pairs(inv:get_list("main")) do
				if i:get_count() == 0 then
						free_slots = free_slots+1
						break
				end
			end
			if free_slots == 0 then
				return
			end
--			local oldn = oldnode.name
			local items = minetest.get_node_drops(oldnode.name)
			local first_item = items[1]
			if not first_item then
				return
			end
--			if first_item == oldn then
--				return
--			end
--[[
			for _,item in ipairs(items) do
				inv:remove_item("main", item)
			end
]]
--			inv:add_item("main", oldn)
			if math.random(2) == 1 then
				inv:add_item("main", first_item)

			end
		end
	end

end)
