dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("data/scripts/gun/procedural/gun_action_utils.lua")

local weapon = GetUpdatedEntityID()

local x, y = EntityGetTransform(weapon)

AddGunActionPermanent( weapon, "moldos_TOME_BATTERY" )
--AddGunAction( weapon, "moldos_TOME_CHARGE" )
AddGunAction( weapon, "moldos_TOME_SHOT" )