fdoors.register("maple_door", {
		tiles = {{ name = "fdoors_maple_door.png", backface_culling = true }},
		description = "Maple Door",
		inventory_image = "doors_item_wood.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		recipe = {
			{"group:wood", "group:wood"},
			{"group:wood", "group:wood"},
			{"group:wood", "group:wood"},
		}
})
