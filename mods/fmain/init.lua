fmain = {}
fmain.path = minetest.get_modpath("fmain")
fmain.LIGHT_MAX = 14
--[[
minetest.register_on_joinplayer(function(player)
	-- Set formspec prepend
	local formspec = [[
			bgcolor[#080808BB;true]
			listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF] ]]
--[[
	local name = player:get_player_name()
	local info = minetest.get_player_information(name)
	if info.formspec_version > 1 then
		formspec = formspec .. "background9[5,5;1,1;gui_formbg.png;true;10]"
	else
		formspec = formspec .. "background[5,5;1,1;gui_formbg.png;true]"
	end
	player:set_formspec_prepend(formspec)

	-- Set hotbar textures
	player:hud_set_hotbar_image("gui_hotbar.png")
	player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
end)
]]

function fmain.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

fmain.gui_survival_form = "size[8,8.5]"..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			fmain.get_hotbar_bg(0,4.25)


--Base operations
dofile(fmain.path .. "/hand.lua")
dofile(fmain.path .. "/functions.lua")
--Nodes and craftitems
dofile(fmain.path .. "/nodes.lua")
dofile(fmain.path .. "/liquids.lua")
dofile(fmain.path .. "/wood.lua")
dofile(fmain.path .. "/furnace.lua")
dofile(fmain.path .. "/chests.lua")
dofile(fmain.path .. "/craftitems.lua")
dofile(fmain.path .. "/torch.lua")
dofile(fmain.path .. "/crafting.lua")
dofile(fmain.path .. "/saplings.lua")
--Mapgen
dofile(fmain.path .. "/biomes.lua")
