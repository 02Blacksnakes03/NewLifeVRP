ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterServerCallback('lightning_autohaus:loadVehicles', function(source, cb)
	MySQL.Async.fetchAll('SELECT * FROM vehicles', {}, function(vehicles)
		cb(vehicles)
	end)
end)

ESX.RegisterServerCallback('lightning_autohaus:loadVehicleDetails', function(source, cb, spawnname)
	MySQL.Async.fetchAll('SELECT * FROM vehicles WHERE model = @spawnname', {['@spawnname'] = spawnname}, function(vehicles)
		cb(vehicles)	
	end)
end)

ESX.RegisterServerCallback('lightning_autohaus:canAfford', function(source, cb, price)
	
	local s = source
	local x = ESX.GetPlayerFromId(s)

	if x.getMoney() >= price then
		x.removeMoney(price)
		cb(true)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('lightning_autohaus:isPlateTaken', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {['@plate'] = plate}, function(vehicle)
		cb(next(vehicle) ~= nil)
	end)
end)

RegisterNetEvent('lightning_autohaus:registerCar')
AddEventHandler('lightning_autohaus:registerCar', function(plate, json, typex, job, stored)
	local s = source
	local x = ESX.GetPlayerFromId(s)

	MySQL.Sync.execute("INSERT INTO owned_vehicles (owner, plate, vehicle, type, job, stored) VALUES (@owner, @plate, @json, @type, @job, @stored)", 
		{
			['@owner'] = x.identifier,
			['@plate'] = plate,
			['@json'] = json,
			['@type'] = typex,
			['@job'] = job,
			['@stored'] = stored
		}
	)
end)



