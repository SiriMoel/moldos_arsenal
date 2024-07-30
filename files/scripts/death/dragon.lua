dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity = GetUpdatedEntityID()
	local x, y = EntityGetTransform(entity)

	EntityLoad("mods/moldos_arsenal/files/entities/revived/_tablets/dragon.xml", x, y)

	EntityLoad("mods/moldos_arsenal/files/entities/items/dragonwand/weapon.xml", x, y)

	--CreateItemActionEntity("moldos_TOME_SLICE", x, y)

	GameAddFlagRun("ikkuna_dragon")
	GamePrint("Trace found!")
end