dofile_once("mods/moldos_arsenal/files/scripts/utils.lua")
dofile_once("mods/moldos_arsenal/files/scripts/souls.lua")

function death(damage_type_bit_field, damage_message, entity_thats_responsible, drop_items)
    local entity = GetUpdatedEntityID()
    local herd_id_number = ComponentGetValue2( EntityGetFirstComponent( entity, "GenomeDataComponent" ) or 0, "herd_id")
    local herd_id = HerdIdToString(herd_id_number)
    local x, y = EntityGetTransform(entity)

    if not table.contains(soul_types, herd_id) then return end

    SetRandomSeed(x, y)
    math.randomseed(x, y+GameGetFrameNum()+tonumber(StatsGetValue("world_seed")))

    for i=1,3 do
        herd_id = soul_types[math.random(1,#soul_types)]
        if math.random(1,15) == 10 then
            herd_id = "gilded"
        end
        if ModSettingGet("moldos_arsenal.say_soul") == true then
            GamePrint("You have acquired a " .. SoulNameCheck(herd_id) .. " soul!")
        end
        AddSoul(herd_id)
    end
end