dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("data/scripts/gun/procedural/gun_action_utils.lua")

local weapon = GetUpdatedEntityID()

local x, y = EntityGetTransform(weapon)

AddGunAction( weapon, "moldos_REAPING_SHOT" )
AddGunAction( weapon, "HOMING" )
AddGunAction( weapon, "SPITTER_TIMER" )
AddGunAction( weapon, "HOMING" )
AddGunAction( weapon, "ADD_TRIGGER" )
AddGunAction( weapon, "moldos_REAPING_HALO" )
AddGunAction( weapon, "ELECTRIC_CHARGE" )
AddGunAction( weapon, "PINGPONG_PATH" )
AddGunAction( weapon, "BURST_3" )
AddGunAction( weaopn, "ARC_ELECTRIC" )
AddGunAction( weapon, "DISC_BULLET_BIG" )
AddGunAction( weapon, "DISC_BULLET_BIG" )
AddGunAction( weapon, "moldos_REAPING_HALO" )