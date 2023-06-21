dofile_once("mods/moles_things/files/scripts/utils.lua")

local a = {
    --[[{
		id = "SOLAR_RADAR",
		ui_name = "Solar Radar",
		ui_description = "You can sense nearby suns.",
		ui_icon = "mods/moles_things/files/perk_icons/radar_sun.png",
		perk_icon = "mods/moles_things/files/perk_icons/radar_sun_inworld.png",
		stackable = STACKABLE_NO,
		func = function( entity_perk_item, entity_who_picked, item_name )
			EntityAddComponent(entity_who_picked, "LuaComponent", {
				_tags = "perk_component",
				script_source_file = "mods/moles_things/files/scripts/solar_radar.lua",
				execute_every_n_frame = "1",
			})
		end,
	},]]--
}

for i,v in ipairs(a) do
    v.id = "MNM_" .. v.id
    table.insert(perk_list, v)
end