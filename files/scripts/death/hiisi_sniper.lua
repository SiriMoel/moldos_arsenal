dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("data/scripts/perks/perk.lua")
dofile_once("mods/moldos_arsenal/files/alterants.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	SetRandomSeed(x, y)    
	math.randomseed(x, y+GameGetFrameNum())

	local r = math.random(1,4)
	if r == 2 then
		EntityLoad("mods/moldos_arsenal/files/entities/items/hiisisniper/weapon.xml", x, y-20)
	end
	
	local rr = math.random(1,4)
	if ModSettingGet( "moldos_arsenal.testing" ) then
        rr = 2
    end
	if rr == 2 then
		SpawnAlterant("SNIPER_KIT", x, y)
	end

	local rrr = math.random(1,6)
	if rrr == 2 then
		CreateItemActionEntity( "moldos_SNIPER_BEAM", x , y )
	end
end