dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")

GamePrint("a")

local entity = GetUpdatedEntityID()

GamePrint(EntityGetName(entity))

local parent = EntityGetParent(entity)

GamePrint(EntityGetName(parent))