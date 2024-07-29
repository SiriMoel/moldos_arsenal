dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("mods/moldos_arsenal/files/scripts/molebiomes.lua")

if g_small_enemies == nil then return end

table.insert(g_small_enemies, {
    prob = 0.15,
    min_count = 1,
    max_count = 1,
    entity = "mods/moldos_arsenal/files/entities/moles/spawner.xml",
})