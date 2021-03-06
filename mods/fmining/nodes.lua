minetest.register_node("fmining:coal_ore", {
	description = "Coal Ore",
	tiles = {"fmain_stone.png^fmining_coal_ore.png"},
	groups = {cracky = 2, ore = 1},
	drop = "fmining:coal",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("fmining:rich_coal_ore", {
	description = "Rich Coal Ore",
	tiles = {"fmain_stone.png^fmining_rich_coal_ore.png"},
	groups = {cracky = 2, ore = 1},
	drop = "fmining:coal 2",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:coal",{
	description = "Coal",
	inventory_image = "fmining_coal.png",
})

minetest.register_node("fmining:iron_ore", {
	description = "Iron Ore",
	tiles = {"fmain_stone.png^fmining_iron_ore.png"},
	groups = {cracky = 3, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:iron_ingot", {
	description = "Iron Ingot",
	inventory_image = "fmining_iron_ingot.png",
	groups = {iron_ingot = 1}
})

minetest.register_craftitem("fmining:pig_iron_ingot", {
	description = "Pig Iron Ingot",
	inventory_image = "fmining_pig_iron_ingot.png",
	groups = {iron_ingot = 1}
})

minetest.register_node("fmining:copper_ore", {
	description = "Copper Ore",
	tiles = {"fmain_stone.png^fmining_copper_ore.png"},
	groups = {cracky = 2, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:copper_ingot", {
	description = "Copper Ingot",
	inventory_image = "fmining_copper_ingot.png"
})

minetest.register_craftitem("fmining:bronze_ingot", {
	description = "Bronze Ingot",
	inventory_image = "fmining_bronze_ingot.png",
})

minetest.register_node("fmining:silver_ore", {
	description = "Silver Ore",
	tiles = {"fmain_stone.png^fmining_silver_ore.png"},
	groups = {cracky = 3, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:silver_ingot",{
	description = "Silver Ingot",
	inventory_image = "fmining_silver_ingot.png",	
})

minetest.register_craftitem("fmining:silver_nugget",{
	description = "Silver Nugget",
	inventory_image = "fmining_silver_nugget.png",	
})

minetest.register_node("fmining:gold_ore", {
	description = "Gold Ore",
	tiles = {"fmain_stone.png^fmining_gold_ore.png"},
	groups = {cracky = 3, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:gold_ingot", {
	description = "Gold Ingot",
	inventory_image = "fmining_gold_ingot.png"
})

minetest.register_craftitem("fmining:gold_nugget", {
	description = "Gold Nugget",
	inventory_image = "fmining_gold_nugget.png"
})

minetest.register_node("fmining:sapphire_ore", {
	description = "Sapphire Ore",
	tiles = {"fmain_stone.png^fmining_sapphire_ore.png"},
	groups = {cracky = 4, ore = 1},
	drop = "fmining:sapphire",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:sapphire", {
	description = "Sapphire",
	inventory_image = "fmining_sapphire.png",
})

minetest.register_node("fmining:emerald_ore", {
	description = "Emerald Ore",
	tiles = {"fmain_stone.png^fmining_emerald_ore.png"},
	groups = {cracky = 4, ore = 1},
	drop = "fmining:emerald",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:emerald",{
	description = "Emerald",
	inventory_image = "fmining_emerald.png",
})
minetest.register_node("fmining:ruby_ore", {
	description = "Ruby Ore",
	tiles = {"fmain_stone.png^fmining_ruby_ore.png"},
	groups = {cracky = 4, ore = 1},
	drop = "fmining:ruby",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:ruby", {
	description = "Ruby",
	inventory_image = "fmining_ruby.png",
})

minetest.register_node("fmining:lapis_ore", {
	description = "Lapis Lazuli Ore",
	tiles = {"fmain_stone.png^fmining_lapis_ore.png"},
	groups = {cracky = 3, ore = 1},
	drop = "fmining:lapis 3",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:lapis", {
	description = "Lapis Lazuli",
	inventory_image = "fmining_lapis.png",
})

minetest.register_node("fmining:tungsten_ore", {
	description = "Tungsten Ore",
	tiles = {"fmain_stone.png^fmining_tungsten_ore.png"},
	groups = {cracky = 5, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:tungsten_ingot",{
	description = "Tungsten Ingot",
	inventory_image = "fmining_tungsten_ingot.png",	
})

minetest.register_craftitem("fmining:tungsten_carbide_ingot",{
	description = "Tungsten Carbide Ingot",
	inventory_image = "fmining_tungsten_carbide_ingot.png",	
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"fmain:flint", "fmining:tungsten_ingot"},
	output = "fmining:tungsten_carbide_ingot",
})

minetest.register_node("fmining:opal_ore", {
	description = "Opal Ore",
	tiles = {"fmain_stone.png^fmining_opal_ore.png"},
	groups = {cracky = 3, ore = 1},
	drop = "fmining:opal",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:opal", {
	description = "Opal",
	inventory_image = "fmining_opal.png",
})

minetest.register_node("fmining:tin_ore", {
	description = "Tin Ore",
	tiles = {"fmain_stone.png^fmining_tin_ore.png"},
	groups = {cracky = 2, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:tin_ingot", {
	description = "Tin Ingot",
	inventory_image = "fmining_tin_ingot.png",
})

minetest.register_node("fmining:diamond_ore", {
	description = "Diamond Ore",
	tiles = {"fmain_stone.png^fmining_diamond_ore.png"},
	groups = {cracky = 4, ore = 1},
	drop = "fmining:diamond",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:diamond", {
	description = "Diamond",
	inventory_image = "fmining_diamond.png",
})

minetest.register_node("fmining:violettam_ore", {
	description = "Violettam Ore",
	tiles = {"fmain_bluestone.png^fmining_violettam_ore.png"},
	groups = {cracky = 5, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("fmining:gingrium_ore", {
	description = "Gingrium Ore",
	tiles = {"fmain_bluestone.png^fmining_gingrium_ore.png"},
	groups = {cracky = 5, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("fmining:uranium_ore", {
	description = "Uranium Ore",
	tiles = {"fmain_stone.png^fmining_uranium_ore.png"},
	groups = {cracky = 4, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:uranium_ingot", {
	description = "Uranium Ingot",
	inventory_image = "fmining_uranium_ingot.png",
})

minetest.register_node("fmining:lead_ore", {
	description = "Lead Ore",
	tiles = {"fmain_stone.png^fmining_lead_ore.png"},
	groups = {cracky = 2, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("fmining:lead_ingot", {
	description = "Lead Ingot",
	inventory_image = "fmining_lead_ingot.png",
})

minetest.register_node("fmining:thorium_ore", {
	description = "Thorium Ore",
	tiles = {"fmain_stone.png^fmining_thorium_ore.png"},
	groups = {cracky = 6, ore = 1},
--	drop = "default:coal_lump",
--	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("fmining:thorium_ingot", {
	description = "Thorium Ingot",
	inventory_image = "fmining_thorium_ingot.png",
})

minetest.register_node("fmining:lapis_block", {
	description = "Lapis Lazuli Block",
	tiles = {"fmining_lapis_block.png"},
	groups = {cracky = 3},
})

minetest.register_node("fmining:polished_lapis_block", {
	description = "Polished Lapis Lazuli Block",
	tiles = {"fmining_polished_lapis_block.png"},
	groups = {cracky = 3},
})

minetest.register_craft({
	output = "fmining:lapis_block",
	recipe = {
		{"fmining:lapis", "fmining:lapis", "fmining:lapis"},
		{"fmining:lapis", "fmining:lapis", "fmining:lapis"},
		{"fmining:lapis", "fmining:lapis", "fmining:lapis"}
	}
})

minetest.register_craft({
	output = "fmining:polished_lapis_block 4",
	recipe = {
		{"fmining:lapis_block", "fmining:lapis_block"},
		{"fmining:lapis_block", "fmining:lapis_block"},
	}
})

minetest.register_craft({
	type = "shapeless",
	recipe = {"fmining:lapis_block"},
	output = "fmining:lapis 9"
})
