-- Leaked By: FiveShop https://discord.gg/KqBezd3Kpf
ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
    
    PlayerData = ESX.GetPlayerData()
    
end)