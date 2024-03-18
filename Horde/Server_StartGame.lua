require('Utilities');

function Server_StartGame (game,standing)
    Pub = Mod.PublicGameData
    Pub.SlotZoms = {}
    Pub.SlotZoms[1] = Mod.Settings.Slot
    local maxauto = 0
    for _,ts in pairs(standing.Territories) do
        if ts.NumArmies.NumArmies == Mod.Settings.Auto and Mod.Settings.Auto > 0 and maxauto <= 50 then
            maxauto = maxauto + 1
            local struc = {}

            struc[Mod.Settings.StructureType] = 1
            ts.Structures = struc
            ts.NumArmies = WL.Armies.Create(2,nil)
        end
    end


    Mod.PublicGameData = Pub
end
