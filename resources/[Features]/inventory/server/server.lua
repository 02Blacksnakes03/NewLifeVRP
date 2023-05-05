
ESX = nil
local okay = false
Items                  = {}
local DataStoresIndex  = {}
local DataStores       = {}
local SharedDataStores = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback("inventory:loadTarget", function(source, cb)
	local s = source
	local x = ESX.GetPlayerFromId(s)
	local data = {
		items = x.getInventory(),
		money = x.getMoney(),
		}
	cb(data)
end)

ESX.RegisterServerCallback("inventory:getSpindInventory", function(source,cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'lager_lcn', function(inventory)
		cb(inventory.items)
	end)
end)

AddEventHandler('onMySQLReady', function()
	local identifier = GetPlayerIdentifiers(source)[1];
	local result = MySQL.Sync.fetchAll('SELECT * FROM lager_inventory')
	local data = nil
	if #result ~= 0 then
	  for i=1,#result,1 do
		local identifier = result[i].identifier
		local owned = result[i].owned
		local data = (result[i].data == nil and {} or json.decode(result[i].data))
		local dataStore   = CreateDataStore(identifier, owned, data)
		SharedDataStores[identifier] = dataStore
	  end
	end
  end)
  

function loadInvent(identifier)
	local identifier = GetPlayerIdentifiers(source)[1];
	local result = MySQL.Sync.fetchAll('SELECT * FROM lager_inventory WHERE identifier = @identifier',
	{
	  ['@identifier'] = identifier,
	})
	local data = nil
	if #result ~= 0 then
	  for i=1,#result,1 do
		local identifier = result[i].identifier
		local owned = result[i].owned
		local data = (result[i].data == nil and {} or json.decode(result[i].data))
		local dataStore   = CreateDataStore(identifier, owned, data)
		SharedDataStores[identifier] = dataStore
	  end
	end
  end

function MakeDataStore(identifier)
	local data = {}
	local identifier = GetPlayerIdentifiers(source)[1];
	local owned = getOwnedVehicle(identifier)
	local dataStore   = CreateDataStore(identifier, owned, data)
	SharedDataStores[identifier] = dataStore
	MySQL.Async.execute('INSERT INTO lager_inventory(identifier,data,owned) VALUES (@identifier,\'{}\',@owned)',
	{
	  ['@identifier'] = identifier,
	  ['@owned'] = owned,
	}
	)
	loadInvent(identifier)
  end

function GetSharedDataStore(identifier)
	if SharedDataStores[identifier] == nil then
	  MakeDataStore(identifier)
	end
	return SharedDataStores[identifier]
  end

ESX.RegisterServerCallback('inventory:getLager',function(source,cb,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = GetPlayerIdentifiers(source)[1];
	TriggerEvent('inventory:getSharedDataStore',identifier,function(store)
	  local blackMoney = 0
	   local items      = {}
	   local weapons    = {}
	  weapons = (store.get('weapons') or {})
  
	  local blackAccount = (store.get('black_money')) or 0
	  if blackAccount ~=0 then
		blackMoney = blackAccount[1].amount
	  end
  
	  local coffre = (store.get('coffre') or {})
	  for i=1,#coffre,1 do
		table.insert(items,{name=coffre[i].name,count=coffre[i].count,label=ESX.GetItemLabel(coffre[i].name)})
	  end
  
	  local weight = getTotalInventoryWeight(identifier)
	  cb({
	  blackMoney = blackMoney,
	  items      = items,
	  weapons    = weapons,
	  weight     = weight
	  })
	end)
  end)

AddEventHandler('esx_trunk:getSharedDataStore', function(identifier,cb)
	cb(GetSharedDataStore(identifier))
end)
  

RegisterNetEvent('inventory:throwItem')
AddEventHandler('inventory:throwItem', function(name, count)
	local playerPed = GetPlayerPed(-1)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(name)
	
	if tonumber(count) > 0 and sourceItem.count >= tonumber(count) then
		xPlayer.removeInventoryItem(name, count)
		TriggerClientEvent("playanimation", _source)
		TriggerClientEvent('esx:showNotification', _source, "Du hast " ..count.. "x " ..sourceItem.label.. "  weggeworfen.")
	else
		TriggerClientEvent('esx:showNotification', _source, "Soviel hast du nicht!")
	end
end)

RegisterNetEvent('inventory:giveItem')
AddEventHandler('inventory:giveItem', function(name, count, target,data)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xTarget = ESX.GetPlayerFromId(target)
	local sourceItem = xPlayer.getInventoryItem(name)

	if sourceItem.weight * count + xTarget.getWeight() <= 40000 then
		xPlayer.removeInventoryItem(name, count)
		xTarget.addInventoryItem(name, count)
		TriggerClientEvent("playanimation", _source)
		TriggerClientEvent('reloadInv', target)
		TriggerClientEvent('esx:showNotification', target, "Du hast " ..count.. "x " ..sourceItem.label.. "  bekommen")
		TriggerClientEvent("esx:showNotification", _source, "Du hast jemanden "..count.."x " ..sourceItem.label.." zugesteckt")
	else
		TriggerClientEvent("esx:showNotification", _source, "Die Person kann nicht so viel tragen.")
	end
end)

RegisterNetEvent("inventory:packArmor")
AddEventHandler("inventory:packArmor", function()
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	MySQL.Async.fetchAll('SELECT patron_weste FROM users WHERE `identifier` = @identifier', {["@identifier"] = xPlayer.identifier}, function(result)
		if result[1].patron_weste == "true" then
			MySQL.Async.execute('UPDATE users SET patron_weste = @patron_weste WHERE identifier = @identifier', {['@patron_weste'] =  "false",['@identifier'] =  xPlayer.identifier})
			TriggerClientEvent("inventory:packArmor:2", _source)
			Citizen.Wait(Config.packArmortime)
			xPlayer.addInventoryItem(Config.packArmorItem, "1")
			TriggerClientEvent("esx:showNotification", _source, "Du hast deine Schutzweste ausgezogen!")
		else
			MySQL.Async.execute('UPDATE users SET patron_weste = @patron_weste WHERE identifier = @identifier', {['@patron_weste'] =  "false",['@identifier'] =  xPlayer.identifier})
			TriggerClientEvent("esx:showNotification", _source, "Das kannst du zurzeit nicht tun!")
		end
	end)
end)

RegisterNetEvent("inventory:setArmorState")
AddEventHandler("inventory:setArmorState", function(state)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	MySQL.Async.execute('UPDATE users SET patron_weste = @patron_weste WHERE identifier = @identifier', {['@patron_weste'] =  state,['@identifier'] =  xPlayer.identifier})
end)

Citizen.CreateThread(function()
	for k,v in pairs(Config.WeaponItems) do
		print("('" .. v.item .. "', '" .. v.item .. "', '25', '0', '1'),")
	end
end)

function getWeaponbyItem(item)
	for k,v in pairs(Config.WeaponItems) do
		if item == v.item then
			return k
		end
	end
	return "keinebruda"
end

function getItembyWeapon(weapon)
    for k,v in pairs(Config.WeaponItems) do
        if weapon == GetHashKey(k) then
            return v.item
        end
    end
    return "keinebruda"
end

function getMunibyItem(item)
	for k,v in pairs(Config.WeaponItems) do
		if item == v.item then
			return v.ammo
		end
	end
	return "keinebruda"
end

RegisterNetEvent('inventory:useItem')
AddEventHandler('inventory:useItem', function(name)
	local playerPed = GetPlayerPed(-1)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(name)

	if sourceItem.usable then
		if name ~= nil then
			if tonumber(sourceItem.count) >= 1 then
				ESX.UseItem(_source, name)
			end
		end
	else
		if getWeaponbyItem(name) ~= "keinebruda" then
			xPlayer.removeInventoryItem(name, "1")
			xPlayer.addWeapon(getWeaponbyItem(name))
			TriggerClientEvent("esx:showNotification", _source, "Du hast deine "..sourceItem.label.." ausgerüstet!")
		end
	end
end)

RegisterNetEvent("inventory:packGun")
AddEventHandler("inventory:packGun", function(name,ammo)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local weapon = getWeaponbyItem(name)
	local sourceItem = xPlayer.getInventoryItem(name)
	local derbremachtmathe = ammo / getMunibyItem(name)

	TriggerClientEvent("inventory:packGun:2",_source,sourceItem.label)
	Citizen.Wait(Config.packArmortime)
	xPlayer.removeWeapon(getWeaponbyItem(name))
	xPlayer.addInventoryItem(name, "1")
	xPlayer.addInventoryItem(Config.packWeaponMunitionItem, math.floor(derbremachtmathe+0.5))
end)

