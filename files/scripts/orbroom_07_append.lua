dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")

local init_old = init

RegisterSpawnFunction(0xfff1a275, "sunbook")

function init( x, y, w, h )
    init_old( x, y, w, h)
    LoadPixelScene( "mods/moldos_arsenal/files/biome/sunlab/sunlab.png", "mods/moldos_arsenal/files/biome/sunlab/sunlab_visual.png", x, y + 512, "mods/moldos_arsenal/files/biome/sunlab/sunlab_background.png", true )
    EntityLoad("mods/moldos_arsenal/files/sunbook/item/item.xml", 4352, 1230)
end

function sunbook(x, y)
    EntityLoad("mods/moldos_arsenal/files/sunbook/item/item.xml", x, y)
end