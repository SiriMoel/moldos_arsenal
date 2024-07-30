---@diagnostic disable: param-type-mismatch
dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

function get_random_from( target )
	local rnd = Random(1, #target)
	
	return tostring(target[rnd])
end

function get_multiple_random_from( target, amount_ )
	local amount = amount_ or 1
	
	local result = {}
	
	for i=1,amount do
		local rnd = Random(1, #target)
		
		table.insert(result, tostring(target[rnd]))
	end
	
	return result
end

function get_random_between_range( target )
	local minval = target[1]
	local maxval = target[2]
	
	return Random(minval, maxval)
end

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
SetRandomSeed( x, y + GameGetFrameNum() )

local ability_comp = EntityGetFirstComponent( entity_id, "AbilityComponent" )

local gun = { }
gun.name = {"Souls wand"}
gun.deck_capacity = 21
gun.actions_per_round = 1
gun.reload_time = {20,27}
gun.shuffle_deck_when_empty = 0
gun.fire_rate_wait = {2,7}
gun.spread_degrees = -1
gun.speed_multiplier = 1.3
gun.mana_charge_speed = {500,650}
gun.mana_max = {900,1100}
gun.actions_mod = {"moldos_SOULS_TO_POWER","moldos_REAPING_SHOT","moldos_SOUL_IS_MANA", "moldos_SOUL_SPEED", "moldos_RANDOM_REAP", "moldos_SOULDOS"}
gun.actions_proj = {"moldos_SOUL_BLAST","moldos_SOUL_BALL","moldos_SOUL_NECROMANCY", "moldos_SOUL_ARROW"}

local mana_max = get_random_between_range( gun.mana_max )
local deck_capacity = gun.deck_capacity

ComponentSetValue( ability_comp, "ui_name", get_random_from( gun.name ) )

ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", get_random_between_range( gun.reload_time ) )
ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", get_random_between_range( gun.fire_rate_wait ) )
ComponentSetValue( ability_comp, "mana_charge_speed", get_random_between_range( gun.mana_charge_speed) )

ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", gun.actions_per_round )
ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", deck_capacity )
ComponentObjectSetValue( ability_comp, "gun_config", "shuffle_deck_when_empty", gun.shuffle_deck_when_empty )
ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", gun.spread_degrees )
ComponentObjectSetValue( ability_comp, "gunaction_config", "speed_multiplier", gun.speed_multiplier )

ComponentSetValue( ability_comp, "mana_max", mana_max )
ComponentSetValue( ability_comp, "mana", mana_max )

local action_count = 1
local gun_action_mod = get_random_from( gun.actions_mod )
local gun_action_proj = get_random_from( gun.actions_proj )

for i=1,action_count do
	AddGunAction( entity_id, gun_action_mod )
end

for i=1,action_count do
	AddGunAction( entity_id, gun_action_proj )
end

AddGunActionPermanent( entity_id, "moldos_REAPING_SHOT" )

local item_comp = EntityGetFirstComponent( entity_id, "ItemComponent" )
ComponentSetValue2( item_comp, "item_name", "Wand of Souls" )
ComponentSetValue2( item_comp, "always_use_item_name_in_ui", true )