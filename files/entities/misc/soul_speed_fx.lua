dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("mods/moldos_arsenal/files/scripts/souls.lua")

local entity_id = GetUpdatedEntityID()
local root_id = EntityGetRootEntity( entity_id )
local x, y = EntityGetTransform( entity_id )

local effect_id = EntityLoad("mods/moldos_arsenal/files/entities/particles/souls_to_power.xml", x, y)
EntityAddChild( root_id, effect_id )