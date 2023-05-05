local thirst, hunger, voice, money, black_money, speed, fuel, isTalking, muted, funk, admin = 0,0,8,0,0,0,0,false,false,false,false
   
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(500)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    ESX.PlayerData = ESX.GetPlayerData()
     
end)


RegisterNetEvent('startShowHud')
AddEventHandler('startShowHud', function()
    Wait(1000)
    StartShowHudThread()
end)

local inVehicle = false

function StartShowHudThread()
    Citizen.CreateThread(function()
        while(true) do
            admin = admin
            inVehicle = IsPedInAnyVehicle(PlayerPedId(), true)
                for k,v in ipairs(ESX.GetPlayerData().accounts) do
                    if v.name == "black_money" then
                        black_money = v.money
                    end
                end 
            funk = exports.saltychat:GetRadioChannel(true)
            if funk ~= nil then
                radioFunk = true
                --funkType = 1  
            else
                radioFunk = false
                funkType = 1
            end
             
            for k,v in ipairs(ESX.GetPlayerData().accounts) do
                if v.name == "money" then
                    money = v.money
                end
            end

            Citizen.Wait(2000)
        end
    end)
end

RegisterNetEvent('setDefaultRadioType')
AddEventHandler('setDefaultRadioType', function()
    funkType = 1
end)


Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(200)
        ----print(radioFunk)
        ----print(funkType)
        SendNUIMessage({
            action = "updatePlayerPanel", 
            money = money,
            blackmoney = black_money,
            aduty = admin,
            voiceRange = voice,
            radioType= funkType,
            radio = radioFunk
        })
    end 
end)

AddEventHandler('SaltyChat_TalkStateChanged', function(talking)
    isTalking = talking
end)

RegisterNetEvent('SaltyChat_VoiceRangeChanged')
AddEventHandler('SaltyChat_VoiceRangeChanged', function(p, a)

    voice = p  
    
end)  
 
function getPlayerId()
    local src = source
    return src
end
RegisterNetEvent('SaltyChat_IsSending')
AddEventHandler('SaltyChat_IsSending', function(a, b, c, d, e, f)
    ESX.TriggerServerCallback('byte:getPlayerId', function(pid) 
        
    
       
        if tonumber(a) == tonumber(pid) then
           
            if d == true and e == false then
                
                return 

            end
            if d == true and e == true then
                funkType = 2 
                
            else
                funkType = 1
               
            end
        end
    end)
        
        
end)
 
AddEventHandler('SaltyChat_MicStateChanged', function(isMicrophoneMuted)
    muted = isMicrophoneMuted
end)

AddEventHandler("hud:range", function(range)
    voice = range
    if range == 3 then
        TriggerEvent('glmp_notify', '#ff8400', "Sprachweite", "Sprachbereich: Gering")
    elseif range == 8 then
        TriggerEvent('glmp_notify', '#ff8400', "Sprachweite", "Sprachbereich: Normal")
    elseif range == 15 then
        TriggerEvent('glmp_notify', '#ff8400', "Sprachweite", "Sprachbereich: Schreien")
    end
end)

RegisterNetEvent('hud:changeVoice')
AddEventHandler('hud:changeVoice', function(voice1)
    voice = voice1
end)

RegisterNetEvent('hud:showAdmin')
AddEventHandler('hud:showAdmin', function()
    admin = true
end)

RegisterNetEvent('hud:hideAdmin')
AddEventHandler('hud:hideAdmin', function()
    admin = false
end)