if not QBCORE then return end
PlayerData = QBCORE.Functions.GetPlayerData()

if PlayerData.job ~= nil then
	PlayerData.job.grade = PlayerData.job.grade.level
end

if PlayerData.identifier == nil then
	PlayerData.identifier = PlayerData.citizenid
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	Wait(1500)
	PlayerData = QBCORE.Functions.GetPlayerData()

	if PlayerData.job ~= nil then
		PlayerData.job.grade = PlayerData.job.grade.level
	end

	if PlayerData.identifier == nil then
		PlayerData.identifier = PlayerData.citizenid
	end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
	PlayerData.job = job
	
	PlayerData.job.grade = PlayerData.job.grade.level
end)

GetInventoryItems = function(name)
	local data = {}
	local PlayerData = QBCORE.Functions.GetPlayerData()
	for _, item in pairs(PlayerData.items) do
		if name == item.name then
			item.metadata = item.info
			table.insert(data,item)
		end
	end
	return data
end