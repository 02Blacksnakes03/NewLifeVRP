local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj  end)

ESX.RegisterServerCallback("Admin:getRankFromPlayer", function(source, cb)
    local player = ESX.GetPlayerFromId(source)

    if player ~= nil then
        local playerGroup = player.getGroup()

        if playerGroup ~= nil then 
            cb(playerGroup)
        else
            cb("user")
        end
    else
        cb("user")
    end
end)

TriggerEvent("es:addGroupCommand", "aduty", "support", function(source, args)
    TriggerClientEvent("toggleDuty", source)
end, function(source, args)
	--TriggerClientEvent("chatMessage", source, "🤖^7» ^8Support ^7| Du hast keine Rechte ^7.")
	TriggerEvent('notifications', "#f1f1f1", "Support", "Du hast keine Rechte!")
end)