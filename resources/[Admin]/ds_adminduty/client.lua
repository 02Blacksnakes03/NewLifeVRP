local duty = false
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

function cleanPlayer(playerPed)
    SetPedArmour(playerPed, 0)
    ClearPedBloodDamage(playerPed)
    ResetPedVisibleDamage(playerPed)
    ClearPedLastWeaponDamage(playerPed)
    ResetPedMovementClipset(playerPed, 0)
end

function setUniform(playerPed)
    local playerPed = PlayerPedId()
    
    TriggerEvent('skinchanger:getSkin', function(skin)
        ESX.TriggerServerCallback("Admin:getRankFromPlayer", function(group)
            if skin.sex == 0 then
                if group == "superadmin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.superadmin.male)
                elseif gourp == "mina" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mina.male)
                elseif group == "admin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.admin.male)
                elseif group == "mod" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mod.male)
                elseif group == "support" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.user.male)					
                end
            else
                if group == "superadmin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.superadmin.female)
                elseif gourp == "mina" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mina.female)    
                elseif group == "admin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.admin.female)
                elseif group == "mod" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mod.female)
                elseif group == "support" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.user.female)					
                end
            end
        end)
    end)
end

RegisterNetEvent("toggleDuty")
AddEventHandler("toggleDuty", function()
    local playerPed = PlayerPedId()
    if duty then
        duty = false
        --TriggerEvent("chatMessage", "🤖^7» ^8AdminDuty ^7| Sie befinden sich nicht mehr im dienst. Verwenden Sie ^8 /aduty ^7, um zum Service zur�ckzukehren.")
		TriggerEvent('notifications', "#cc0000", "Admin-Dienst", "AdminDuty wurde Deaktiviert!")
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
            TriggerEvent('skinchanger:loadSkin', skin)
            SetEntityInvincible(playerPed, false)
            SetPedCanRagdoll(GetPlayerPed(-1), true)
        end)
    else
        duty = true
        TriggerEvent('notifications', "#cc0000", "Admin-Dienst", "AdminDuty wurde Aktiviert!")
        SetEntityInvincible(playerPed, true)
        SetPedCanRagdoll(GetPlayerPed(-1), false)
        setUniform()
    end 
    SendNUIMessage({ show = duty })
end)

