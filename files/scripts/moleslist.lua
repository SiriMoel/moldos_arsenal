dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("mods/moldos_arsenal/files/scripts/molebiomes.lua")

moles = {
    {
        id = "mole",
        file = "mods/moldos_arsenal/files/entities/moles/mole/mole.xml",
        tier = 0,
        spawn_check = function(x, y, biome)
            return true -- no special spawn condition
        end,
    },
}