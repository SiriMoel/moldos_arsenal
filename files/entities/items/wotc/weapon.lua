---@diagnostic disable: param-type-mismatch
dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local wand = GetUpdatedEntityID()

AddGunAction( wand, "moldos_SUMMON_SUN" )