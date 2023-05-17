if AK4Y.Framework == "esx" then
    ESX = nil
elseif AK4Y.Framework == "newEsx" then
	ESX = exports["es_extended"]:getSharedObject()
end

Citizen.CreateThread(function()
    if AK4Y.Framework == "esx" then
		while ESX == nil do
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			Citizen.Wait(0)
		end
    elseif AK4Y.Framework == "newEsx" then 
		while ESX == nil do 
			Citizen.Wait(100)
		end
	end
    playTime = GetGameTimer() + (AK4Y.NeededPlayTime * 60000)
    Wait(1000)
    SendNUIMessage({
        type = 'translate', 
        translate = AK4Y.Language,
    })		
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    playTime = GetGameTimer() + (AK4Y.NeededPlayTime * 60000)
    Wait(1000)
    SendNUIMessage({
        type = 'translate', 
        translate = AK4Y.Language,
    })	
end)

RegisterCommand(AK4Y.OpenCommand, function()
	openMenu()
end)

local openMenuSpamProtect = 0
function openMenu()
    if openMenuSpamProtect < GetGameTimer() then 
        openMenuSpamProtect = GetGameTimer() + 1500
        ESX.TriggerServerCallback("ak4y-playTimeShop:getPlayerDetails", function(result)
            apiKey = result.steamApiKey
            if result.steamid then
                steamID = "https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=" .. apiKey .. "&steamids=" .. result.steamid
            else
                steamID = 'null'
            end
            local checkTime = tonumber(getNeededPlayTime()*60)
            local remainingTime = disp_time(checkTime)
            local firstname = result.firstName
            local lastname = ""
            SetNuiFocus(true,true)
            SendNUIMessage({
                type = 'openui', 
                coin = result.coin,
                categories = AK4Y.Categories,
                items = AK4Y.Items,
                steamid = steamID,
                firstname = firstname,
                lastname = lastname,
                remaining = remainingTime,
                coinReward = AK4Y.RewardCoin,
                coinList = AK4Y.CoinList,
                topPlayers = result.topPlayers,
            })	
        end)
    end
end

function disp_time(time)
    local days = math.floor(time/86400)
    local remaining = time % 86400
    local hours = math.floor(remaining/3600)
    remaining = remaining % 3600
    local minutes = math.floor(remaining/60)
    remaining = remaining % 60
    local seconds = remaining
    if (hours < 10) then
        hours = "0" .. tostring(hours)
    end
    if (minutes < 10) then
        minutes = "0" .. tostring(minutes)
    end
    if (seconds < 10) then
        seconds = "0" .. tostring(seconds)
    end
    if hours ~= "00" then 
        answer = hours..'h '..minutes..'m'
    else
        answer = minutes..'m'

    end
    return answer
end

Citizen.CreateThread(function()
    while true do
        Wait(5000)
        local checkTime = tonumber(getNeededPlayTime())
        if checkTime <= 0 then
            playTime = GetGameTimer() + (AK4Y.NeededPlayTime * 60000)
            TriggerServerEvent('ak4y-playTimeShop:addCoin', AK4Y.RewardCoin)
        end
    end
end)


getNeededPlayTime = function()
    return math.round((playTime - GetGameTimer()) / 60000, 2)
end

function math.round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

local buyItemSpamProtect = 0
RegisterNUICallback('buyItem', function(data, cb)
    if buyItemSpamProtect < GetGameTimer() then 
        buyItemSpamProtect = GetGameTimer() + 1500
        ESX.TriggerServerCallback("ak4y-playTimeShop:buyItem", function(result)
            cb(result)
        end, data)
    end
end)

local sendInputProtect = 0
RegisterNUICallback('sendInput', function(data, cb)
    if sendInputProtect < GetGameTimer() then 
        sendInputProtect = GetGameTimer() + 1500
        ESX.TriggerServerCallback("ak4y-playTimeShop:sendInput", function(result)
            cb(result)
        end, data)
    end
end)

RegisterNUICallback('closeMenu', function(data, cb)
	SetNuiFocus(false, false)
end)