Citizen.CreateThread(function()
    while not NetworkIsSessionStarted() do Wait(0) end
    TriggerServerEvent('inventory:load')
end)


ESX = nil
local PlayerData        = {}
local hudopen           = false
local ampacken          = false

local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(0)
    end

    PlayerData = ESX.GetPlayerData()
end)

RegisterNUICallback("trigger", function(data,cb)
    if data.event == "onWindowClosed" then
        SetNuiFocus(false,false)
        settonull()
    end

    if data.event == "componentTriggerServerEvent" then
        if data.args[2] == "useInventoryItem" then
            TriggerServerEvent('inventory:useItem', data.args[3])
        end
        if data.args[2] == "dropInventoryItem" then
            Citizen.Wait(0)
            TriggerServerEvent('inventory:throwItem', data.args[3], data.args[4])
        end
        if data.args[2] == "moveItemToInventory" then
            Citizen.Wait(0)
            TriggerEvent("playanimation")
            -- print("item: "..data.args[4]) --item
            -- print("amount: "..data.args[7]) -- Amount
            local vehicle = ESX.Game.GetVehicleInDirection()
            if DoesEntityExist(vehicle) then
                -- print("exist")
                if data.args[6] == GetPlayerServerId(PlayerId()) then
                    -- print("put")
                    TriggerServerEvent("esx_trunk:putItem", GetVehicleNumberPlateText(vehicle), "item_standard", data.args[4], data.args[7], 50000, false)
                else
                    -- print("remove")
                    TriggerServerEvent("esx_trunk:getItem", GetVehicleNumberPlateText(vehicle), "item_standard", data.args[4], data.args[7])
                end
            end
        end
        if data.args[2] == "giveInventoryItem" then
            Citizen.Wait(0)
            TriggerEvent('giveInventoryItem', data.args[3], data.args[4])
        end
        if data.args[2] == "fillInventorySlots" then
            openinventory()
        end
        if data.args[2] == "packArmor" then
            TriggerEvent('inventory:packArmor')
        end
        if data.args[2] == "packGun" then
            TriggerEvent('inventory:packGun')
        end
    end
end)

function getPicbyItem(itemname)
    for k,v in pairs(Config.Items) do
        if itemname == k then
            return v.img
        end
    end
    return Config.DefaultPic
end

function getItembyWeapon(weapon)
    for k,v in pairs(Config.WeaponItems) do
        if weapon == GetHashKey(k) then
            return v.item
        end
    end
    return "keinebruda"
end

local items = {}
local trunkitems = {}
local handschuhfachItems = {}

function openinventory()
    ESX.TriggerServerCallback('inventory:loadTarget', function(data)
        local numberslots = -1
        for k, v in pairs(data.items) do
            if tonumber(v.count) > 0 then
                table.insert(items, {Id = math.random(1,12),Label = v.label,Name = v.name,Amount = v.count,Weight = v.limit * 1000,Slot = numberslots + 1,ImagePath = getPicbyItem(v.name),Max2000 = "2000"})
                numberslots = numberslots + 1
            end
        end
        local t = {
            ["inventory"] = {
                {
                ["Id"] = GetPlayerServerId(PlayerId()),
                ["Name"] = Config.Inventoryname,
                ["Money"] = data.money,
                ["MaxWeight"] = Config.MaxWeight,
                ["MaxSlots"] = Config.MaxSlots,
                    ["Slots"] = items
                }
            }
        }
        if not hudopen then
            SendNUIMessage({
                action = "open",
                data = json.encode(t)
            })
            hudopen = true
        end
        SetNuiFocus(true,true)
    end)
end

RegisterNetEvent("trunkopen123")
AddEventHandler("trunkopen123", function()
    local vehicle = ESX.Game.GetVehicleInDirection()
    if DoesEntityExist(vehicle) then
        ESX.TriggerServerCallback('inventory:loadTarget', function(data)
            ESX.TriggerServerCallback('esx_trunk:getInventoryV', function(inventory)
                local numberslots = -1
                local trunkslots = -1
                for k, v in pairs(data.items) do
                    if tonumber(v.count) > 0 then
                        table.insert(items, {Id = math.random(1,12),Label = v.label,Name = v.name,Amount = v.count,Weight = v.limit,Slot = numberslots + 1,ImagePath = getPicbyItem(v.name),MaxStackSize = "2000"})
                        numberslots = numberslots + 1
                    end
                end
                for i=1, #inventory.items, 1 do
                    local item = inventory.items[i]
                    if tonumber(item.count) > 0 then
                        table.insert(trunkitems, {Id = math.random(1,12),Label = item.label,Name = item.name,Amount = item.count,Weight = item.limit,Slot = trunkslots + 1,ImagePath = getPicbyItem(item.name),MaxStackSize = "2000"})
                        trunkslots = trunkslots + 1
                    end
                end
                local t = {
                    ["inventory"] = {
                        {
                            ["Id"] = GetPlayerServerId(PlayerId()),
                            ["Name"] = Config.Inventoryname,
                            ["MaxWeight"] = Config.MaxWeight,
                            ["MaxSlots"] = Config.MaxSlots,
                            ["Slots"] = items
                        },
                        {
                            ["Id"] = 1337,
                            ["Name"] = GetVehicleNumberPlateText(vehicle),
                            ["MaxWeight"] = Config.MaxWeight,
                            ["MaxSlots"] = Config.MaxSlots,
                            ["Slots"] = trunkitems
                        }
                    }
                        }
                if not hudopen then
                    SendNUIMessage({
                        action = "open",
                        data = json.encode(t)
                    })
                    hudopen = true
                end
                SetNuiFocus(true,true)
            end, GetVehicleNumberPlateText(vehicle))
        end)
    end
end)

local spinditems = {}

RegisterNetEvent("openSpind")
AddEventHandler("openSpind", function()
    local vehicle = ESX.Game.GetVehicleInDirection()
    if not DoesEntityExist(vehicle) then
        ESX.TriggerServerCallback('inventory:loadTarget', function(data)
            ESX.TriggerServerCallback('inventory:getSpindInventory', function(inventory)
                local numberslots = -1
                local spindslots = -1
                for k, v in pairs(data.items) do
                    if tonumber(v.count) > 0 then
                        table.insert(items, {Id = math.random(1,12),Label = v.label,Name = v.name,Amount = v.count,Weight = v.limit,Slot = numberslots + 1,ImagePath = getPicbyItem(v.name),Max2000 = "2000"})
                        numberslots = numberslots + 1
                    end
                end
                for i=1, #inventory.itemsSpind, 1 do
                    local item = inventory.itemsSpind[i]
                    if tonumber(item.count) > 0 then
                        table.insert(spinditems, {Id = math.random(1,12),Label = item.label,Name = item.name,Amount = item.count,Weight = item.limit,Slot = spindslots + 1,ImagePath = getPicbyItem(item.name),Max2000 = "2000"})
                        spindslots = spindslots + 1
                    end
                end
                local t = {
                    ["inventory"] = {
                        {
                            ["Id"] = GetPlayerServerId(PlayerId()),
                            ["Name"] = Config.Inventoryname,
                            ["MaxWeight"] = Config.MaxWeight,
                            ["MaxSlots"] = Config.MaxSlots,
                            ["Slots"] = items
                        },
                        {
                            ["Id"] = 1337,
                            ["Name"] = "Spind",
                            ["MaxWeight"] = Config.MaxWeight,
                            ["MaxSlots"] = Config.MaxSlots,
                            ["Slots"] = spinditems
                        }
                    }
                        }
                if not hudopen then
                    SendNUIMessage({
                        action = "open",
                        data = json.encode(t)
                    })
                    hudopen = true
                end
                SetNuiFocus(true,true)
            end)
        end)
    end
end)

RegisterNetEvent("handschuhfach")
AddEventHandler("handschuhfach", function()
    local vehicle = ESX.Game.GetVehicleInDirection()
    if DoesEntityExist(vehicle) then
        ESX.TriggerServerCallback('inventory:loadTarget', function(data)
            ESX.TriggerServerCallback('esx_trunk:getInventoryV', function(inventory)
                local numberslots = -1
                local handschuhfachslots = -1
                for k, v in pairs(data.items) do
                    if tonumber(v.count) > 0 then
                        table.insert(items, {Id = math.random(1,12),Label = v.label,Name = v.name,Amount = v.count,Weight = v.limit,Slot = numberslots + 1,ImagePath = getPicbyItem(v.name),Max2000 = "2000"})
                        numberslots = numberslots + 1
                    end
                end
                for i=1, #inventory.items, 1 do
                    local item = inventory.items[i]
                    if tonumber(item.count) > 0 then
                        table.insert(handschuhfachItems, {Id = math.random(1,12),Label = item.label,Name = item.name,Amount = item.count,Weight = item.limit,Slot = handschuhfachslots + 1,ImagePath = getPicbyItem(item.name),Max2000 = "2000"})
                        handschuhfachslots = handschuhfachslots + 1
                    end
                end
                local t = {
                    ["inventory"] = {
                        {
                            ["Id"] = GetPlayerServerId(PlayerId()),
                            ["Name"] = Config.Inventoryname,
                            ["MaxWeight"] = Config.MaxWeight,
                            ["MaxSlots"] = Config.MaxSlots,
                            ["Slots"] = items
                        },
                        {
                            ["Id"] = 1337,
                            ["Name"] = "Handschuhfach",
                            ["MaxWeight"] = Config.MaxWeight,
                            ["MaxSlots"] = 4,
                            ["Slots"] = handschuhfachItems
                        }
                    }
                        }
                if not hudopen then
                    SendNUIMessage({
                        action = "open",
                        data = json.encode(t)
                    })
                    hudopen = true
                end
                SetNuiFocus(true,true)
            end, GetVehicleNumberPlateText(vehicle))
        end)
    end
end)

CreateThread(function()
    while true do
        Wait(0)
        if IsControlJustPressed(0, 289) then
            openinventory()
        end
    end
end)

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

RegisterNetEvent("playanimation")
AddEventHandler("playanimation", function(name, count)
    local playerPed = GetPlayerPed(-1)

    DoThrowGiveAnimation()

    Citizen.Wait(1300)
    ClearPedTasks(playerPed)
end)

RegisterNetEvent("giveInventoryItem")
AddEventHandler("giveInventoryItem", function(name, count)
    local playerPed = GetPlayerPed(-1)
    local player, dist = ESX.Game.GetClosestPlayer()
	
    if player == -1 or dist > 2.0 then
        ESX.ShowNotification('Es ist keine Person in der Nähe')
    else
        DoThrowGiveAnimation()
        TriggerServerEvent('inventory:giveItem', name, count, GetPlayerServerId(player),data)
		Citizen.Wait(1300)
		ClearPedTasks(playerPed)
    end
    cb('ok')
end)

RegisterNetEvent("inventory:packArmor")
AddEventHandler("inventory:packArmor", function()
    local playerPed = GetPlayerPed(-1)
    local getweste = GetPedArmour(playerPed)

    if tonumber(getweste) >= 100 then
        TriggerServerEvent("inventory:packArmor")
    elseif tonumber(getweste) == 0 then
        ESX.ShowNotification('Du hast keine Weste, die du ausziehen kannst!')
    else
        ESX.ShowNotification('Deine Weste ist beschädigt! Es lohnt sich nicht diese auszuziehen.')
    end
end)

RegisterNetEvent("inventory:packArmor:2")
AddEventHandler("inventory:packArmor:2", function()
    local playerPed = GetPlayerPed(-1)
    local getweste = GetPedArmour(playerPed)

    DoPackAnimation()

    TriggerEvent("inventory:progressbar", Config.packArmortime)
    Citizen.Wait(Config.packArmortime)

    AddArmourToPed(GetPlayerPed(-1), -100)
    ClearPedTasks(playerPed)
    if Config.packArmorremoveclothe then
        SetPedComponentVariation(playerPed, 9, 0, 0, 0)
    end
end)

function settonull()
    items = {}

    trunkitems = {}

    handschuhfachItems = {}
    
    spinditems = {}

    hudopen = false
end

RegisterNetEvent("inventory:progressbar")
AddEventHandler("inventory:progressbar", function(duration)
    SendNUIMessage({
        action = "penis",
        data = tonumber(duration)
    })
end)

RegisterNetEvent("inventory:packGun")
AddEventHandler("inventory:packGun", function()
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    local itemname = getItembyWeapon(weapon)
    local munition = GetAmmoInPedWeapon(ped,weapon)

    if not ampacken then
        if itemname ~= "keinebruda" then
            TriggerServerEvent("inventory:packGun", itemname, munition)
            ampacken = true
        elseif weapon == GetHashKey("WEAPON_UNARMED") then
            ESX.ShowNotification('Du musst eine Waffe in der Hand halten!')
        else
            ESX.ShowNotification('Diese Waffe kann nicht eingepackt werden!')
        end
    end
end)

RegisterNetEvent("inventory:packGun:2")
AddEventHandler("inventory:packGun:2", function(itemname)
    local playerPed = GetPlayerPed(-1)

    DoPackAnimation()

    TriggerEvent("inventory:progressbar", Config.packArmortime)
    Citizen.Wait(Config.packArmortime)

    ESX.ShowNotification('Sie haben ihre '..itemname..' in ihr Inventar verstaut!')
    ClearPedTasks(playerPed)
    ampacken = false
end)

CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
            if IsControlJustPressed(0, 182) then
                TriggerEvent("handschuhfach")
            end
        end
    end
end)

Citizen.CreateThread(function()
	while true do
	
		local isInMarker = false
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local source = PlayerPedId()

		Wait(0)
		DrawMarker(1, -591.69, -930.63, 22.89, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 0.5, 200, 55, 50, 100, false, true, 2, false, false, false, false)
		
		if GetDistanceBetweenCoords(coords, 259.28, -783.09, 30.51, true) < 1.5 then
			isInMarker = true
			SetTextComponentFormat('STRING')
            AddTextComponentString("Drücke ~INPUT_CONTEXT~ um das Lager zu öffnen")
            DisplayHelpTextFromStringLabel(0, 0, 1, -1)
		else
			isInMarker = false
		end
		if IsControlJustReleased(0, Keys['E']) and isInMarker == true then			
			TriggerEvent("openSpind")
			--SetTimecycleModifier('hud_def_blur')
		end
			
	end
end)
