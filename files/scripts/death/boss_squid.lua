dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity = GetUpdatedEntityID()
	local x, y = EntityGetTransform(entity)

	EntityLoad("mods/moldos_arsenal/files/entities/items/squidpearl/weapon.xml", x, y)

	--CreateItemActionEntity("moldos_TOME_LOOTER", x, y)

	GameAddFlagRun("ikkuna_squid")
	GamePrint("Trace found!")
end