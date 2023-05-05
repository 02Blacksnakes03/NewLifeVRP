RegisterNetEvent("ygx:togglegas")
AddEventHandler("ygx:togglegas", function()
   -- DeleteWaypoint()

    local currentGasBlip = 0

	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords

	for k,v in pairs(GasStations) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
            closestCoords = v
        end
    end

    SetNewWaypoint(closestCoords)
    exports['mythic_notify']:DoHudText("inform", "En yakın benzinci GPS'de işaretlendi.", 3500)

end)

RegisterNetEvent("ygx:togglebarber")
AddEventHandler("ygx:togglebarber", function()
   -- DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords1

	for k,v in pairs(BarberShops) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords1 = v
		end
    end
    
    SetNewWaypoint(closestCoords1)
    exports['mythic_notify']:DoHudText("inform", "En yakın berber GPS'de işaretlendi.", 3500)
end)

RegisterNetEvent("ygx:toggletattos")
AddEventHandler("ygx:toggletattos", function()
   -- DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords2

	for k,v in pairs(TattoShops) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports['mythic_notify']:DoHudText("inform", "En yakın dövmeci GPS'de işaretlendi.", 3500)
end)

RegisterNetEvent("ygx:togglegarage")
AddEventHandler("ygx:togglegarage", function()
   -- DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords2

	for k,v in pairs(Garages) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports['mythic_notify']:DoHudText("inform", "En yakın garaj GPS'de işaretlendi.", 3500)
end)

RegisterNetEvent("ygx:toggleclothes")
AddEventHandler("ygx:toggleclothes", function()
   -- DeleteWaypoint()

    local currentGasBlip = 0

	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords

	for k,v in pairs(Clothes) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
            closestCoords = v
        end
    end

    SetNewWaypoint(closestCoords)
    exports['mythic_notify']:DoHudText("inform", "En yakın Kıyafetçi GPS'de işaretlendi.", 3500)

end)

RegisterNetEvent("ygx:garage")
AddEventHandler("ygx:garage", function()
   -- DeleteWaypoint()

    local currentGasBlip = 0

	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords

	for k,v in pairs(Garage) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
            closestCoords = v
        end
    end

    SetNewWaypoint(closestCoords)
    exports['mythic_notify']:DoHudText("inform", "En yakın Garaj GPS'de işaretlendi.", 3500)

end)

RegisterNetEvent("ygx:banka")
AddEventHandler("ygx:banka", function()
   -- DeleteWaypoint()

    local currentGasBlip = 0

	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords

	for k,v in pairs(Banka) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
            closestCoords = v
        end
    end

    SetNewWaypoint(closestCoords)
    exports['mythic_notify']:DoHudText("inform", "En yakın Banka GPS'de işaretlendi.", 3500)

end)

TattoShops = { --lähin tatuointikauppa
	vector3(1322.6, -1651.9, 51.2),
	vector3(-1153.6, -1425.6, 4.9),
	vector3(322.1, 180.4, 103.5),
	vector3(-3170.0, 1075.0, 20.8),
	vector3(1864.6, 3747.7, 33.0),
	vector3(-293.7, 6200.0, 31.4)
}

BarberShops = { --lähin parturi
	vector3(136.8, -1708.4, 28.3),
	vector3(-827.48, -192, 37.59),
	vector3(-1282.62, -1116.83, 6.99),
	vector3(1930.81, 3730.61, 32.64),
	vector3(1212.89, -472.94, 66.21),
	vector3(-32.98, -152.32, 57.08),
	vector3(-278.11, 6228.49, 31.7)
}

GasStations = { --lähin bensa-asema
	vector3(49.4187, 2778.793, 58.043),
	vector3(263.894, 2606.463, 44.983),
	vector3(1039.958, 2671.134, 39.550),
	vector3(1207.260, 2660.175, 37.899),
	vector3(2539.685, 2594.192, 37.944),
	vector3(2679.858, 3263.946, 55.240),
	vector3(2005.055, 3773.887, 32.403),
	vector3(1687.156, 4929.392, 42.078),
	vector3(1701.314, 6416.028, 32.763),
	vector3(179.857, 6602.839, 31.868),
	vector3(-94.4619, 6419.594, 31.489),
	vector3(-2554.996, 2334.40, 33.078),
	vector3(-1800.375, 803.661, 138.651),
	vector3(-1437.622, -276.747, 46.207),
	vector3(-2096.243, -320.286, 13.168),
	vector3(-724.619, -935.1631, 19.213),
	vector3(-526.019, -1211.003, 18.184),
	vector3(-70.2148, -1761.792, 29.534),
	vector3(265.648, -1261.309, 29.292),
	vector3(819.653, -1028.846, 26.403),
	vector3(1208.951, -1402.567,35.224),
	vector3(1181.381, -330.847, 69.316),
	vector3(620.843, 269.100, 103.089),
	vector3(2581.321, 362.039, 108.468),
	vector3(176.631, -1562.025, 29.263),
	vector3(176.631, -1562.025, 29.263),
	vector3(-319.292, -1471.715, 30.549),
	vector3(1784.324, 3330.55, 41.253)
}

Garage = { --lähin talli
	vector3(913.22, -1258.03, 25.57),
	vector3(734.66, 5819.73, 17.34),
	vector3(-52.80, -220.94, 45.44),
	vector3(1107.2, 60.48, 80.89),
	vector3(542.46, -1790.09, 29.11),
	vector3(-72.68, 908.39, 235.62),
	vector3(846.26, -1050.78, 27.96),
	vector3(-3157.24, 1126.07, 20.85),
	vector3(77.34, 6361.74, 31.23),
	vector3(56.04, -876.41, 30.66),
	vector3(1036.08, -763.36, 57.99),
	vector3(1737.82, 3712.01, 34.13),
	vector3(125.2, 6644.69, 31.79),
	vector3(1097.85, 2660.49, 37.79),
	vector3(1893.77, 3712.21, 32.79),
	vector3(215.92, -809.75, 30.73),
	vector3(273.67, -344.15, 44.92),
	vector3(-1805.18, -340.28, 43.76),
	vector3(-69.27, -1831.73, 26.95),
	vector3(953.54, -122.5, 74.35),
	vector3(-1415.44, -652.62, 28.67),
	vector3(2549.39, 4669.95, 34.07)
}

Clothes = { --lähin vaatekauppa
	vector3(1693.45667, 4823.17725, 42.1631294),
	vector3(-1177.865234375, -1780.5612792969, 3.9084651470184),
	vector3(198.4602355957, -1646.7690429688, 29.803218841553),
	vector3(-712.215881,-155.352982, 37.4151268),
	vector3(123.779823,-301.616455, 54.557827),
	vector3(-1192.94495,-772.688965, 17.3255997),
	vector3(425.236, -806.008, 28.491),
	vector3(-162.658, -303.397, 38.733),
	vector3(75.950, -1392.891, 28.376),
	vector3(-822.194, -1074.134, 10.328),
	vector3(-1450.711, -236.83, 48.809),
	vector3(4.254, 6512.813, 30.877),
	vector3(615.180, 2762.933, 41.088),
	vector3(-1108.441, 2708.923, 18.107),
	vector3(-1207.656, -1456.88, 4.37),
	vector3(121.76, -224.6, 53.56),
	vector3(1784.13, 2492.6, 50.43)
}

Banka = { --lähin pankki
	vector3(150.266, -1040.203, 29.374),
	vector3(-1212.980, -330.841, 37.787),
	vector3(-2962.582, 482.627, 15.703),
	vector3(-112.202, 6469.295, 31.626),
	vector3(314.187, -278.621, 54.170),
	vector3(-351.534, -49.529, 49.042),
	vector3(241.727, 220.706, 106.286),
	vector3(1175.06, 2706.64, 38.09)
}