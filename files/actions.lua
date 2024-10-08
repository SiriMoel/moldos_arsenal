dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")

actions_to_insert = {
	{
		id = "HIISI_SHOTGUN",
		name = "$action_moldos_hiisi_shotgun",
		description = "$actiondesc_moldos_hiisi_shotgun",
        sprite = "mods/moldos_arsenal/files/spell_icons/hiisi_shotgun.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/hiisishotgun/projectile.xml", 3},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "BOMB_CART",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 30,
		action = function()
			local entity = GetUpdatedEntityID()
			local wand = 0
			local inv_comp = EntityGetFirstComponentIncludingDisabled(entity, "Inventory2Component")
			if inv_comp then
				wand = ComponentGetValue2(inv_comp, "mActiveItem")
			end
			if EntityHasTag(wand, "moldos_hiisi_shotgun") then
				--c.damage_critical_chance = c.damage_critical_chance + 5
				c.damage_projectile_add = c.damage_projectile_add + 0.1
			end
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisishotgun/projectile.xml")
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisishotgun/projectile.xml")
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisishotgun/projectile.xml")
			c.spread_degrees = c.spread_degrees + 13.0
		end,
	},
	{
		id = "HIISI_SNIPER",
		name = "$action_moldos_hiisi_sniper",
		description = "$actiondesc_moldos_hiisi_sniper",
        sprite = "mods/moldos_arsenal/files/spell_icons/hiisi_sniper.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/hiisisniper/projectile.xml"},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "MOLDOS_HIISI_SHOTGUN",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 30,
		action = function()
			local entity = GetUpdatedEntityID()
			local wand = 0
			local inv_comp = EntityGetFirstComponentIncludingDisabled(entity, "Inventory2Component")
			if inv_comp then
				wand = ComponentGetValue2(inv_comp, "mActiveItem")
			end
			if EntityHasTag(wand, "moldos_hiisi_sniper") then
				c.damage_critical_chance = c.damage_critical_chance + 5
				c.damage_projectile_add = c.damage_projectile_add + 0.1
			end
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisisniper/projectile.xml")
		end,
	},
	{
		id = "HIISI_PISTOL",
		name = "$action_moldos_hiisi_pistol",
		description = "$actiondesc_moldos_hiisi_pistol",
        sprite = "mods/moldos_arsenal/files/spell_icons/hiisi_pistol.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/hiisipistol/projectile.xml"},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "MOLDOS_HIISI_SNIPER",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 20,
		action = function()
			local entity = GetUpdatedEntityID()
			local wand = 0
			local inv_comp = EntityGetFirstComponentIncludingDisabled(entity, "Inventory2Component")
			if inv_comp then
				wand = ComponentGetValue2(inv_comp, "mActiveItem")
			end
			if EntityHasTag(wand, "moldos_hiisi_pistol") then
				--c.damage_critical_chance = c.damage_critical_chance + 5
				c.damage_projectile_add = c.damage_projectile_add + 0.1
			end
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisipistol/projectile.xml")
		end,
	},
	{
		id = "HIISI_GLUE_SHOT",
		name = "$action_moldos_hiisi_glue_shot",
		description = "$actiondesc_moldos_hiisi_glue_shot",
        sprite = "mods/moldos_arsenal/files/spell_icons/hiisi_glue_shot.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/hiisigluegun/projectile.xml"},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "MOLDOS_HIISI_PISTOL",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 30,
		action = function()
			local entity = GetUpdatedEntityID()
			local wand = 0
			local inv_comp = EntityGetFirstComponentIncludingDisabled(entity, "Inventory2Component")
			if inv_comp then
				wand = ComponentGetValue2(inv_comp, "mActiveItem")
			end
			if EntityHasTag(wand, "moldos_hiisi_glue_gun") then
				--c.damage_critical_chance = c.damage_critical_chance + 5
				c.damage_projectile_add = c.damage_projectile_add + 0.1
				c.speed_multiplier = c.speed_multiplier * 1.05
			end
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisigluegun/projectile.xml")
		end,
	},
	{
		id = "HIISI_POISON_SHOT",
		name = "$action_moldos_hiisi_poison_shot",
		description = "$actiondesc_moldos_hiisi_poison_shot",
        sprite = "mods/moldos_arsenal/files/spell_icons/hiisi_poison_shot.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/hiisipoisongun/projectile.xml"},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "MOLDOS_HIISI_GLUE_SHOT",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 30,
		action = function()
			local entity = GetUpdatedEntityID()
			local wand = 0
			local inv_comp = EntityGetFirstComponentIncludingDisabled(entity, "Inventory2Component")
			if inv_comp then
				wand = ComponentGetValue2(inv_comp, "mActiveItem")
			end
			if EntityHasTag(wand, "moldos_hiisi_poison_gun") then
				--c.damage_critical_chance = c.damage_critical_chance + 5
				c.damage_projectile_add = c.damage_projectile_add + 0.1
				c.speed_multiplier = c.speed_multiplier * 1.05
			end
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisipoisongun/projectile.xml")
		end,
	},
	{
		id = "SNIPER_BEAM",
		name = "$action_moldos_sniper_beam",
		description = "$actiondesc_moldos_sniper_beam",
        sprite = "mods/moldos_arsenal/files/spell_icons/sniper_beam.png",
		type = ACTION_TYPE_PASSIVE,
		inject_after = "MOLDOS_HIISI_SNIPER",
		spawn_level                       = "1,2,3",
		spawn_probability                 = "0.7,0.7,0.7",
		price = 0,
		mana = 0,
		custom_xml_file = "mods/moldos_arsenal/files/entities/misc/sniper_sight.xml",
		action = function()
			draw_actions( 1, true )
		end,
	},
	{
		id = "HIISI_MINE", -- hiisi mine
		name = "$action_moldos_hiisi_mine",
		description = "$actiondesc_moldos_hiisi_mine",
        sprite = "mods/moldos_arsenal/files/spell_icons/hiisi_mine.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/hiisiminethrower/proj.xml"},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "MOLDOS_HIISI_POISON_SHOT",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 40,
		max_uses = 15,
		action = function()
			add_projectile("mods/moldos_arsenal/files/entities/items/hiisiminethrower/proj.xml")
		end,
	},
	{
		id = "ROBOT_FLAME", -- will i ever complete the hiisi weapons?
		name = "$action_moldos_robot_flamer",
		description = "$actiondesc_moldos_robot_flamer",
        sprite = "mods/moldos_arsenal/files/spell_icons/robot_flamer.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/robot_flamethrower/proj.xml"},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "FLAMETHROWER",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 15,
		max_uses = 50,
		action = function()
			add_projectile("mods/moldos_arsenal/files/entities/items/robot_flamethrower/proj.xml")
		end,
	},
	{
		id = "ROBOT_ICE", -- probably not no
		name = "$action_moldos_robot_icer",
		description = "$actiondesc_moldos_robot_icer",
        sprite = "mods/moldos_arsenal/files/spell_icons/robot_icer.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/robot_icethrower/proj.xml"},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "ICEBALL",
		spawn_level = "",
		spawn_probability = "",
		price = 70,
		mana = 15,
		max_uses = 50,
		action = function()
			add_projectile("mods/moldos_arsenal/files/entities/items/robot_icethrower/proj.xml")
		end,
	},
	{
		id = "DETONATOR", -- pyro tf2
		name = "$action_moldos_detonator",
		description = "$actiondesc_moldos_detonator",
        sprite = "mods/moldos_arsenal/files/spell_icons/detonator.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/projectiles/detonator/proj.xml"},
		custom_xml_file="mods/moldos_arsenal/files/entities/misc/card_detonator.xml",
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "MOLDOS_HIISI_MINE",
		spawn_level                       = "3,4,5,6",
		spawn_probability                 = "0.4,0.4,0.7,0.7",
		price = 90,
		mana = 40,
		max_uses = 30,
		action = function()
			add_projectile("mods/moldos_arsenal/files/entities/projectiles/detonator/proj.xml")
		end,
	},
	{
		id          = "WATER_ESSENCE_PROJ",
		name 		= "$action_moldos_wateressence",
		description = "$actiondesc_moldos_wateressence",
		sprite 		= "mods/moldos_arsenal/files/spell_icons/water_essence_proj.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/light_bullet_unidentified.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/items/essencewand_water/proj.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		inject_after = "KANTELE_G",
		spawn_level                       = "",
		spawn_probability                 = "",
		price = 250,
		mana = 20,
		action 		= function()
			add_projectile("mods/moldos_arsenal/files/entities/items/essencewand_water/proj.xml")
			c.fire_rate_wait = c.fire_rate_wait + 60
		end,
	},
	{
		id = "ROCKET_ROLL",
		name = "$action_moldos_rocket_roll",
		description = "$actiondesc_moldos_rocket_roll",
        sprite = "mods/moldos_arsenal/files/spell_icons/rocket_roll.png",
		related_projectiles	= { "mods/moldos_arsenal/files/entities/items/mechakolmiwand/rocket_roll.xml", 5},
		type = ACTION_TYPE_PROJECTILE,
		inject_after = "MISSILE",
		spawn_level = "",
		spawn_probability = "",
		price = 100,
		mana = 100,
		max_uses = 10,
		action = function()
			add_projectile("mods/moldos_arsenal/files/entities/items/mechakolmiwand/rocket_roll.xml")
			add_projectile("mods/moldos_arsenal/files/entities/items/mechakolmiwand/rocket_roll.xml")
			add_projectile("mods/moldos_arsenal/files/entities/items/mechakolmiwand/rocket_roll.xml")
			add_projectile("mods/moldos_arsenal/files/entities/items/mechakolmiwand/rocket_roll.xml")
			add_projectile("mods/moldos_arsenal/files/entities/items/mechakolmiwand/rocket_roll.xml")
		end,
	},
	{
		id          = "HEALING_ARROW", -- it could be a tf2 reference
		name 		= "$action_moldos_healingarrow",
		description = "$actiondesc_moldos_healingarrow",
		sprite 		= "mods/moldos_arsenal/files/spell_icons/healing_arrow.png",
		related_projectiles	= {"mods/moldos_arsenal/files/entities/projectiles/healing_arrow/proj.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		inject_after = "ARROW",
		spawn_level                       = "2,3,4,5",
		spawn_probability                 = "0.3,0.6,0.8,0.8",
		price = 70,
		mana = 20,
		max_uses = 20,
		never_unlimited = true,
		action 		= function()
			add_projectile("mods/moldos_arsenal/files/entities/projectiles/healing_arrow/proj.xml")
			c.fire_rate_wait = c.fire_rate_wait + 8
			c.spread_degrees = c.spread_degrees - 10
			shot_effects.recoil_knockback = 15.0
		end,
	},
}

for i,v in ipairs(actions_to_insert) do
	v.id = "MOLDOS_" .. v.id
	table.insert(actions, v)
end