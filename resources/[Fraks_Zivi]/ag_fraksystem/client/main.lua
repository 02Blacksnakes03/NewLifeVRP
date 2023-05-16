-- für hilfe schriebt mich an Bvrtck#4823
-- leake es weil "kegel gangwar" user mit meinem script macht <3

local gang = "keine"
local oldgang = "keine"
local privatefraktionen = {}

local killslevel = 0

RegisterNetEvent('responseFraktionen')
AddEventHandler('responseFraktionen', function(list)
    privatefraktionen = json.decode(list)
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
		if NetworkIsSessionStarted() then
            TriggerServerEvent("diamond_stats:getStats")
            TriggerServerEvent('requestFraktionen')
			Wait(100)
			TriggerEvent("advanced:SetupUI")
			Wait(5000)
            TriggerEvent("rw:ready")
            DecorSetFloat(PlayerPedId(), "tode", 0.0)
            DecorSetFloat(PlayerPedId(), "kills", 0.0)
			return
		end
	end
end)
local imaduty = false
--aduty
RegisterNetEvent('onaduty')
AddEventHandler('onaduty', function()
    imaduty = true
end)

RegisterNetEvent('offaduty')
AddEventHandler('offaduty', function()
    imaduty = false
end)

RegisterNetEvent('RG:kill')
AddEventHandler('RG:kill', function()
	killslevel = killslevel+1
	if killslevel > 1 then
		killslevel = 0
        TriggerServerEvent('AddLevel')
	end
end)

RegisterNetEvent('RG:gangAPI')
AddEventHandler('RG:gangAPI', function(a)
	TriggerEvent(a, gang)
end)

--teamkill

local teamkills = 0

RegisterNetEvent('sendTeamkill')
AddEventHandler('sendTeamkill', function()
    teamkills = teamkills + 1
    if teamkills > 2 then
        TriggerServerEvent('kickPlayer')
    else
        TriggerEvent('rw_notification:showNotification', "Du hast jemanden geteamkillt. Warns: " .. teamkills .. " / 3")
    end
end)

RegisterNetEvent('proofTeamkill')
AddEventHandler('proofTeamkill', function(victim)
    TriggerServerEvent('sendToVictim', victim, gang)
end)

RegisterNetEvent('proofGang')
AddEventHandler('proofGang', function(gangk, player)
	if string.match(gang, "FFA") then
	else
		if string.match(gang, "1vs1") then
		else
			if string.match(gang, "Only") then
			else
				if gang == gangk then
                    TriggerServerEvent('confirmTeamkill', player)
				end
			end
		end
	end
end)

--ende teamkill

Citizen.CreateThread(function()
	while true do
		Wait(0)
		HideHudComponentThisFrame(7)
		HideHudComponentThisFrame(9)
		HideHudComponentThisFrame(3)
		HideHudComponentThisFrame(4)
		HideHudComponentThisFrame(13)
		HideHudComponentThisFrame(8)
		HideHudComponentThisFrame(6)
	end
end)

local notshown = false

Citizen.CreateThread(function()
   while true do
       Citizen.Wait(2000)      
           if IsEntityDead(PlayerPedId()) then 
					Wait(3000)
                    respawnPed(PlayerPedId())
				
			
		end
    end
end)

local IsChoosing = true

RegisterNetEvent('advanced:SetupUI')
AddEventHandler('advanced:SetupUI', function()
    local model = GetHashKey("mp_m_freemode_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(0)
    end
    SetPlayerModel(PlayerId(), "mp_m_freemode_01")	
	SetPedArmour(GetPlayerPed(-1), 100)
	SetEntityVisible(GetPlayerPed(-1), false)
    TriggerEvent('KleidungClose')
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openui",
        private = privatefraktionen
    })
end)

RegisterNetEvent('advanced:SpawnCharacter')
AddEventHandler('advanced:SpawnCharacter', function()
	SetEntityVisible(GetPlayerPed(-1), true)
    Wait(150)
    SetTimecycleModifier('default')
    if gang == "EL GRANDE" then
        oldgang = gang
        local pos = vector3(-1806.53, 462.44, 128.48)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        FreezeEntityPosition(GetPlayerPed(-1), false)
        Wait(500)
        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 2 )
    end

    if gang == "Pink Panthers" then
        oldgang = gang
        local pos = vector3(-114.36, 985.15, 235.75)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        FreezeEntityPosition(GetPlayerPed(-1), false)
        Wait(500)
        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 38 )
    end

    if gang == "nichts" then
        oldgang = gang
        local pos = vector3(-1521.14, 849.27, 181.59)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)
        FreezeEntityPosition(GetPlayerPed(-1), false)
        Wait(500)
        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 6 )
    end

    if gang == "keine" then
        SetPlayerModel(PlayerId(), "mp_m_freemode_01")	
        SetPedArmour(GetPlayerPed(-1), 100)
        SetEntityVisible(GetPlayerPed(-1), true)
        TriggerEvent('KleidungClose')
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "openui",
            private = privatefraktionen
        })
    end
    if gang == "GMBH" then
        oldgang = gang
        local pos = vector3(-1533.57, 96.55, 56.7293)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 40 )
    end
    if gang == "GZENGS" then
        oldgang = gang
        local pos = vector3(538.52, -1757.79, 29.16)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 1 )
    end
    if gang == "LIBANESEN" then
        oldgang = gang
        local pos = vector3(329.92, -202.12, 54.23)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 83 )
    end
    if gang == "GROVE" then
        oldgang = gang
        local pos = vector3(89.98, -1951.99)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 56 )
    end
    if gang == "Midnight" then
        oldgang = gang
        local pos = vector3(440.42, 228.51, 103.17)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 29 )
    end
    if gang == "Vagos" then
        oldgang = gang
        local pos = vector3(334.59, -2022.98, 21.79)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 5 )
    end
    if gang == "Tschechenen" then
        oldgang = gang
        local pos = vector3(-145.0, -1588.64, 34.84)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 3 )
    end
    if gang == "QZENGS" then
        oldgang = gang
        local pos = vector3(-1520.65, 849.41, 181.59)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 39 )
    end
    if gang == "Midnight" then
        oldgang = gang
        local pos = vector3(781.56, 1295.56, 361.36)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 4 )
    end

    if gang == "Medellin" then
        oldgang = gang
        local pos = vector3(440.42, 228.51, 103.17)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 31 )
    end

    if gang == "FFA" then
        oldgang = gang
        local pos = vector3(440.42, 228.51, 103.17)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 51 )
    end

    if gang == "Brigada" then
        oldgang = gang
        local pos = vector3(440.42, 228.51, 103.17)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 39 )
    end
    if gang == "" then
        oldgang = gang
        local pos = vector3(-1888.04, 2050.44, 140.98)
        SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
        DoScreenFadeIn(500)
        Wait(500)

        IsChoosing = false
        DisplayHud(true)
        DisplayRadar(true)
        SetPedArmour(GetPlayerPed(-1), 100)
        TriggerServerEvent("d-stats:ganglist", GetPlayerServerId(PlayerId(GetPlayerPed(PlayerId()))), gang, 39 )
    end
end)

RegisterNetEvent('advanced:ReloadCharacters')
AddEventHandler('advanced:ReloadCharacters', function()
    TriggerServerEvent("kashactersS:SetupCharacters")
    TriggerEvent("advanced:SetupCharacters")
end)

RegisterCommand('pistol', function(source, args)
    --[[  local model = GetHashKey("ig_djgeneric_01")
      RequestModel(model)
      while not HasModelLoaded(model) do
          RequestModel(model)
          Citizen.Wait(0)
      end
     SetPlayerModel(PlayerId(), "ig_djgeneric_01")--]]
     RemoveAllPedWeapons(GetPlayerPed(-1), false)
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
      spawnHLoc()
SetPedArmour(GetPlayerPed(-1), 100)
      gang = "Only-Pistol"
end)

RegisterCommand('ffa', function(source, args)
     RemoveAllPedWeapons(GetPlayerPed(-1), false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
     GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
      spawnHLoc()
SetPedArmour(GetPlayerPed(-1), 100)
      gang = "FFAMP"
end)

RegisterCommand('team', function(source, args)
        if imaduty == true then
            TriggerEvent("chatMessage", "Bitte verlasse den aduty-modus um den Befehl einzugeben.")
        elseif imaduty == false then
        Wait(100)
        TriggerEvent("advanced:SetupUI")
        end
    --end
end)

RegisterNetEvent('rg:team')
AddEventHandler('rg:team', function()
    Wait(100)
    TriggerEvent("advanced:SetupUI")
end)

RegisterNetEvent('quitall')
AddEventHandler('quitall', function()
    gang = oldgang
    Wait(100)
    TriggerEvent("advanced:SpawnCharacter")
    RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
end)

RegisterCommand('quitall', function(source, args)
        gang = oldgang
        Wait(100)
        TriggerEvent("advanced:SpawnCharacter")
        RemoveAllPedWeapons(GetPlayerPed(-1), false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
end)

RegisterNetEvent('gusenberg')
AddEventHandler('gusenberg', function()
    DoScreenFadeOut(2000)
    gang = "Only-Gusenberg"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)	
    spawnKLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNetEvent('knife')
AddEventHandler('knife', function()
    DoScreenFadeOut(2000)
    gang = "Only-Knife"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    RemoveAllPedWeapons(GetPlayerPed(-1), false)
	spawnGLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNetEvent('sniper')
AddEventHandler('sniper', function()
    DoScreenFadeOut(2000)
    gang = "Only-Sniper"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), 9999, true, false)
    spawnSLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNetEvent('pistol')
AddEventHandler('pistol', function()
    DoScreenFadeOut(2000)
    gang = "Only-Pistol"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
    RemoveWeaponFromPed(PlayerPedId(), GetHashKey("WEAPON_GUSENBERG"))
    spawnHLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNetEvent('FFAMP')
AddEventHandler('FFAMP', function()
    DoScreenFadeOut(2000)
    gang = "FFAMP"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
    spawnHLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNetEvent('revolver')
AddEventHandler('revolver', function()
    DoScreenFadeOut(2000)
    gang = "Only-Revolver"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_REVOLVER"), 9999, true, false)
	spawnZLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNetEvent('muskete')
AddEventHandler('muskete', function()
    DoScreenFadeOut(2000)
    gang = "Only-Muskete"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MUSKET"), 9999, true, false)
	spawnRLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNetEvent('marksman')
AddEventHandler('marksman', function()
    DoScreenFadeOut(2000)
    gang = "Only-Marksmanrifle"
    RemoveAllPedWeapons(PlayerPedId(), false)
    SetEntityHealth(PlayerPedId(), 0)
    Wait(4000)
    DoScreenFadeIn(1000)
	RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), 9999, true, false)
    spawnALoc()
	SetPedArmour(GetPlayerPed(-1), 100)
end)

RegisterNUICallback("CharacterChosen", function(data, cb)
   
    SetNuiFocus(false,false)
    SendNUIMessage({
        action = "close"
    })
    
	TriggerEvent('chatMessage','', {255, 255, 255}, "")
	TriggerEvent('chatMessage','', {255, 255, 255}, "")
	TriggerEvent('chatMessage','', {255, 255, 255}, "")
	TriggerEvent('chatMessage','', {255, 255, 255}, "")
	TriggerEvent('chatMessage','', {255, 255, 255}, "")
	TriggerEvent('chatMessage','', {255, 255, 255}, "")
	TriggerEvent('chatMessage','', {255, 255, 255}, "")
	TriggerEvent('chatMessage','^0[^5Advanced^0Gangwar^0]', {255, 255, 255}, " Herzlich willkommen auf Advanced Gangwar!")
    TriggerEvent('chatMessage','^0[^5Advanced^0Gangwar^0]', {255, 255, 255}, " Befehle:")
    TriggerEvent('chatMessage','^0[^5Advanced^0Gangwar^0]', {255, 255, 255}, " /team, /quitall, /ffa, /pistol")
    TriggerEvent('chatMessage','^0[^5Advanced^0Gangwar^0]', {255, 255, 255}, " Discord: https://discord.gg/7Ysc3Zvr2y")

    if data.charid == "1" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            ped = PlayerPedId()
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            		
            SetPedArmour(GetPlayerPed(-1), 100)
            gang = "EL GRANDE"
        end)
    end
    if data.charid == "2" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 0, 0, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 102, 2, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 31, 9, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 35, 0, 2) -- hose
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 0, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 10, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 12, 2, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 4, 0, 2) --arms
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
SetPedArmour(GetPlayerPed(-1), 100)	
            gang = "Pink Panthers"
        end)
    end
    if data.charid == "6" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 54, 0, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 72, 2, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 24, 0, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 0, 2) --weste
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 36, 3, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 20, 4, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 4, 0, 2) --arms
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)
            gang = "GMBH"
        end)
    end
	if data.charid == "5" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 0, 0, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 111, 3, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 28, 0, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 1, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 10, 0, 2) --schuhe
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 90, 0, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 28, 0, 2) --arms
            SetPedPropIndex(GetPlayerPed(-1), 0, 3, 1,2); -- hat
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)
            gang = "QZENGS"
        end)
    end
    if data.charid == "20" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 111, 18, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 93, 0, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 64, 1, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 1, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 7, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 0, 0, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 19, 0, 2) --arms
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
            SetPedPropIndex(GetPlayerPed(-1), 0, 104, 18,2); -- hat
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)
            gang = "LIBANESEN"
        end)
    end
    if data.charid == "8" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 51, 5, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 257, 11, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 5, 6, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 1, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 7, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
			SetPedComponentVariation(GetPlayerPed(-1), 7, 0, 0, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 0, 0, 2) --arms
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
            SetPedPropIndex(GetPlayerPed(-1), 0, 94, 4,2); -- hat
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)
            gang = "GROVE"
        end)
    end
    if data.charid == "9" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 111, 15, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 230, 4, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 75, 3, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 64, 10, 2) -- hose
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 1, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 6, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21, 4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 0, 0, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 20, 0, 2) --arms
            SetPedPropIndex(GetPlayerPed(-1), 0, 28, 1,2); -- hat
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)
            gang = "Midnight"
        end)
    end
    if data.charid == "11" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 51, 8, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 139, 3, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 5, 8, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 0, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 6, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 51, 0, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 4, 0, 2) --arms
            SetPedPropIndex(GetPlayerPed(-1), 0, 104, 20,2); -- hat
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
SetPedArmour(GetPlayerPed(-1), 100)	
            gang = "Vagos"	
        end)
    end
    if data.charid == "12" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), "mp_m_freemode_01")
            SetPedHeadBlendData(GetPlayerPed(-1), 0, 2, 1, 2) --skin
            SetPedComponentVariation(GetPlayerPed(-1), 1, 115, 16, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 50, 4, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 5, 5, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 4, 2, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 7, 0, 2) --schuhe
            SetPedComponentVariation(GetPlayerPed(-1), 7, 51, 0, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 4, 0, 2) --arms
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)	
            gang = "Tschechenen"	
        end)
    end
    respawnPed(GetPlayerPed(-1))
         
    TriggerEvent('advanced:SpawnCharacter')
    TriggerEvent('openKleidungsauswahl', gang)
    cb("ok")
end)

function randomWLoc(vec)
	local v = math.random (1, 6)
	local vec1 = vector3(158.24, -912.06, 30.18)
	local vec2 = vector3(230.95, -955.65, 29.32)
	local vec3 = vector3(246.61, -877.43, 30.49)
	local vec4 = vector3(194.69, -853.23, 31.01)
	local vec5 = vector3(150.65, -961.43, 30.09)
	local vec6 = vector3(201.04, -996.3, 30.09)

	if v == 1 then
		return vec1
	elseif v == 2 then
		return vec2
	elseif v == 3 then
		return vec3
	elseif v == 4 then
		return vec4
	elseif v == 5 then
		return vec5
	elseif v == 6 then
		return vec6
	end

end

function spawnWLoc()
	local v = math.random (1, 6)

	if v == 1 then
        TriggerEvent('playerSpawned', 158.24, -912.06, 30.18, 90)
		NetworkResurrectLocalPlayer(158.24, -912.06, 30.18, 90, true, false) --1
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 230.95, -955.65, 29.32, 90)
		NetworkResurrectLocalPlayer(230.95, -955.65, 29.32, 90, true, false) --2
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 246.61, -877.43, 30.49, 90)
		NetworkResurrectLocalPlayer(246.61, -877.43, 30.49, 90, true, false) --3
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 194.69, -853.23, 31.01, 90)
		NetworkResurrectLocalPlayer(194.69, -853.23, 31.01, 90, true, false) --4
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 150.65, -961.43, 30.09, 90)
		NetworkResurrectLocalPlayer(150.65, -961.43, 30.09, 90, true, false)--5
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 201.04, -996.3, 30.09, 90)
		NetworkResurrectLocalPlayer(201.04, -996.3, 30.09, 90, true, false) --6
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)			
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
	end

end

function spawnGLoc()
	local v = math.random (1, 6)

    if v == 1 then
		TriggerEvent('playerSpawned', 3034.58, -4683.67, 15.26, 273.58)
        NetworkResurrectLocalPlayer(3034.58, -4683.67, 15.26, 273.58, true, false)
        RemoveAllPedWeapons(GetPlayerPed(-1), false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    elseif v == 2 then
		TriggerEvent('playerSpawned', 3082.74, -4720.13, 15.26, 93.03)
        NetworkResurrectLocalPlayer(3082.74, -4720.13, 15.26, 93.03, true, false)
        RemoveAllPedWeapons(GetPlayerPed(-1), false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    elseif v == 3 then
		TriggerEvent('playerSpawned', 3102.76, -4777.08, 15.26, 68.2)
        NetworkResurrectLocalPlayer(3102.76, -4777.08, 15.26, 68.2, true, false)
        RemoveAllPedWeapons(GetPlayerPed(-1), false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    elseif v == 4 then
		TriggerEvent('playerSpawned', 3055.37, -4774.22, 15.26, 328.07)
        NetworkResurrectLocalPlayer(3055.37, -4774.22, 15.26, 328.07, true, false)
        RemoveAllPedWeapons(GetPlayerPed(-1), false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    elseif v == 5 then
		TriggerEvent('playerSpawned', 3057.97, -4606.92, 15.26, 172.9)
        NetworkResurrectLocalPlayer(3057.97, -4606.92, 15.26, 172.9, true, false)
        RemoveAllPedWeapons(GetPlayerPed(-1), false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    elseif v == 6 then
		TriggerEvent('playerSpawned', 3109.39, -4735.62, 15.26, 129.87)
        NetworkResurrectLocalPlayer(3109.39, -4735.62, 15.26, 129.87, true, false)
        RemoveAllPedWeapons(GetPlayerPed(-1), false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
	end

end

function spawnHLoc()
	local v = math.random (1, 9)

	if v == 1 then
		TriggerEvent('playerSpawned', -134.26, -959.26, 254.13, 124.44)
		NetworkResurrectLocalPlayer(-134.26, -959.26, 254.13, 124.44, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', -156.24, -948.03, 254.13, 172.54)
		NetworkResurrectLocalPlayer(-156.24, -948.03, 254.13, 172.54, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', -176.98, -980.96, 254.35, 90)
		NetworkResurrectLocalPlayer(-176.98, -980.96, 254.35, 90, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', -161.18, -1019.66, 254.13, 61.22)
		NetworkResurrectLocalPlayer(-161.18, -1019.66, 254.13, 61.22, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', -148.39, -1005.06, 254.13, 61.46)
		NetworkResurrectLocalPlayer(-148.39, -1005.06, 254.13, 61.46, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', -144.81, -987.92, 254.13, 138.05)
		NetworkResurrectLocalPlayer(-144.81, -987.92, 254.13, 138.05, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', -166.35, -974.76, 269.23, 306.05)
		NetworkResurrectLocalPlayer(-166.35, -974.76, 269.23, 306.05, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 8 then
		TriggerEvent('playerSpawned', -139.45, -952.85, 269.14, 122.82)
		NetworkResurrectLocalPlayer(-139.45, -952.85, 269.14, 122.82, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	elseif v == 9 then
		TriggerEvent('playerSpawned', -155.15, -982.37, 254.13, 140.62)
		NetworkResurrectLocalPlayer(-155.15, -982.37, 254.13, 140.62, true, false)
        Wait(10)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
	end

end

function spawnALoc()
	local v = math.random (1, 9)

	if v == 1 then
		TriggerEvent('playerSpawned', -211.95, 6269.99, 31.49, 90)
		NetworkResurrectLocalPlayer(-211.95, 6269.99, 31.49, 90, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', -172.74, 6244.51, 31.49, 90)
		NetworkResurrectLocalPlayer(-172.74, 6244.51, 31.49, 90, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', -151.09, 6266.21, 31.49, 90)
		NetworkResurrectLocalPlayer(-151.09, 6266.21, 31.49, 90, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', -190.07, 6317.45, 31.57, 90)
		NetworkResurrectLocalPlayer(-190.07, 6317.45, 31.57, 90, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', -155.58, 6309.44, 31.49, 90)
		NetworkResurrectLocalPlayer(-155.58, 6309.44, 31.49, 90, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', -140.55, 6285.33, 40.28, 90)
		NetworkResurrectLocalPlayer(-140.55, 6285.33, 40.28, 90, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', -153.39, 6299.84, 40.28, 90)
		NetworkResurrectLocalPlayer(-153.39, 6299.84, 40.28, 90, true, false)
	elseif v == 8 then
		TriggerEvent('playerSpawned', -213.52, 6297.94, 31.49, 90)
		NetworkResurrectLocalPlayer(-213.52, 6297.94, 31.49, 90, true, false)
	elseif v == 9 then
		TriggerEvent('playerSpawned', -184.79, 6228.6, 31.49, 90)
		NetworkResurrectLocalPlayer(-184.79, 6228.6, 31.49, 90, true, false)
	end

end

function spawnZLoc()
	local v = math.random (1, 9)

	if v == 1 then
		TriggerEvent('playerSpawned', 2423.43, 3150.42, 48.16, 90)
		NetworkResurrectLocalPlayer(2423.43, 3150.42, 48.16, 90, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 2401.73, 3117.6, 48.16, 90)
		NetworkResurrectLocalPlayer(2401.73, 3117.6, 48.16, 90, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 2420.5, 3114.56, 48.16, 90)
		NetworkResurrectLocalPlayer(2420.5, 3114.56, 48.16, 90, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 2392.59, 3077.22, 48.17, 90)
		NetworkResurrectLocalPlayer(2392.59, 3077.22, 48.17, 90, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 2354.03, 3033.31, 48.23, 90)
		NetworkResurrectLocalPlayer(2354.03, 3033.31, 48.23, 90, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 2337.53, 3051.2, 48.15, 90)
		NetworkResurrectLocalPlayer(2337.53, 3051.2, 48.15, 90, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', 2372.73, 3018.87, 48.15, 90)
		NetworkResurrectLocalPlayer(2372.73, 3018.87, 48.15, 90, true, false)
	elseif v == 8 then
		TriggerEvent('playerSpawned', 2346.26, 3068.12, 48.12, 90)
		NetworkResurrectLocalPlayer(2346.26, 3068.12, 48.12, 90, true, false)
	elseif v == 9 then
		TriggerEvent('playerSpawned', 2389.79, 3050.54, 48.22, 90)
		NetworkResurrectLocalPlayer(2389.79, 3050.54, 48.22, 90, true, false)
	end

end

function spawnTLoc()
	local v = math.random (1, 12)

	if v == 1 then
		TriggerEvent('playerSpawned', 868.4052, 5696.918, 554.6005, 90)
		NetworkResurrectLocalPlayer(868.4052, 5696.918, 554.6005, 90, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 857.5432, 5718.519, 554.6005, 90)
		NetworkResurrectLocalPlayer(857.5432, 5718.519, 554.6005, 90, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 860.9139, 5694.731, 554.6005, 90)
		NetworkResurrectLocalPlayer(860.9139, 5694.731, 554.6005, 90, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 890.3878, 5719.467, 554.6005, 90)
		NetworkResurrectLocalPlayer(890.3878, 5719.467, 554.6005, 90, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 928.2534, 5710.182, 554.4951, 90)
		NetworkResurrectLocalPlayer(928.2534, 5710.182, 554.4951, 90, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 928.325, 5735.54, 554.4951, 90)
		NetworkResurrectLocalPlayer(928.325, 5735.54, 554.4951, 90, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', 900.4504, 5735.54, 554.4951, 90)
		NetworkResurrectLocalPlayer(900.4504, 5735.54, 554.4951, 90, true, false)
	elseif v == 8 then
		TriggerEvent('playerSpawned', 890.0166, 5739.36, 554.4951, 90)
		NetworkResurrectLocalPlayer(890.0166, 5739.36, 554.4951, 90, true, false)
	elseif v == 9 then
		TriggerEvent('playerSpawned', 907.4755, 5701.583, 554.4951, 90)
		NetworkResurrectLocalPlayer(907.4755, 5701.583, 554.4951, 90, true, false)
	elseif v == 10 then
		TriggerEvent('playerSpawned', 918.1815, 5689.588, 554.4951, 90)
		NetworkResurrectLocalPlayer(918.1815, 5689.588, 554.4951, 90, true, false)
	elseif v == 11 then
		TriggerEvent('playerSpawned', 936.2581, 5702.207, 554.4951, 90)
		NetworkResurrectLocalPlayer(936.2581, 5702.207, 554.4951, 90, true, false)
	elseif v == 12 then
		TriggerEvent('playerSpawned', 901.2034, 5739.185, 554.4951, 90)
		NetworkResurrectLocalPlayer(901.2034, 5739.185, 554.4951, 90, true, false)
	end

end

function spawnFLoc()
	local v = math.random (1, 12)

	if v == 1 then
		TriggerEvent('playerSpawned', 48.32, 3639.25, 39.84, 90)
		NetworkResurrectLocalPlayer(48.32, 3639.25, 39.84, 90, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 66.25, 3685.02, 39.83, 90)
		NetworkResurrectLocalPlayer(66.25, 3685.02, 39.83, 90, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 94.93, 3636.66, 39.76, 90)
		NetworkResurrectLocalPlayer(94.93, 3636.66, 39.76, 90, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 68.76, 3752.57, 39.75, 90)
		NetworkResurrectLocalPlayer(68.76, 3752.57, 39.75, 90, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 23.89, 3725.56, 39.62, 90)
		NetworkResurrectLocalPlayer(23.89, 3725.56, 39.62, 90, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 96.13, 3749.94, 40.72, 90)
		NetworkResurrectLocalPlayer(96.13, 3749.94, 40.72, 90, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', 27.94, 3636.88, 39.94, 90)
		NetworkResurrectLocalPlayer(27.94, 3636.88, 39.94, 90, true, false)
	elseif v == 8 then
		TriggerEvent('playerSpawned', 9.24, 3677.22, 39.77, 90)
		NetworkResurrectLocalPlayer(9.24, 3677.22, 39.77, 90, true, false)
	elseif v == 9 then
		TriggerEvent('playerSpawned', 82.65, 3720.71, 39.75, 90)
		NetworkResurrectLocalPlayer(82.65, 3720.71, 39.75, 90, true, false)
	elseif v == 10 then
		TriggerEvent('playerSpawned', 43.43, 3697.54, 39.75, 90)
		NetworkResurrectLocalPlayer(43.43, 3697.54, 39.75, 90, true, false)
	elseif v == 11 then
		TriggerEvent('playerSpawned', 36.25, 3741.39, 39.69, 90)
		NetworkResurrectLocalPlayer(36.25, 3741.39, 39.69, 90, true, false)
	elseif v == 12 then
		TriggerEvent('playerSpawned', 71.18, 3646.78, 39.67, 90)
		NetworkResurrectLocalPlayer(71.18, 3646.78, 39.67, 90, true, false)
	end

end

function spawnRLoc()
	local v = math.random (1, 8)

	if v == 1 then
		TriggerEvent('playerSpawned', 1964.81, 3033.18, 47.06, 90)
		NetworkResurrectLocalPlayer(1964.81, 3033.18, 47.06, 90, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 1993.02, 3025.37, 47.06, 90)
		NetworkResurrectLocalPlayer(1993.02, 3025.37, 47.06, 90, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 2003.62, 3040.41, 47.21, 90)
		NetworkResurrectLocalPlayer(2003.62, 3040.41, 47.21, 90, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 1979.33, 3062.19, 47.16, 90)
		NetworkResurrectLocalPlayer(1979.33, 3062.19, 47.16, 90, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 2007.63, 3047.68, 47.21, 90)
		NetworkResurrectLocalPlayer(2007.63, 3047.68, 47.21, 90, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 2003.48, 3069.48, 47.05, 90)
		NetworkResurrectLocalPlayer(2003.48, 3069.48, 47.05, 90, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', 1994.54, 3049.42, 47.22, 90)
		NetworkResurrectLocalPlayer(1994.54, 3049.42, 47.22, 90, true, false)
	elseif v == 8 then
		TriggerEvent('playerSpawned', 1982.11, 3051.78, 47.22, 90)
		NetworkResurrectLocalPlayer(1982.11, 3051.78, 47.22, 90, true, false)
	end

end

function spawnKLoc()
	local v = math.random (1, 6)

	if v == 1 then
		TriggerEvent('playerSpawned', 975.79, -3103.9, 5.9, 192.22)
		NetworkResurrectLocalPlayer(975.79, -3103.9, 5.9, 192.22, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 966.25, -3015.64, 5.9, 212.96)
		NetworkResurrectLocalPlayer(966.25, -3015.64, 5.9, 212.96, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 978.67, -3080.17, 5.9, 338.96)
		NetworkResurrectLocalPlayer(978.67, -3080.17, 5.9, 338.96, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 882.02, -3044.05, 5.9, 160.36)
		NetworkResurrectLocalPlayer(882.02, -3044.05, 5.9, 160.36, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 886.24, -3096.77, 5.9, 322.16)
		NetworkResurrectLocalPlayer(886.24, -3096.77, 5.9, 322.16, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 976.38, -3108.3, 5.9, 345.98)
		NetworkResurrectLocalPlayer(976.38, -3108.3, 5.9, 345.98, true, false)
	end

end

AddEventHandler('playerSpawned', function()
	NetworkSetFriendlyFireOption(false)
    SetCanAttackFriendly(PlayerPedId(), false, false)
	Wait(3000)
	NetworkSetFriendlyFireOption(true)
    SetCanAttackFriendly(PlayerPedId(), true, true)
	TriggerEvent("rw_notification:showNotification","Dein Spawnschutz ist abgelaufen")
end)

function randomBLoc(vec)
    local v = math.random (1, 9)
    local vec1 = vector3(2016.11, 2705.81, 49.95)
    local vec2 = vector3(2050.14, 2729.17, 50.86)
    local vec3 = vector3(2070.64, 2761.98, 50.29)
    local vec4 = vector3(2058.15, 2818.47, 50.37)
    local vec5 = vector3(2024.42, 2857.08, 50.2)
    local vec6 = vector3(1987.55, 2847.34, 50.21)
    local vec7 = vector3(1962.92, 2789.59, 49.71)
    local vec8 = vector3(1981.46, 2743.55, 48.86)
    local vec9 = vector3(2013.33, 2783.32, 50.31)

    if v == 1 then
        return vec1
    elseif v == 2 then
        return vec2
    elseif v == 3 then
        return vec3
    elseif v == 4 then
        return vec4
    elseif v == 5 then
        return vec5
    elseif v == 6 then
        return vec6
    elseif v == 7 then
        return vec7
    elseif v == 8 then
        return vec8
    elseif v == 9 then
        return vec9
    end

end

function spawnBLoc()
	local v = math.random (1, 9)

	if v == 1 then
		TriggerEvent('playerSpawned', 2016.11, 2705.81, 49.95, 90)
		NetworkResurrectLocalPlayer(2016.11, 2705.81, 49.95, 90, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 2050.14, 2729.17, 50.86, 90)
		NetworkResurrectLocalPlayer(2050.14, 2729.17, 50.86, 90, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 2070.64, 2761.98, 50.29, 90)
		NetworkResurrectLocalPlayer(2070.64, 2761.98, 50.29, 90, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 2058.15, 2818.47, 50.37, 90)
		NetworkResurrectLocalPlayer(2058.15, 2818.47, 50.37, 90, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 2024.42, 2857.08, 50.2, 90)
		NetworkResurrectLocalPlayer(2024.42, 2857.08, 50.2, 90, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 1987.55, 2847.34, 50.21, 90)
		NetworkResurrectLocalPlayer(1987.55, 2847.34, 50.21, 90, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', 1962.92, 2789.59, 49.71, 90)
		NetworkResurrectLocalPlayer(1962.92, 2789.59, 49.71, 90, true, false)
	elseif v == 8 then
		TriggerEvent('playerSpawned', 1981.46, 2743.55, 48.86, 90)
		NetworkResurrectLocalPlayer(1981.46, 2743.55, 48.86, 90, true, false)
	elseif v == 9 then
		TriggerEvent('playerSpawned', 2013.33, 2783.32, 50.31, 90)
		NetworkResurrectLocalPlayer(2013.33, 2783.32, 50.31, 90, true, false)
	end

end

function spawnSLoc()
	local v = math.random (1, 7)

	if v == 1 then
		TriggerEvent('playerSpawned', 1759.21, 2532.67, 45.57, 96.98)
		NetworkResurrectLocalPlayer(1759.21, 2532.67, 45.57, 96.98, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 1706.19, 2526.65, 45.56, 271.81)
		NetworkResurrectLocalPlayer(1706.19, 2526.65, 45.56, 271.81, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 1742.76, 2559.71, 45.56, 154.47)
		NetworkResurrectLocalPlayer(1742.76, 2559.71, 45.56, 154.47, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 1690.54, 2475.01, 45.56, 353.62)
		NetworkResurrectLocalPlayer(1690.54, 2475.01, 45.56, 353.62, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 1660.08, 2511.65, 45.56, 247.48)
		NetworkResurrectLocalPlayer(1660.08, 2511.65, 45.56, 247.48, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 1715.39, 2502.13, 45.56, 5.47)
		NetworkResurrectLocalPlayer(1715.39, 2502.13, 45.56, 5.47, true, false)
	elseif v == 7 then
		TriggerEvent('playerSpawned', 1769.73, 2550.48, 45.56, 93.62)
		NetworkResurrectLocalPlayer(1769.73, 2550.48, 45.56, 93.62, true, false)
	end

end

Citizen.CreateThread(function()
	while true do
		Wait(1)
		id = PlayerId()
		DisablePlayerVehicleRewards(id)	
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)

		SetVehicleDensityMultiplierThisFrame(0.0)
		SetPedDensityMultiplierThisFrame(0.0)
		SetRandomVehicleDensityMultiplierThisFrame(0.0)
		SetParkedVehicleDensityMultiplierThisFrame(0.0)
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
		SetGarbageTrucks(false)
		SetRandomBoats(false)
		SetCreateRandomCops(false)
		SetCreateRandomCopsNotOnScenarios(false)
		SetCreateRandomCopsOnScenarios(false)
		
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		for i = 1, 12 do
			EnableDispatchService(i, false)
		end
		SetPlayerWantedLevel(PlayerId(), 0, false)
		SetPlayerWantedLevelNow(PlayerId(), false)
		SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
	end
end)

AddEventHandler('onClientMapStart', function()
	exports.spawnmanager:spawnPlayer()
	Wait(2500)
	exports.spawnmanager:setAutoSpawn(false)
end)

function respawnPed(ped)
    if gang == "EL GRANDE" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 54, 0, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 111, 3, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 15, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 28, 14, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 4, 1, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 10, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 28, 0, 2) --arms
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            				
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            TriggerEvent('playerSpawned', -1806.53, 462.44, 128.48, 181.85)
            NetworkResurrectLocalPlayer(-1806.53, 462.44, 128.48, 181.85, true, false) 
            SetPedArmour(GetPlayerPed(-1), 100)
        end)
    end
    if gang == "GMBH" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 54, 0, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 72, 2, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 33, 0, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 28, 0, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 0, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 10, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 62, 4, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 28, 0, 2) --arms
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)				
            TriggerEvent('playerSpawned', -1533.57, 96.55, 56.7293, 90)
            NetworkResurrectLocalPlayer(-1533.57, 96.55, 56.7293, 90, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)
        end)
    end
    if gang == "Pink Panthers" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            SetPedComponentVariation(GetPlayerPed(-1), 1, 0, 0, 2) --Maske
            SetPedComponentVariation(GetPlayerPed(-1), 11, 29, 0, 2) -- Troso
            SetPedComponentVariation(GetPlayerPed(-1), 8, 31, 9, 2) -- TSHIRT
            SetPedComponentVariation(GetPlayerPed(-1), 4, 28, 0, 2) -- hose
            SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 1, 2) --weste
            SetPedComponentVariation(GetPlayerPed(-1), 2, 1, 0, 2) --Gesicht
            SetPedComponentVariation(GetPlayerPed(-1), 6, 10, 0, 2) --schuhe
			SetPedComponentVariation(GetPlayerPed(-1), 2, 21,4, 2) --hair styles
            SetPedComponentVariation(GetPlayerPed(-1), 7, 12, 2, 2) --accessories
			SetPedComponentVariation(GetPlayerPed(-1), 10, 0, 0, 2) --decals
            SetPedComponentVariation(GetPlayerPed(-1), 3, 22, 0, 2) --arms
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
	        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)			
            TriggerEvent('playerSpawned', -114.36, 985.15, 235.75, 115.07)
            NetworkResurrectLocalPlayer(-114.36, 985.15, 235.75, 115.07, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)	
        end)
    end
	if gang == "QZENGS" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            TriggerEvent('playerSpawned', -1520.65, 849.41, 181.59, 40.84)
            NetworkResurrectLocalPlayer(-1520.65, 849.41, 181.59, 40.84, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)		
        end)
    end
	if gang == "LIBANESEN" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            				
            TriggerEvent('playerSpawned', 329.92, -202.12, 54.23, 166.07)
            NetworkResurrectLocalPlayer(329.92, -202.12, 54.23, 166.07, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)		
        end)
    end
	if gang == "GROVE" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            	
            TriggerEvent('playerSpawned', 89.98, -1951.99, 20.74, 303.48)
            NetworkResurrectLocalPlayer(89.98, -1951.99, 20.74, 303.48, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)		
        end)
    end
	if gang == "Midnight" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            				
            TriggerEvent('playerSpawned', 440.42, 228.51, 103.17, 168.66)
            NetworkResurrectLocalPlayer(440.42, 228.51, 103.17, 168.66, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)		
        end)
    end
    if gang == "Only-Pistol" then
        Citizen.CreateThread(function()
          --[[local model = GetHashKey("ig_djgeneric_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Citizen.Wait(0)
            end
           SetPlayerModel(PlayerId(), "ig_djgeneric_01")--]]
		   RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            spawnHLoc()
SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end
	if gang == "Vagos" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            TriggerEvent('playerSpawned', 334.59, -2022.98, 21.79, 46.59)
            NetworkResurrectLocalPlayer(334.59, -2022.98, 21.79, 46.59, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)		
        end)
    end
	if gang == "Tschechenen" then
        Citizen.CreateThread(function()
            local model = GetHashKey("mp_m_freemode_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            TriggerEvent("KleidungAnziehen")
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
            TriggerEvent('playerSpawned', -145.0, -1588.64, 34.84, 34.02)
            NetworkResurrectLocalPlayer(-145.0, -1588.64, 34.84, 34.02, true, false)
            SetPedArmour(GetPlayerPed(-1), 100)		
        end)
    end
	if gang == "FFA" then
        Citizen.CreateThread(function()
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)				
            spawnTLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end
	if gang == "FFA2" then
        Citizen.CreateThread(function()
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)					
            spawnFLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end
    
		if gang == "Only-Gusenberg" then
        Citizen.CreateThread(function()
		    RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)	
            spawnKLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end

	if gang == "Only-Knife" then
        Citizen.CreateThread(function()
		    RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)	
            spawnGLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end

	if gang == "Only-Sniper" then
        Citizen.CreateThread(function()
		    RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), 9999, true, false)
            spawnSLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end

	if gang == "Only-Pistol" then
        Citizen.CreateThread(function()
		    RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
            GiveWeaponComponentToPed (ped,WEAPON_PISTOL,COMPONENT_PISTOL_CLIP_02)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
            RemoveWeaponFromPed(PlayerPedId(), GetHashKey("WEAPON_GUSENBERG"))
            spawnHLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end
	
	if gang == "Only-Revolver" then
        Citizen.CreateThread(function()
		    RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_REVOLVER"), 9999, true, false)
            spawnZLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end

	if gang == "Only-Muskete" then
        Citizen.CreateThread(function()
		    RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MUSKET"), 9999, true, false)
            spawnRLoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end

	if gang == "Only-Marksmanrifle" then
        Citizen.CreateThread(function()
		    RemoveAllPedWeapons(GetPlayerPed(-1), false)
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_marksmanrifle"), 9999, true, false)
            spawnALoc()
            SetPedArmour(GetPlayerPed(-1), 100)			
        end)
    end

	SetPlayerInvincible(ped, false) 

	ClearPedBloodDamage(ped)
end


local coordonate = {
    {102.7, -1959.69, 20.83, nil, 159.95, nil, 0x6C19E962}, --grove
    {-151.1, -1579.63, 34.54, nil, 221.9, nil, 0x6C19E962}, --tschetschenen
    {-1520.03, 80.13, 56.76, nil, 22.17, nil, 0x6C19E962}, --3
    {-1527.53, 863.73, 181.78, nil, 313.48, nil, 0x6C19E962}, --4
    {-124.51, 979.45, 235.83, nil, 222.95, nil, 0x6C19E962}, --pinkpanthers
    {-1806.57, 449.58, 128.51, nil, 76.95, nil, 0x6C19E962}, --6
    {-1889.01, 2041.34, 140.93, nil, 75.57, nil, 0x6C19E962}, --elgrande
    {328.3, -203.5, 45.09, nil, 94.91, nil, 0x6C19E962}, --libos
    {331.14, -2020.1, 21.74, nil, 61.28, nil, 0x6C19E962}, --vagos
    {435.67, 215.54, 103.17, nil, 61.28, nil, 0x6C19E962}, --midnight
}

Citizen.CreateThread(function()
    for _,v in pairs(coordonate) do
      RequestModel(v[7])
      while not HasModelLoaded(v[7]) do
        Wait(1)
      end
  
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[7],v[1],v[2],v[3]-1, 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
	end
end)

local WaitTime = 2500

Citizen.CreateThread(function()
	SetDiscordAppId(DiscordAppId)
	SetDiscordRichPresenceAsset(DiscordAppAsset)
	while true do
		Wait(WaitTime)
        local playerCount = #GetActivePlayers()
        local playerName = GetPlayerName(PlayerId())
        local maxPlayerSlots = "256"
        SetRichPresence(string.format("Fraktion: %s - %s Spieler", gang, playerCount))
	end
end)

RegisterNetEvent('RG:healPlayer')
AddEventHandler('RG:healPlayer', function()
    SetPedArmour(GetPlayerPed(-1), 100)
end)

local drawText = function(text, x, y, font, r, g, b, a, scale, shadow)
	SetTextColour(r, g, b, a)
	SetTextFont(font)
	SetTextScale(scale, scale)

	if shadow then
		SetTextDropShadow(2, 2, 0, 0, 0)
	end

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(tostring(text))
	EndTextCommandDisplayText(x, y)
end


Citizen.CreateThread(function()
    while true do
        Wait(1)
        ped = PlayerPedId()
        SetPedInfiniteAmmo(ped, true, "WEAPON_PISTOL")
        SetPedInfiniteAmmo(ped, true, "WEAPON_HEAVYPISTOL")
        SetPedInfiniteAmmo(ped, true, "WEAPON_PISTOL50")
        SetPedInfiniteAmmo(ped, true, "WEAPON_GUSENBERG")
        SetPedInfiniteAmmo(ped, true, "WEAPON_SMG")
        SetPedInfiniteAmmo(ped, true, "WEAPON_MINISMG")
        SetPedInfiniteAmmo(ped, true, "WEAPON_ASSAULTRIFLE")
        SetPedInfiniteAmmo(ped, true, "weapon_carbinerifle")
        SetPedInfiniteAmmo(ped, true, "WEAPON_ADVANCEDRIFLE")
        SetPedInfiniteAmmo(ped, true, "WEAPON_BULLPUPRIFLE")
        SetPedInfiniteAmmo(ped, true, "WEAPON_KNIFE")
        SetPedInfiniteAmmo(ped, true, "WEAPON_BAT")
        SetPedInfiniteAmmo(ped, true, "weapon_militaryrifle")
        SetPedInfiniteAmmo(ped, true, "weapon_combatshotgun")
		SetPedInfiniteAmmo(ped, true, "weapon_pumpshotgun_mk2")
		SetPedInfiniteAmmo(ped, true, "weapon_heavyshotgun")
        SetPedInfiniteAmmo(ped, true, "weapon_compactrifle")
        SetPedInfiniteAmmo(ped, true, "WEAPON_COMBATPDW")
        if GetSelectedPedWeapon(PlayerPedId()) ~= -1569615261 then
            local bool, ammo = GetAmmoInClip(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()))
            drawText(ammo, 0.97, 0.12, 2, 200, 200, 200, 255, 0.5, true)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        ped = PlayerPedId()
		if gang == "Only-Sniper" then
        SetPedInfiniteAmmo(ped, true, "WEAPON_SNIPERRIFLE")
		end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        ped = PlayerPedId()
		if gang == "Only-Pistol" then
        SetPedInfiniteAmmo(ped, true, "WEAPON_PISTOL")
        SetPedInfiniteAmmo(ped, true, "WEAPON_HEAVYPISTOL")
        SetPedInfiniteAmmo(ped, true, "WEAPON_PISTOL50")
        RemoveWeaponFromPed(PlayerPedId(), GetHashKey("WEAPON_GUSENBERG"))
		end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        ped = PlayerPedId()
		if gang == "Only-Gusenberg" then
        SetPedInfiniteAmmo(ped, true, "WEAPON_GUSENBERG")
		end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        ped = PlayerPedId()
		if gang == "Only-Marksmanrifle" then
        SetPedInfiniteAmmo(ped, true, "weapon_marksmanrifle")
		end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        ped = PlayerPedId()
		if gang == "Only-Muskete" then
        SetPedInfiniteAmmo(ped, true, "weapon_musket")
		end
    end
end)

--FFA

RegisterNetEvent('ffa2')
AddEventHandler('ffa2', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
    Wait(100)
    gang = "FFA Schrottplatz"
    TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die FFA Arena zu verlassen!")
	spawnBLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
    end
end)

RegisterNetEvent('ffa3')
AddEventHandler('ffa3', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
    Wait(100)
    gang = "FFA Trainingslager"
    TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die FFA Arena zu verlassen!")
	spawnTLoc()
	SetPedArmour(GetPlayerPed(-1), 100)
    end
end)

RegisterNetEvent('ffa4')
AddEventHandler('ffa4', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
        Wait(100)
        gang = "FFA Sandy Shores"
        TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die FFA Arena zu verlassen!")
        spawnFLoc()
        SetPedArmour(GetPlayerPed(-1), 100)
    end
end)

RegisterNetEvent('gusenberg')
AddEventHandler('gusenberg', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
        Wait(100)
        gang = "Only-Gusenberg"
        TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die Only Zone zu verlassen!")
        spawnKLoc()
    end
end)

RegisterNetEvent('sniper')
AddEventHandler('sniper', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
        Wait(100)
        gang = "Only-Sniper"
        TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die Only Zone zu verlassen!")
        spawnSLoc()
    end
end)

RegisterNetEvent('marksman')
AddEventHandler('marksman', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
        Wait(100)
        gang = "Only-Marksmanrifle"
        TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die Only Zone zu verlassen!")
        spawnALoc()
    end
end)

RegisterNetEvent('knife')
AddEventHandler('knife', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
        Wait(100)
        gang = "Only-Knife"
        TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die Only Zone zu verlassen!")
        spawnGLoc()
    end
end)

RegisterNetEvent('revolver')
AddEventHandler('revolver', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
        Wait(100)
        gang = "Only-Revolver"
        TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die Only Zone zu verlassen!")
        spawnZLoc()
    end

end)

RegisterNetEvent('muskete')
AddEventHandler('muskete', function()
    if ansageingame == true then TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, "Du bist aktuell in einem 1vs1.") else
        Wait(100)
        gang = "Only-Muskete"
        TriggerEvent('chatMessage','^0[^1System^0]', {255, 255, 255}, " Gebe /quitall ein um die Only Zone zu verlassen!")
        spawnRLoc()
    end
end)

-- 1vs1

RegisterNetEvent("CGC:tpa")
RegisterNetEvent("CGC:tpaccept")
RegisterNetEvent("CGC:tpdeny")
RegisterNetEvent("CGC:teleport")

local requester = nil
local ansageingame = false

TriggerServerEvent("CGC:tpanewplayer")

AddEventHandler("CGC:tpa", function(newRequester, newRequesterName)
    requester = newRequester
    TriggerEvent("chatMessage", "^11VS1 ", {255, 255, 0}, newRequesterName .. " fordert dich zu einem 1vs1 heraus!")
    TriggerEvent("chatMessage", "^11VS1 ", {255, 255, 0}, "/accept oder /deny.")
end)

local gamestart = false

AddEventHandler("CGC:tpaccept", function()
    if requester == nil then
        TriggerEvent("chatMessage", "^11VS1 ", {255, 0, 0}, "Du hast noch keine Anfrage erhalten.")
        return
    end
    ansageingame = true
    TriggerServerEvent("CGC:tpastatus", PlayerId(), requester, true)
    SetEntityCoords(PlayerPedId(), 2094.646, 962.8706, 51.48137, 1, 0, 0, 1)
    AddArmourToPed(PlayerPedId(), 100)
    SetPedArmour(PlayerPedId(), 100)
    TriggerEvent("chatMessage", "^11VS1 ", {255, 255, 0}, "1vs1 Anfrage angenommen.")
	gang = "1vs1"
    requester = nil
end)

local wins = 0

RegisterNetEvent('runde')
AddEventHandler('runde', function()
    SetEntityHealth(PlayerPedId(), 200.0)
    AddArmourToPed(PlayerPedId(), 100)
    SetPedArmour(PlayerPedId(), 100)
    SetEntityCoords(PlayerPedId(), 2094.646, 962.8706, 52.48137, 1, 0, 0, 1)
    ansageingame = true
end)

RegisterNetEvent('runde2')
AddEventHandler('runde2', function()
    SetEntityHealth(PlayerPedId(), 200.0)
    AddArmourToPed(PlayerPedId(), 100)
    SetPedArmour(PlayerPedId(), 100)
    SetEntityCoords(PlayerPedId(), 2095.47, 999.94, 53.44, 1, 0, 0, 1)
    ansageingame = true
end)

RegisterNetEvent('win')
AddEventHandler('win', function(killer)
    Wait(2000)
	TriggerEvent('playerSpawned', 90.22, -1953.37, 20.82, 90)
    gang = oldgang
    TriggerEvent("advanced:SpawnCharacter")
    RemoveAllPedWeapons(GetPlayerPed(-1), false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
    SetEntityHealth(PlayerPedId(), 200.0)
end)

AddEventHandler("CGC:tpdeny", function()
    if requester == nil then
        TriggerEvent("chatMessage", "^11VS1 ", {255, 0, 0}, "Du hast noch keine Anfrage erhalten.")
        return
    end
    TriggerServerEvent("CGC:tpastatus", PlayerId(), requester, false)
    TriggerEvent("chatMessage", "^11VS1 ", {255, 255, 0}, "1vs1 Anfrage abgelehnt.")
    requester = nil
end)

AddEventHandler("CGC:teleport", function(target, accepted)
    if not accepted then
        TriggerEvent("chatMessage", "^11VS1 ", {255, 255, 0}, "Anfrage wurde abgelehnt.")
        return
    end
    ansageingame = true
    SetEntityCoords(PlayerPedId(), 2100.605, 997.4904, 51.48137, 1, 0, 0, 1)
	gang = "1vs1"
    TriggerEvent("chatMessage", "^11VS1 ", {255, 255, 0}, "Anfrage wurde angenommen.")
end)

Citizen.CreateThread(function()
	alreadyDead = false
    while true do
        Wait(50)
        local playerPed = GetPlayerPed(-1)

		if IsEntityDead(playerPed) and not alreadyDead and ansageingame == true then
			killer = GetPedKiller(playerPed)
			for id = 0, 255 do
                if killer == GetPlayerPed(id) then
                    killername = GetPlayerName(id)
                    killerPed = GetPlayerPed(id)
                    TriggerServerEvent("diamond_stats:addKill", GetPlayerServerId(id))
                    ansageingame = false
                    TriggerServerEvent('ansage:send')
					TriggerServerEvent('ewin', GetPlayerName(id))
					TriggerEvent('playerSpawned', 90.22, -1953.37, 20.82, 90)
                    gang = oldgang
                    TriggerEvent("advanced:SpawnCharacter")
                    RemoveAllPedWeapons(GetPlayerPed(-1), false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), 9999, true, false)
            		GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_compactrifle"), 9999, true, false) 
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNIFE"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BAT"), 9999, true, false)
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), 9999, true, false)
                    SetEntityCoords(PlayerPedId(), 2100.605, 997.4904, 52.48137, 1, 0, 0, 1)
                    SetEntityHealth(PlayerPedId(), 200.0)
                end				
			end
		end
        alreadyDead = true
		if not IsEntityDead(playerPed) then
			alreadyDead = false
		end
	end
end)

-- vehicle

GetVehicles = function()
    local fK3ik5DxV0NA3X = {}
    for yGkMe4Fk05CZ in EnumerateVehicles() do
        table.insert(fK3ik5DxV0NA3X, yGkMe4Fk05CZ)
    end
    return fK3ik5DxV0NA3X
end

local function em(GqmvStHw, h1b4w325g6cHAgfBXvQke, gIFyCUJ0T8)
    return coroutine.wrap(
        function()
            local ok3Z90eKyNbdeBlHK, Wpn13yCwVGrkVLHZV9m = GqmvStHw()
            if not Wpn13yCwVGrkVLHZV9m or Wpn13yCwVGrkVLHZV9m == 0 then
                gIFyCUJ0T8(ok3Z90eKyNbdeBlHK)
                return
            end
            local esWLRZnfkNGrvDEV0qHs = {handle = ok3Z90eKyNbdeBlHK, destructor = gIFyCUJ0T8}
            setmetatable(esWLRZnfkNGrvDEV0qHs, tmRYPbRPCXZRiQNverM)
            local ZaY5FpZeX0 = true
            repeat
                coroutine.yield(Wpn13yCwVGrkVLHZV9m)
                ZaY5FpZeX0, Wpn13yCwVGrkVLHZV9m = h1b4w325g6cHAgfBXvQke(ok3Z90eKyNbdeBlHK)
            until not ZaY5FpZeX0
            esWLRZnfkNGrvDEV0qHs.destructor, esWLRZnfkNGrvDEV0qHs.handle = nil, nil
            gIFyCUJ0T8(ok3Z90eKyNbdeBlHK)
        end
    )
end
function EnumerateObjects()
    return em(FindFirstObject, FindNextObject, EndFindObject)
end
function EnumeratePeds()
    return em(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return em(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumeratePickups()
    return em(FindFirstPickup, FindNextPickup, EndFindPickup)
end
function RequestControlOnce(ngt2A)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(ngt2A) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(ngt2A), true)
    return NetworkRequestControlOfEntity(ngt2A)
end

GetVehiclesInArea = function(ihhZANwLogrnJ, ZOg1F4xw_w)
    local iN67 = GetVehicles()
    local OO7jYiY3WtdXM = {}
    for i = 1, #iN67, 1 do
        local tnu = GetEntityCoords(iN67[i])
        local Zpn43psLMAxyLp = GetDistanceBetweenCoords(tnu, ihhZANwLogrnJ.x, ihhZANwLogrnJ.y, ihhZANwLogrnJ.z, true)
        if Zpn43psLMAxyLp <= ZOg1F4xw_w then
            table.insert(OO7jYiY3WtdXM, iN67[i])
        end
    end
    return OO7jYiY3WtdXM
end

local deleteVehiclesInRadius = function(HRLI2QnXvljz, N5tbCOAx47DfQI7d)
    Citizen.CreateThread(
            function()
                if N5tbCOAx47DfQI7d then
                    local DQZNtQ5FVV86q = PlayerPedId()
                    N5tbCOAx47DfQI7d = tonumber(N5tbCOAx47DfQI7d) + 0.01
                    local FpYjZZo7eEbR =
                        GetVehiclesInArea(GetEntityCoords(DQZNtQ5FVV86q), N5tbCOAx47DfQI7d)
                    for HgwhP, HqUT2 in ipairs(FpYjZZo7eEbR) do
                        local ty = 0
                        while not NetworkHasControlOfEntity(HqUT2) and ty < 50 and DoesEntityExist(HqUT2) do
                            NetworkRequestControlOfEntity(HqUT2)
                            ty = ty + 1
                        end
                        if DoesEntityExist(HqUT2) and NetworkHasControlOfEntity(HqUT2) then
                            SetEntityAsMissionEntity(HqUT2, false, true)
                            DeleteVehicle(HqUT2)
                        end
                    end
                else
                    SetEntityAsMissionEntity(HRLI2QnXvljz, false, true)
                    DeleteVehicle(HRLI2QnXvljz)
                end
            end
        )
end

--wand
local bereiche = {
	{ ['x'] = 194.89, ['y'] = -932.62, ['z'] = 20.82}
}

local drinnen = false
local drausen = false
local closestZone = 1


Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Wait(0)
	end
	
	while true do
		local playerPed = GetPlayerPed(-1)
		local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		local minDistance = 100000
		for i = 1, #bereiche, 1 do
			dist = Vdist(bereiche[i].x, bereiche[i].y, bereiche[i].z, x, y, z)
			if dist < minDistance then
				minDistance = dist
				closestZone = i
			end
		end
		Wait(15000)
	end
end)
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local minDistance = 100000

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Wait(0)
	end
	
	while true do
		Wait(0)
		local isInMarker  = false
		local currentZone = nil
		local player = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(player, true))
		local dist = Vdist(bereiche[closestZone].x, bereiche[closestZone].y, bereiche[closestZone].z, x, y, z)
		
		for i = 1, #bereiche, 1 do
			if dist <= 93.0 then
			--dist = Vdist(bereiche[i].x, bereiche[i].y, bereiche[i].z, x, y, z)
				isInMarker  = true
				currentZone = i
		end
			if not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('rg_wand:exit', LastZone)
				if gang == "FFA Würfelpark" and imaduty == false then
					TriggerEvent("ffa")
					gang = oldgang
				end
			end
			

			if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
				HasAlreadyEnteredMarker = true
				LastZone                = currentZone
				TriggerEvent('rg_wand:entered', currentZone)
				gang = "FFA Würfelpark"
			end
			if not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = true
				TriggerEvent('rg_wand:exit', LastZone)
			end
		end
		if isInMarker then
		end
	 	if DoesEntityExist(player) then
	 		DrawMarker(1, bereiche[closestZone].x, bereiche[closestZone].y, bereiche[closestZone].z-1.0001, 0, 0, 0, 0, 0, 0,--[[ länge --]] 182.0, --[[ breite --]] 182.0, --[[ höhe --]] 20.0, 255, 0, 0, 155, 0, 0, 2, 0, 0, 0, 0)
	 	end
	end
end)

function spawnWLoc()
	local v = math.random (1, 6)

	if v == 1 then
		TriggerEvent('playerSpawned', 158.24, -912.06, 30.18, 90)
		NetworkResurrectLocalPlayer(158.24, -912.06, 30.18, 90, true, false)
	elseif v == 2 then
		TriggerEvent('playerSpawned', 230.95, -955.65, 29.32, 90)
		NetworkResurrectLocalPlayer(230.95, -955.65, 29.32, 90, true, false)
	elseif v == 3 then
		TriggerEvent('playerSpawned', 246.61, -877.43, 30.49, 90)
		NetworkResurrectLocalPlayer(246.61, -877.43, 30.49, 90, true, false)
	elseif v == 4 then
		TriggerEvent('playerSpawned', 194.69, -853.23, 31.01, 90)
		NetworkResurrectLocalPlayer(194.69, -853.23, 31.01, 90, true, false)
	elseif v == 5 then
		TriggerEvent('playerSpawned', 150.65, -961.43, 30.09, 90)
		NetworkResurrectLocalPlayer(150.65, -961.43, 30.09, 90, true, false)
	elseif v == 6 then
		TriggerEvent('playerSpawned', 201.04, -996.3, 30.09, 90)
		NetworkResurrectLocalPlayer(201.04, -996.3, 30.09, 90, true, false)
	end

end
AddEventHandler('rg_wand:entered', function(zone)
	if IsPedInAnyVehicle(PlayerPedId(), true) and imaduty == false then
		deleteVehiclesInRadius(GetVehiclePedIsIn(PlayerPedId(), 0), 1.0)
		local isInMarker  = false
		TriggerEvent("ffa")
	else
        if imaduty == false then
	    TriggerEvent("ffa")
        end
	end
end)

--[[AddEventHandler('rg_wand:exit', function(zone)
	if isInMarker then
	end
end)--]]

Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
        local coke1 = CreateObject("prop_drug_package", 994.436, -2907.12, 5.00214, true, true, true)
        PlaceObjectOnGroundProperly(coke1)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end)