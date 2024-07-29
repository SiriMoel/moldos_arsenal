
dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
local nxml = dofile_once("mods/moldos_arsenal/lib/nxml.lua")

--[[if ModSettingGet("moldos_arsenal.alt_map") then
    ModMagicNumbersFileAdd( "mods/moldos_arsenal/files/magic_numbers.xml" )
end]]

-- set & append
ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/moldos_arsenal/files/actions.lua" )
--ModLuaFileAppend( "data/scripts/biome/temple_altar_left.lua", "mods/moldos_arsenal/files/scripts/temple_altar_left_things.lua" )
--ModLuaFileAppend( "data/scripts/biome/temple_altar_left_empty.lua", "mods/moldos_arsenal/files/scripts/temple_altar_left_things.lua" )
ModLuaFileAppend( "data/scripts/gun/gun.lua", "mods/moldos_arsenal/files/scripts/gun_append.lua" )
--ModLuaFileAppend( "data/scripts/biomes/orbrooms/orbroom_07.lua", "mods/moldos_arsenal/files/scripts/orbroom_07_append.lua" )

-- enemies
--drops etc
local dropdoers = {
    {
        path = "data/entities/animals/shotgunner.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_shotgunner.lua",
    },
    {
        path = "data/entities/animals/sniper.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_sniper.lua",
    },
    {
        path = "data/entities/animals/scavenger_smg.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_pistol.lua",
    },
    {
        path = "data/entities/animals/scavenger_glue.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_glue.lua",
    },
    {
        path = "data/entities/animals/scavenger_poison.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_poison.lua",
    },
    {
        path = "data/entities/animals/scavenger_mine.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_mine.lua",
    },
    {
        path = "data/entities/animals/lukki/lukki_dark.xml",
        script = "mods/moldos_arsenal/files/scripts/death/dark_lukki.lua",
    },
    {
        path = "data/entities/animals/shotgunner_hell.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_shotgunner.lua",
    },
    {
        path = "data/entities/animals/sniper_hell.xml",
        script = "mods/moldos_arsenal/files/scripts/death/hiisi_sniper.lua",
    },
    {
        path = "data/entities/animals/flamer.xml",
        script = "mods/moldos_arsenal/files/scripts/death/robot_flamer.lua",
    },
    {
        path = "data/entities/animals/icer.xml",
        script = "mods/moldos_arsenal/files/scripts/death/robot_icer.lua",
    },
}

for i,v in ipairs(dropdoers) do
    local xml = nxml.parse(ModTextFileGetContent(v.path))
    xml:add_child(nxml.parse(([[
        <LuaComponent
              script_death="%s"
              >
        </LuaComponent>
    ]]):format(v.script)))
    ModTextFileSetContent(v.path, tostring(xml))
end

local wizards = {
    "data/entities/animals/wizard_dark.xml",
    "data/entities/animals/wizard_hearty.xml",
    "data/entities/animals/wizard_homing.xml",
    "data/entities/animals/wizard_neutral.xml",
    "data/entities/animals/wizard_poly.xml",
    "data/entities/animals/wizard_returner.xml",
    "data/entities/animals/wizard_swapper.xml",
    "data/entities/animals/wizard_tele.xml",
    "data/entities/animals/wizard_twitchy.xml",
    "data/entities/animals/wizard_weaken.xml",
    "data/entities/animals/monk.xml",
    "data/entities/animals/kupoli_soul_angry.xml",
    "data/entities/animals/kupoli_puppet_master.xml",
}
for i,v in ipairs(wizards) do
    if ModTextFileGetContent(v) ~= nil then
        local xml = nxml.parse(ModTextFileGetContent(v))
        xml:add_child(nxml.parse([[
            <LuaComponent
                script_death="mods/moldos_arsenal/files/scripts/death/wizards.lua"
                >
            </LuaComponent>
        ]]))
        ModTextFileSetContent(v, tostring(xml))
    end
end

-- player
function OnPlayerSpawned( player )

    dofile_once("mods/moldos_arsenal/files/scripts/souls.lua")

    dofile_once("mods/moldos_arsenal/files/gui.lua")

    local px, py = EntityGetTransform(player)

    if GameHasFlagRun("moldos_arsenal_init") then return end

    GameAddFlagRun("moldos_arsenal_init")
end

--translations
local translations = ModTextFileGetContent( "data/translations/common.csv" );
if translations ~= nil then
    while translations:find("\r\n\r\n") do
        translations = translations:gsub("\r\n\r\n","\r\n");
    end

    local new_translations = ModTextFileGetContent( table.concat({"mods/moldos_arsenal/files/translations.csv"}) );
    translations = translations .. new_translations;

    ModTextFileSetContent( "data/translations/common.csv", translations );
end