local unlocked_door_hashes = {
    ----Blackwater
    3277501452,----------- Clothing room
    531022111,----------- Bank Front
    2117902999,----------- Bank Gate
    2817192481,----------- Bank Office
    ---Rhodes
    2432590327,----------- Clothing room
    3088209306,----------- Bank Main
    3317756151,----------- Bank Main
    2058564250,----------- Bank Office Front
    --3142122679,----------- Bank Office Back--needs gate also, cannot find hash for gate
    ----Valentine
    3886827663,----------- Bank Main
    2642457609,----------- Bank Main
    1340831050,----------- Bank gates
    2343746133,----------- Bank gates
    334467483,----------- Bank Office
    3718620420,----------- Bank Office
    2307914732,----------- Bank Back Door
    ----Saint Denis
    --Bank
    1733501235,--entry door
    2089945615,--entry door
    2158285782,--entry door
    2817024187,--entry door
    965922748,--Managers door
    1634115439,--Managers door
    1751238140,--Vault
    --Clothing Store
    3804893186,--Dressing Room

    }

AddEventHandler('onClientMapStart', function()
    Citizen.CreateThread(function()
     for k,v in pairs(unlocked_door_hashes) do 
         Citizen.InvokeNative(0xD99229FE93B46286, v, 1, 0, 0, 0, 0, 0)
        DoorSystemSetDoorState(v, 0)
        end
    end)
end)

