dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	--CreateItemActionEntity("moldos_TOME_LAUNCHER", x, y)

	EntityLoad("mods/moldos_arsenal/files/entities/items/pyramidwand/weapon.xml", x, y)
end