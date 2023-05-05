ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('HD_Shank', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    if Config.ShankAllowed then
        if Config.ShankItem then
            TriggerClientEvent('HD_Jail:ShankPull', source)
        else
            TriggerClientEvent('HD_Jail:GiveShankie', source)
            xPlayer.removeInventoryItem('HD_Shank', 1)
        end
    end
end)

ESX.RegisterUsableItem('HD_booze', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    if Config.BoozeAllowed then
        if Config.BoozeEffect then
            TriggerClientEvent('HD_Jail:TakeBooze', source)
        end
        TriggerClientEvent('esx_status:add', source, 'thirst', Config.BoozeGive)
        TriggerClientEvent('esx_basicneeds:onEat', source, Config.BoozeProp)
        TriggerClientEvent('HD_Jail:SendNotif', source, Config.Sayings[163])
        xPlayer.removeInventoryItem('HD_booze', 1)
    else
        TriggerClientEvent('HD_Jail:SendNotif', source, Config.Sayings[162])
    end
end)

ESX.RegisterUsableItem('HD_pPunch', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    if Config.PunchAllowed then
        TriggerClientEvent('esx_status:add', source, 'thirst', Config.PunchGive)
        TriggerClientEvent('esx_basicneeds:onEat', source, Config.PunchProp)
        TriggerClientEvent('HD_Jail:SendNotif', source, Config.Sayings[164])
        xPlayer.removeInventoryItem('HD_booze', 1)
    else
        TriggerClientEvent('HD_Jail:SendNotif', source, Config.Sayings[162])
    end
end)
