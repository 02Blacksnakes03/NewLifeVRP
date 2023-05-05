ESX                             = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

local isJudge = false
local isPolice = false
local isMedic = false
local isDoctor = false
local isNews = false
local isTaksi = false
local isMechanic = false


local isDead = false
local isInstructorMode = false
local isHandcuffed = false
local isHandcuffedAndWalking = false
local hasOxygenTankOn = false
local gangNum = 0
local cuffStates = {}
local HandcuffTimer = {}



rootMenuConfig =  {
    {
        id = "general",
        displayName = "Yleinen",
        icon = "#globe-europe",
        enableMenu = function()

            return not isDead 
        end,
        subMenus = {   "zar",  "bilgiler", "emsihbar"}
    },
    {
        id = "vatandas",
        displayName = "Sivil",
        icon = "#vatandas",
        enableMenu = function()

            return not isDead 
        end,
        subMenus = {  "carry:omzundatasi","carry:kucagindatasi", "elkoy", "ustunuara", "general:escort"}
    },

    {
        id = "police-action",
        displayName = "Poliisin toimenpiteet",
        icon = "#police-action",
        enableMenu = function()

            return  (isPolice and not isDead)
            
        end,
    
        subMenus = { "general:escort","police:hapisegonder", "gsr", "police:bill", "police:frisk", "kelepcecoz", "police:ara" , "police:mdt","police:aracakoy", "police:aractancıkar", "policearac:kilitac", "policearac:aracbagla", "policearac:aracinfo", "policearac:radarac", "police:gps", "police:gps1" }
    },
   --[[ {
        id = "k9",
        displayName = "K9",
        icon = "#k9",
        enableMenu = function()

            return  (isPolice and not isDead)
            
        end,
    
        subMenus = { "K9:cikar","K9:koy", "K9:oturkalk", "K9:saldir", "K9:uyusturucuara" }
    },]]--
    {
        id = "emsaction",
        displayName = "Lääkäri",
        icon = "#ambulance",
        enableMenu = function()
            return (isMedic and not isDead)
        end,
        subMenus = { "ems:tedavi", "ems:kucukyaralar", "ems:buyukyaralar", "ems:aracakoy", "ems:aractancıkar", "general:escort","ems:kucagindatasi"}

    },
    {
        id = "animations",
        displayName = "Animaatiot",
        icon = "#walking",
        functionName = "animasyon",

        enableMenu = function()
            return not isDead
        end,
    },
    {
        id = "expressions",
        displayName = "Vaatetus",
        icon = "#expressions",
        enableMenu = function()
            return not isDead
        end,
        subMenus = { "giyim:normal", "giyim:maske","giyim:giyin", "giyim:kask", "giyim:canta", "giyim:pantolon", "giyim:ayakkabı"}
    },
    {
        id = "blips",
        displayName = "Kartta",
        icon = "#blips1",
        enableMenu = function()
            return not isDead
        end,
        subMenus = { "blips:gasstations", "blips:barbershop", "blips:tattooshop", "blips:clothes", "blips:garage", "blips:banka", "blips:dövmeci"}
    },
    {
        id = "mechanic",
        displayName = "Mekaanikko",
        icon = "#mekanik",
        enableMenu = function()
            return  (isMechanic and not isDead )
        end,
        subMenus = { "mekanik:faturakes", "mekanik:kilit", "mekanik:tamir", "mekanik:temizlik", "mekanik:aracbagla", "mekanik:flatbed"}
    },
    {
        id = "taksi",
        displayName = "Taksi",
        icon = "#vehicle-options-vehicle",
        enableMenu = function()
            return  ( isTaksi and not isDead )
        end,
        subMenus = { "taxi:taksimetre", "taxi:fatura","taxi:taksimetrekapat" }
    },
    {
        id = "vehicle",
        displayName = "Ajoneuvo",
        icon = "#vehicle-options-vehicle",
        functionName = "carcontrol:open",
        enableMenu = function()
            return (not isDead and IsPedInAnyVehicle(PlayerPedId(), false))
        end
    },
    {
        id = "kimlik",
        displayName = "Kimlik",
        icon = "#blips",
        enableMenu = function()
            return not isDead
        end,
        subMenus = { "kimlik:ehliyetbak", "kimlik:kimlikbak", "kimlik:ehliyetver", "kimlik:kimlikver"}
    },



}

newSubMenus = {
    ['policearac:kilitac'] = {
        title = "Kilidi Aç",
        icon = "#kilitac",
        functionName = "AracKilit"
    },
    ['policearac:aracbagla'] = {
        title = "Araç Bağla",
        icon = "#policearac:aracbagla",
        functionName = "wk:deleteVehicle"
    },
    ['kelepce'] = {
        title = "Kelepçele",
        icon = "#police-action-frisk",
        functionName = "cuffanim"
    },
    ['ustunuara'] = {
        title = "Üstünü Ara",
        icon = "#police-ara",
        functionName = "disc-inventoryhud:steal"
    },
    ['police:mdt'] = {
        title = "Bilgisayarı Aç",
        icon = "#police-mdt",
        functionName = "mdt:Tablet"
    },
    ['ems:tablet'] = {
        title = "Bilgisayarı Aç",
        icon = "#police-mdt",
        functionName = "ems:Tablet"
    },
    ['police:hapisegonder'] = {
        title = "Hapise Gönder",
        icon = "#jail",
        functionName = "esx-qalle-jail:openJailMenu"
    },
    ['emsihbar'] = {
        title = "EMS İhbar",
        icon = "#ambulance",
        functionName = "emsihbar3"
    },
    ['policearac:radarac'] = {
        title = "Radarı Etkinleştir",
        icon = "#radar",
        functionName = "wk:radarRC"
    },

    ['K9:cikar'] = {
        title = "Çıkar",
        icon = "#k9-spawn",
        functionName = "k9spawn"
    },
    ['K9:koy'] = {
        title = "İndir/Bindir",
        icon = "#k9-vehicle",
        functionName = "aracakoy"
    },
    ['K9:oturkalk'] = {
        title = "Otur/Kalk",
        icon = "#k9-sit",
        functionName = "oturkalk"
    },

    ['K9:saldir'] = {
        title = "Saldır",
        icon = "#k9-dismiss",
        functionName = "saldir"
    },
    ['K9:uyusturucuara'] = {
        title = "Koklat",
        icon = "#k9-sniff",
        functionName = "uyusturucuara"
    },

    ['police:bill'] = {
        title = "Ceza Kes",
        icon = "#police-bill",
        functionName = "OpenFineMenu2"
    },

    ['gsr'] = {
        title = "GSR Test",
        icon = "#police-action-gsr",
        functionName = "gsr"
    },

    ['police:gps'] = {
        title = "GPS Aç",
        icon = "#radar",
        functionName = "exelds:GPSStart"
    },

    ['police:gps1'] = {
        title = "GPS Kapat",
        icon = "#radar",
        functionName = "exelds:GPSStop"
    },

    ['mekanik:faturakes'] = {
        title = "Fatura Kes",
        icon = "#police-bill",
        functionName = "mekanikfatura"
    },

    ['mekanik:kilit'] = {
        title = "Kilidi Aç",
        icon = "#kilitac",
        functionName = "mekanikkilit"
    },

    ['mekanik:tamir'] = {
        title = "Tamir Et",
        icon = "#tamir",
        functionName = "mekaniktamir"
    },

    ['mekanik:temizlik'] = {
        title = "Temizle",
        icon = "#temizle2",
        functionName = "mekaniktemizlik"
    },

    ['mekanik:aracbagla'] = {
        title = "Araç Bağla",
        icon = "#policearac:aracbagla",
        functionName = "deletecar"
    },
    ['mekanik:flatbed'] = {
        title = "Flatbed",
        icon = "#aracakoy",
        functionName = "flatbed"
    },
    
    ['police:aracakoy'] = {
        title = "Araca Koy",
        icon = "#aracakoy",
        functionName = "esx_policejob:aracakoy"
    },
    
    ['police:aractancıkar'] = {
        title = "Araçtan İndir",
        icon = "#police-aractancıkar",
        functionName = "esx_policejob:aractanindir"
    },

    ['ems:aracakoy'] = {
        title = "Araca Koy",
        icon = "#aracakoy",
        functionName = "esx_policejob:aracakoy"
    },

    ['ems:tedavi'] = {
        title = "Canlandır",
        icon = "#ilkyardim",
        functionName = "ems:tedavi"
    },

    ['ems:kucukyaralar'] = {
        title = "Küçük Yaralar",
        icon = "#kucukyara",
        functionName = "ems:kucukyaralar"
    },

    ['ems:buyukyaralar'] = {
        title = "Büyük Yaralar",
        icon = "#buyukyara",
        functionName = "ems:buyukyaralar"
    },

    ['ems:aractancıkar'] = {
        title = "Araçtan İndir",
        icon = "#police-aractancıkar",
        functionName = "esx_policejob:aractanindir"
    },
    ['blips:gasstations'] = {
        title = "Benzin istasyonları",
        icon = "#blips-gasstations",
        functionName = "ygx:togglegas"
    },
    ['blips:barbershop'] = {
        title = "Berber",
        icon = "#blips-barbershop",
        functionName = "ygx:togglebarber"
    },    
    ['blips:tattooshop'] = {
        title = "Dövme",
        icon = "#blips-tattooshop",
        functionName = "ygx:toggletattos"
    },
    ['blips:clothes'] = {
        title = "Kıyafetçi",
        icon = "#clothes1",
        functionName = "ygx:toggleclothes"
    },
    ['blips:garage'] = {
        title = "Garaj",
        icon = "#blips-garages",
        functionName = "ygx:garage"
    },
    ['blips:banka'] = {
        title = "Banka",
        icon = "#blips-banka",
        functionName = "ygx:banka"
    },
    ['police:ara'] = {
        title = "Üstünü Ara",
        icon = "#police-ara",
        functionName = "disc-inventoryhud:search"
    },

    ['taxi:fatura'] = {
        title = "Fatura Kes",
        icon = "#police-bill",
        functionName = "taxi:fatura"
    },

    ['taxi:taksimetre'] = {
        title = "Taksimetreyi Aç",
        icon = "#vehicle-options-vehicle",
        functionName = "taksimetre"
    },

    ['taxi:taksimetrekapat'] = {
        title = "Taksimetreyi Kapat",
        icon = "#aracbilgi",
        functionName = "taksimetre"
    },
    
    ['policearac:aracinfo'] = {
        title = "Araç Bilgisi",
        icon = "#aracbilgi",
        functionName = "VehicleInfo"
    },
    ['general:escort'] = {
        title = "Taşı",
        icon = "#general-escort",
        functionName = "esx_rope:ropecheck"
    },

    ['carry:omzundatasi'] = {
        title = "Omzunda Taşı",
        icon = "#general-escort",
        functionName = "CarryPeople"
    },

    ['carry:kucagindatasi'] = {
        title = "Kucağında Taşı",
        icon = "#police-action-frisk",
        functionName = "lift"
    },

    
    ['ems:kucagindatasi'] = {
        title = "Kucağında Taşı",
        icon = "#police-action-frisk",
        functionName = "lift"
    },

    ['zar'] = {
        title = "Zar At",
        icon = "#dice",
        functionName = "zarat"
    },
    ['elkoy'] = {
        title = "Rehin Al",
        icon = "#rehinal",
        functionName = "takehostage"
    },
    ['police:frisk'] = {
        title = "Kelepçele",
        icon = "#police-action-frisk",
        functionName = "cuffanim"
    },
    ['kelepcecoz'] = {
        title = "Kelepçe Çöz",
        icon = "#police-action-frisk",
        functionName = "uncuffanim"
    },
    ['kimlik:ehliyetbak'] = {
        title = "Ehliyetine Bak",
        icon = "#ehliyetgör",
        functionName = "ehliyetgör"
    },    
    ['kimlik:kimlikbak'] = {
        title = "Kimliğine Bak",
        icon = "#kimlikgör",
        functionName = "kimlikgör"
    },
    ['kimlik:ehliyetver'] = {
        title = "Ehliyetini Ver",
        icon = "#ehliyetgör",
        functionName = "ehliyetver"
    },    
    ['kimlik:kimlikver'] = {
        title = "Kimliğini Ver",
        icon = "#kimlikgör",
        functionName = "kimlikver"
    },

    ["giyim:kask"] = {
        title="Kask",
        icon="#giyim-kask",
        functionName = "kask"
        },
    ["giyim:maske"] = {
        title="Maske",
        icon="#giyim-maske",
        functionName = "maske",
    },
    ["giyim:canta"] = {
        title="Çanta",
        icon="#giyim-canta",
        functionName = "canta"
        },
    ["giyim:pantolon"] = {
        title="Pantolon",
        icon="#giyim-pantolon",
        functionName = "pantolon",
    },
    ["giyim:ayakkabı"] = {
        title="Ayakkabı",
        icon="#giyim-ayakkabı",
        functionName = "ayakkabı"
        },
    ["giyim:giyin"] = {
        title="Giyin",
        icon="#giyin-happy",
        functionName = "giyin"
        },

    ["giyim:normal"]  = {
        title="Tişört",
        icon="#giyim-tshirt",
        functionName = "tshirt"
    }
}

RegisterNetEvent('tshirt')
AddEventHandler('tshirt', function()  
    TriggerEvent('skinchanger:getSkin', function(skin)
		local playerPed = GetPlayerPed(-1)

		RequestAnimDict('clothingshirt')
		while not HasAnimDictLoaded('clothingshirt') do
			Citizen.Wait(1)
		end

		TaskPlayAnim(playerPed, "clothingshirt", "check_out_b", 3.5, -8, -1, 49, 0, 0, 0, 0) 
		Citizen.Wait(3500)
	    ClearPedTasks(playerPed)


		local clothesSkin = {
		['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 15, ['torso_2'] = 0,
		['arms'] = 15, ['arms_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
end)


    Citizen.CreateThread(function(job, name)
        while true do
    
            Citizen.Wait(0)

    if isMedic and job ~= "ems" then isMedic = false end
    if isPolice and ESX.PlayerData.job and ESX.PlayerData.job.name ~= 'police' then isPolice = false end
    if isTaksi and ESX.PlayerData.job and ESX.PlayerData.job.name ~= 'taxi' then isTaksi = false end
    if isMechanic and ESX.PlayerData.job and ESX.PlayerData.job.name ~= 'mechanic' then isMechanic = false end

    if isDoctor and job ~= "doctor" then isDoctor = false end
    if isNews and job ~= "news" then isNews = false end
    if  ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then isPolice = true end
    if  ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'ambulance' then isMedic = true end
    if  ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'taxi' then isTaksi = true end
    if  ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'mechanic' then isMechanic = true end

    if job == "news" then isNews = true end
    if  ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'ambulance' then isDoctor = true end
        end
end)

RegisterNetEvent('pd:deathcheck')
AddEventHandler('pd:deathcheck', function()
    if not isDead then
        isDead = true
    else
        isDead = false
    end
end)



function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            players[#players+1]= i
        end
    end

    return players
end


RegisterNetEvent('maske')
AddEventHandler('maske', function()
    local playerPed = GetPlayerPed(-1)

    RequestAnimDict('misscommon@std_take_off_masks')
    while not HasAnimDictLoaded('misscommon@std_take_off_masks') do
        Citizen.Wait(1)
    end

    RequestAnimDict('mp_masks@on_foot')
    while not HasAnimDictLoaded('mp_masks@on_foot') do
        Citizen.Wait(1)
    end

    if not mask then
    mask = true
    MaskDrawable, MaskTexture, MaskPalette = GetPedDrawableVariation(playerPed, 1), GetPedTextureVariation(playerPed, 1), GetPedPaletteVariation(playerPed, 1)
    TaskPlayAnim(playerPed, "misscommon@std_take_off_masks", "take_off_mask_rps", 3.5, -8, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1000)
    SetPedComponentVariation(playerPed, 1, 0, 0, MaskPalette)
    ClearPedTasks(playerPed)
end
end)



RegisterNetEvent('kask')
AddEventHandler('kask', function() 
       local playerPed = GetPlayerPed(-1)

    RequestAnimDict('veh@common@fp_helmet@')
    while not HasAnimDictLoaded('veh@common@fp_helmet@') do
        Citizen.Wait(1)
    end

    RequestAnimDict('missheistdockssetup1hardhat@')
    while not HasAnimDictLoaded('missheistdockssetup1hardhat@') do
        Citizen.Wait(1)
    end

    if not hat then 
    hat = true
    HatDrawable, HatTexture = GetPedPropIndex(playerPed, 0), GetPedPropTextureIndex(playerPed, 0)
    TaskPlayAnim(playerPed, "veh@common@fp_helmet@", "take_off_helmet_stand", 3.5, -8, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(800)
    ClearPedProp(playerPed, 0)
    Citizen.Wait(400)
    ClearPedTasks(playerPed)
end
end)

    RegisterNetEvent('canta')
AddEventHandler('canta', function()  
    local playerPed = GetPlayerPed(-1)

    RequestAnimDict('missclothing')
    while not HasAnimDictLoaded('missclothing') do
        Citizen.Wait(1)
    end

    if not ryg then
    ryg = true
    rygDrawable, rygTexture, rygPalette = GetPedDrawableVariation(playerPed, 5), GetPedTextureVariation(playerPed, 5), GetPedPaletteVariation(playerPed, 5)
    TaskPlayAnim(playerPed, "missclothing", "wait_choice_a_storeclerk", 3.5, -8, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(3000)
    SetPedComponentVariation(playerPed, 5, 0, 0, rygPalette)
    ClearPedTasks(playerPed)
else 
    ryg = false
    TaskPlayAnim(playerPed, "missclothing", "wait_choice_a_storeclerk", 3.5, -8, -1, 49, 0, 0, 0, 0) 
    Citizen.Wait(3000)
    SetPedComponentVariation(playerPed, 5, rygDrawable, rygTexture, rygPalette)
    ClearPedTasks(playerPed)
end
end)


    RegisterNetEvent('tshirt')
AddEventHandler('tshirt', function()  
    TriggerEvent('skinchanger:getSkin', function(skin)
		local playerPed = GetPlayerPed(-1)

		RequestAnimDict('clothingshirt')
		while not HasAnimDictLoaded('clothingshirt') do
			Citizen.Wait(1)
		end

		TaskPlayAnim(playerPed, "clothingshirt", "check_out_b", 3.5, -8, -1, 49, 0, 0, 0, 0) 
		Citizen.Wait(3500)
	    ClearPedTasks(playerPed)


		local clothesSkin = {
		['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 15, ['torso_2'] = 0,
		['arms'] = 15, ['arms_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
end)


RegisterNetEvent('AracBagla')
AddEventHandler('AracBagla', function()
	local playerPed = PlayerPedId()
    local vehicle   = ESX.Game.GetVehicleInDirection()
    
    TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)

     Citizen.Wait(10000)
     TriggerEvent('pogressBar:drawBar', 10000, 'Aracı bağlıyorsun.')

     ClearPedTasksImmediately(playerPed)

	if IsPedInAnyVehicle(playerPed, true) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
	end

    if DoesEntityExist(vehicle) then
        ESX.Game.DeleteVehicle(vehicle)
        Citizen.Wait(10000)
	end
end)



RegisterNetEvent('pantolon')
AddEventHandler('pantolon', function() 
    	TriggerEvent('skinchanger:getSkin', function(skin)
	
		local playerPed = GetPlayerPed(-1)

		RequestAnimDict('clothingtrousers')
		while not HasAnimDictLoaded('clothingtrousers') do
			Citizen.Wait(1)
		end
		TaskPlayAnim(playerPed, "clothingtrousers", "try_trousers_negative_a", 3.5, -8, -1, 49, 0, 0, 0, 0) 
		Citizen.Wait(3000)
		ClearPedTasks(playerPed)
		local clothesSkin = {
		['pants_1'] = 21, ['pants_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
end)

    RegisterNetEvent('ayakkabı')
AddEventHandler('ayakkabı', function() 
	TriggerEvent('skinchanger:getSkin', function(skin)
		local playerPed = GetPlayerPed(-1)

		RequestAnimDict('clothingshoes')
		while not HasAnimDictLoaded('clothingshoes') do
			Citizen.Wait(1)
		end
		TaskPlayAnim(playerPed, "clothingshoes", "check_out_a", 3.5, -8, -1, 49, 0, 0, 0, 0) 
		Citizen.Wait(2500)
		ClearPedTasks(playerPed)	

		local clothesSkin = {
		['shoes_1'] = 34, ['shoes_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
end)


    RegisterNetEvent('giyin')
    AddEventHandler('giyin', function() 
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		TriggerEvent('skinchanger:loadSkin', skin)
		end)

end)

function AracKilit()
    local playerPed = PlayerPedId()

    local coords  = GetEntityCoords(playerPed)
  local  vehicle = ESX.Game.GetVehicleInDirection()

if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 3.0) then
    TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
    Citizen.Wait(20000)
    TriggerEvent('pogressBar:drawBar', 20000, 'Araç kilidini açıyorsun.')

    ClearPedTasksImmediately(playerPed)

    SetVehicleDoorsLocked(vehicle, 1)
    SetVehicleDoorsLockedForAllPlayers(vehicle, false)
    ESX.ShowNotification("Araç Açıldı")
end
end

RegisterNetEvent('AracKilit')
AddEventHandler('AracKilit', function()
AracKilit()

end)







function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local closestPed = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        for index,value in ipairs(players) do
            local target = GetPlayerPed(value)
            if(target ~= ply) then
                local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
                local distance = #(vector3(targetCoords["x"], targetCoords["y"], targetCoords["z"]) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
                if(closestDistance == -1 or closestDistance > distance) and not IsPedInAnyVehicle(target, false) then
                    closestPlayer = value
                    closestPed = target
                    closestDistance = distance
                end
            end
        end
        return closestPlayer, closestDistance, closestPed
    end
end

