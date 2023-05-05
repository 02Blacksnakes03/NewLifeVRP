ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("kossek-antylua:kick")
AddEventHandler("kossek-antylua:kick", function()
	local xPlayer = ESX.GetPlayerFromId(source)
	print(('Virtual-V | Sicherheits Kick Virtual-V'):format(xPlayer.identifier))
	DropPlayer(source, "Virtual-V  | Sicherheits Kick Virtual-V")
end)