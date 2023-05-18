local entitySets = {
	[1] = {"mba_cover", "mba_gokart_01"}, -- GoKart01
	[2] = {"mba_cover", "mba_gokart_02"}, -- GoKart02
	[3] = {"mba_cover", "mba_trackmania_01"}, -- Trackmania01
	[4] = {"mba_cover", "mba_trackmania_02"}, -- Trackmania02
	[5] = {"mba_cover", "mba_trackmania_03"}, -- Trackmania03
	[6] = {"mba_cover", "mba_trackmania_04"}, -- Trackmania04
	[7] = {"mba_tribune", "mba_chairs", "mba_rocketleague"}, -- RocketLeague
	[8] = {"mba_tribune", "mba_chairs", "mba_field", "mba_soccer"}, -- Soccer
	[9] = {"mba_tribune", "mba_chairs", "mba_field", "mba_hockey"}, -- IceHockey
	[10] = {"mba_tribune", "mba_chairs", "mba_curling"}, -- Curling
	[11] = {"mba_tribune", "mba_tarps", "mba_basketball", "mba_jumbotron"}, -- Basketball
	[12] = {"mba_cover", "mba_terrain", "mba_derby", "mba_ring_of_fire"}, -- Derby
	[13] = {"mba_tribune", "mba_chairs", "mba_paintball", "mba_jumbotron"}, -- Paintball
	[14] = {"mba_tribune", "mba_tarps", "mba_backstage", "mba_concert", "mba_jumbotron"}, -- Concert
	[15] = {"mba_tribune", "mba_tarps", "mba_backstage", "mba_fashion", "mba_jumbotron"}, -- Fashion
	[16] = {"mba_tribune", "mba_tarps", "mba_backstage", "mba_fameorshame", "mba_jumbotron"}, -- FameorShame
	[17] = {"mba_tribune", "mba_tarps", "mba_fighting", "mba_wrestling", "mba_jumbotron"}, -- Wrestling
	[18] = {"mba_tribune", "mba_tarps", "mba_fighting", "mba_mma", "mba_jumbotron"}, -- MMA
	[19] = {"mba_tribune", "mba_tarps", "mba_fighting", "mba_boxing", "mba_jumbotron"}, -- Boxing
}

AddEventHandler('onClientMapStart', function()
    Wait(5000)
    TriggerServerEvent('GetEntitySetFromServer')
end)

RegisterNetEvent('UpdateEntitySetClient')
AddEventHandler('UpdateEntitySetClient', function(index)
	local interiorID = GetInteriorAtCoords(-324.22030000, -1968.49300000, 20.60336000)
    removeEntitysets(interiorID)
    for i, entitySet in ipairs(entitySets) do
		if index == i then
			enableEntitysets(interiorID, entitySet)
		end
	end
end)

function removeEntitysets(intID)
	DeactivateInteriorEntitySet(intID, "mba_curling")
	DeactivateInteriorEntitySet(intID, "mba_rocketleague")
	DeactivateInteriorEntitySet(intID, "mba_soccer")
	DeactivateInteriorEntitySet(intID, "mba_hockey")
	DeactivateInteriorEntitySet(intID, "mba_gokart_01")
	DeactivateInteriorEntitySet(intID, "mba_gokart_02")
	DeactivateInteriorEntitySet(intID, "mba_trackmania_01")
	DeactivateInteriorEntitySet(intID, "mba_trackmania_02")
	DeactivateInteriorEntitySet(intID, "mba_trackmania_03")
	DeactivateInteriorEntitySet(intID, "mba_trackmania_04")
	DeactivateInteriorEntitySet(intID, "mba_field")
	DeactivateInteriorEntitySet(intID, "mba_tribune")
	DeactivateInteriorEntitySet(intID, "mba_cover")
	DeactivateInteriorEntitySet(intID, "mba_chairs")
	DeactivateInteriorEntitySet(intID, "mba_tarps")
	DeactivateInteriorEntitySet(intID, "mba_jumbotron")
	DeactivateInteriorEntitySet(intID, "mba_basketball")
	DeactivateInteriorEntitySet(intID, "mba_paintball")
	DeactivateInteriorEntitySet(intID, "mba_terrain")
	DeactivateInteriorEntitySet(intID, "mba_derby")
	DeactivateInteriorEntitySet(intID, "mba_ring_of_fire")
	DeactivateInteriorEntitySet(intID, "mba_backstage")
	DeactivateInteriorEntitySet(intID, "mba_concert")
	DeactivateInteriorEntitySet(intID, "mba_fashion")
	DeactivateInteriorEntitySet(intID, "mba_fameorshame")
	DeactivateInteriorEntitySet(intID, "mba_fighting")
	DeactivateInteriorEntitySet(intID, "mba_wrestling")
	DeactivateInteriorEntitySet(intID, "mba_mma")
	DeactivateInteriorEntitySet(intID, "mba_boxing")
	RefreshInterior(intID)
end

function enableEntitysets(intID, entitySet)
	for _, entity in ipairs(entitySet) do
		ActivateInteriorEntitySet(intID, entity)
	end
	RefreshInterior(intID)
end