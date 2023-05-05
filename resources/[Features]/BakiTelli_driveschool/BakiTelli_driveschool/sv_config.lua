ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	TriggerEvent('esx_license:getLicenses', source, function(licenses)
		TriggerClientEvent('esx_dmvschool:loadLicenses', source, licenses)
	end)
end)

RegisterNetEvent('esx_dmvschool:addLicense')
AddEventHandler('esx_dmvschool:addLicense', function(type)
	local _source = source

	TriggerEvent('esx_license:addLicense', _source, type, function()
		TriggerEvent('esx_license:getLicenses', _source, function(licenses)
			TriggerClientEvent('esx_dmvschool:loadLicenses', _source, licenses)
		end)
	end)
end)

RegisterNetEvent('esx_dmvschool:pay')
AddEventHandler('esx_dmvschool:pay', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', _source, _U('you_paid', ESX.Math.GroupDigits(price)))
end)


RegisterNetEvent('esx_dmvschool:get')
AddEventHandler('esx_dmvschool:get', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	cash = xPlayer.getMoney()
	name = xPlayer.getName()
	TriggerClientEvent("school:cl:get", _source, cash,name)
end)


-------------- QBCORE --------------------------
	-- QBCore = nil

	-- TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

	-- AddEventHandler('QBCore:Client:OnPlayerLoaded', function(source)

	-- 	TriggerEvent('esx_license:getLicenses', source, function(licenses)
	-- 		TriggerClientEvent('esx_dmvschool:loadLicenses', source, licenses)
	-- 	end)

	-- end)

	-- RegisterNetEvent('esx_dmvschool:addLicense')
	-- AddEventHandler('esx_dmvschool:addLicense', function(type)
	-- 	local _source = source

	-- 	TriggerEvent('esx_license:addLicense', _source, type, function()
	-- 		TriggerEvent('esx_license:getLicenses', _source, function(licenses)
	-- 			TriggerClientEvent('esx_dmvschool:loadLicenses', _source, licenses)
	-- 		end)
	-- 	end)
	-- end)

	-- RegisterNetEvent('esx_dmvschool:pay')
	-- AddEventHandler('esx_dmvschool:pay', function(price)
	-- 	local _source = source
	-- 	local xPlayer = QBCore.Functions.GetPlayer(_source)

	-- 	xPlayer.Functions.RemoveMoney('cash', amount, "s")
	-- 	TriggerClientEvent('QBCore:Notify', _source, _U('you_paid',price))
	-- end)

	-- RegisterNetEvent('esx_dmvschool:get')
	-- AddEventHandler('esx_dmvschool:get', function(price)
	-- 	local _source = source
	-- 	local xPlayer = QBCore.Functions.GetPlayer(_source)
	-- 	cash = xPlayer.PlayerData.money["cash"]
	-- 	name = xPlayer.getName()
	-- 	TriggerClientEvent("school:cl:get", _source, cash,name)
	-- end)
	