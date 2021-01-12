ffood = {}
ffood.path = minetest.get_modpath("ffood")

minetest.override_item("overproduced:habanero", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:eggplant", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:cabbage", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:garlic", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:white_onion", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:red_onion", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:yellow_onion", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:tomato", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:carrot", {
	on_use = minetest.item_eat(4)
})

minetest.override_item("overproduced:seed_potato", {
	on_use = minetest.item_eat(4)
})
