--[[
Create list of nodes to ignore, then have the function iterate through it and if it hits one, return
furnace and related
y

]]

minetest.register_tool("fmining:ruby_pic", {
	description = "Ruby Pickaxe",
	inventory_image = "fmining_ruby_pic.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.8, [2]=1.5, [3]=2.5}, uses=150},
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
	if minetest.get_item_group(oldnode.name, "unsilktouchable") > 0 then
		return
	end
	if digger:get_wielded_item():get_name() == "fmining:ruby_pic" then
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
			local oldn = oldnode.name
			local items = minetest.get_node_drops(oldn)
			local first_item = items[1]
			if not first_item then
				return
			end
			if first_item == oldn then
				return
			end
			for _,item in ipairs(items) do
				inv:remove_item("main", item)
			end
			inv:add_item("main", oldn)
		end
	end

end)
