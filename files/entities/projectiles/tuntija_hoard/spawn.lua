dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )

SetRandomSeed( GameGetFrameNum() + GetUpdatedComponentID(), pos_x + pos_y + entity_id )

local x = pos_x + Random( -200, 200 )
local y = pos_y + Random( -200, 200 )

local eid = EntityLoad( "mods/moldos_arsenal/files/entities/animals/tuntija_hoard/boss_pit.xml", x, y )

GameScreenshake( 30 )