local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAdelion"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


ESX = nil
local PlayerData = {}
local vehicles = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()

    ESX.TriggerServerCallback('lightning_autohaus:loadVehicles', function(vehicle)
        for key, value in pairs(vehicle) do
            table.insert(vehicles, {
                display = value.name,
                category = value.category,
                price = value.price,
                name = value.model
            })
        end
    end)
end)

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

local possible = {'a','b','c','d','e','f','g','h','i','j','k','n','m','l','o','p','1','2','3','4','5','6','7','8','9','0'}

local enableField = false

function toggleField(enable)
    SetNuiFocus(enable, enable)
    enableField = enable

    if enable then
        SendNUIMessage({
            action = 'open'
        }) 
    else
        SendNUIMessage({
            action = 'close'
        }) 
        SendNUIMessage({
            action = "clearvehiclelist",
        })
    end
end

function AddCar(display, category, preis, name)
    SendNUIMessage({
        action = 'add',
        name = display,
        category = category,
        preis = preis,
        spawnname = name
    })
    
end


local temp_vehicle

AddEventHandler('onResourceStop', function(name)
    if GetCurrentResourceName() ~= name then
        return
    end

    toggleField(false)

    ESX.Game.DeleteVehicle(temp_vehicle)
    temp_vehicle = nil
end)

RegisterNUICallback('escape', function(data, cb)
    toggleField(false)
    SetNuiFocus(false, false)

    cb('ok')
    SendNUIMessage({
        action = "clearvehiclelist",
    })
    
end)

RegisterNUICallback('ansehen', function(data, cb)
    SetEntityVisible(GetPlayerPed(-1), true, nil)
    toggleField(false)

    TriggerEvent(Config.NotifiTrigger, Config.Notificolor, Config.NotifiDisplay, Config.message1)


    ESX.Game.DeleteVehicle(temp_vehicle)
    temp_vehicle = nil
    
    ESX.Game.SpawnLocalVehicle(data.name, Config.AutoViewSpawn, Config.Angle, function(cb_vehicle)
        temp_vehicle = cb_vehicle
        SetVehicleDoorsLocked(cb_vehicle, 1)
        SetVehicleNumberPlateText(cb_vehicle, Config.Kennzeichen)
        if Config.TeleportInVehicle then
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), cb_vehicle, -1)
        end
    end)




    Wait(Config.Seconds * 1000)

    ESX.Game.DeleteVehicle(temp_vehicle)
    temp_vehicle = nil
    SetEntityCoords(GetPlayerPed(-1), Config.AutoHaus, 0, 0, 0, false)
    TriggerEvent(Config.NotifiTrigger, Config.Notificolor, Config.NotifiDisplay, Config.message5)
    

    cb('ok')
end)

RegisterNUICallback('kaufen', function(data, cb)
    toggleField(false)

    kaufen(data, cb)

    cb('ok')
end)

function kaufen(data, cb)
    ESX.Game.DeleteVehicle(temp_vehicle)
    temp_vehicle = nil

    ESX.TriggerServerCallback('lightning_autohaus:loadVehicleDetails', function(vehicle)        
        ESX.TriggerServerCallback('lightning_autohaus:canAfford', function(bool)
        
            if bool then
                
                local text = ""

                for i = 1, 8, 1 do
                    local random = math.random(1, tablelength(possible))
                    text = text .. possible[random]
                end

                text = text:upper()

                ESX.TriggerServerCallback('lightning_autohaus:isPlateTaken', function(bool)
                    
                    if bool then
                        kaufen(data, cb)
                    else
                        TriggerEvent(Config.NotifiTrigger, Config.Notificolor, Config.NotifiDisplay, Config.message2)


                        
                        ESX.Game.SpawnVehicle(data.name, Config.AutoKaufSpawn, Config.Angle2, function(vehicle)
                            SetVehicleNumberPlateText(vehicle, text)
                            if Config.TeleportInVehicle then
                                TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
                            else
                              TriggerEvent(Config.NotifiTrigger, Config.Notificolor, Config.NotifiDisplay, Config.message3)
                              SetVehicleDoorsLocked(vehicle, 0)
                            end

                            local props = ESX.Game.GetVehicleProperties(vehicle)
                            local json = json.encode(props)

                            
                            TriggerServerEvent('lightning_autohaus:registerCar', text, json, 'car', 'civ', 0)
                        end)
                    end
                end, text)
            else
                TriggerEvent(Config.NotifiTrigger, Config.Notificolor, Config.NotifiDisplay, Config.message4)
            end

        end, vehicle[1].price)
    end, data.name)
end


Citizen.CreateThread(function()
    while true do
        Wait(0)
        local playerCoords = GetEntityCoords(GetPlayerPed(-1), false)

            local dist = Vdist(playerCoords.x, playerCoords.y, playerCoords.z, Config.AutoHaus)
            DrawMarker(1, Config.AutoHaus, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 0, 0, 100, false, true, 2, true, false, false, false)

            if dist <= 1.5 then
                ESX.ShowHelpNotification("Drücke ~INPUT_CONTEXT~ um ein Auto zu Kaufen")
            
                if IsControlJustReleased(0, 38) then
                    
                    toggleField(true)
                    
                    for key, value in pairs(vehicles) do
                        AddCar(value.display, value.category, value.price, value.name)   
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    RequestIpl('shr_int') -- Load walls and floor
end)

Citizen.CreateThread(function()
        local blip = AddBlipForCoord(Config.AutoHaus)

        SetBlipSprite(blip, Config.BlipSprite)
        SetBlipScale(blip, 0.9)
        SetBlipColour(blip, Config.BlipColor)
        SetBlipDisplay(blip, 4)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Blipname)
        EndTextCommandSetBlipName(blip)
end)