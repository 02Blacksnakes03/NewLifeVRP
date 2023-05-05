ESX = nil
playerWorkstation = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
    ESX.TriggerServerCallback('workstation:get', function( station )
        playerWorkstation = station
        ----print(station)
    end)
end)

farming = { 
    {id = 1, needItem = 'sichel', item = 'weed', tickAnim = 2000, tick = 2000, posX = -2285.02, posY = 2749.68, posZ = 2.88, distance = 10, maxed = 3, minimum = 1},
    {id = 2, needItem = 'sichel', item = 'aramid', tickAnim = 2500, tick = 2500, posX = 1917.48,  posY = 4758.84,  posZ = 42.68, distance = 20, maxed = 3, minimum = 2},
    {id = 3, needItem = 'kaefig', item = 'chicken', tickAnim = 2000, tick = 2000, posX = 2184.4,  posY = 5568.08,  posZ = 55.0, distance = 20, minimum = 1, maxed = 2},
    {id = 4, needItem = 'sichel', item = 'kbohne', tickAnim = 2000, tick = 2000, posX = 270.32,  posY = 6612.48,  posZ = 29.96, distance = 20, minimum = 1, maxed = 3},
    {id = 5, needItem = 'presslufthammer', item = 'zinkkohle', tickAnim = 2000, tick = 2000, posX = 2945.92,  posY = 2791.55,  posZ = 40.46, distance = 20, minimum = 1, maxed = 3}  

}  
     
verarbeiter = {
    {id = 1, item = 'weed', vitem = 'weedsamen', itemFrom = 4, itemTo = 1, tick = 1200, posX = 1218.72, posY = 1848.93, posZ = 78.97, h = 228.12, distance = 5},
    {id = 2, item = 'aramid', vitem = 'kevlar', itemFrom = 3, itemTo = 1, tick = 2000, posX = 2553.56, posY = 4669.76, posZ = 33.96, h = 14.12, distance = 5},
    {id = 3, item = 'zinkkohle', vitem = 'batterien', itemFrom = 10, itemTo = 3, tick = 5000, posX = 287.47, posY = 2843.81, posZ = 44.7, h = 117.2, distance = 5},
    {id = 4, item = 'chicken', vitem = 'chickenfilet', itemFrom = 3, itemTo = 1, tick = 6000, posX = -73.48,  posY = 6260.4,  posZ = 31.08, h = 293.69, distance = 2},
    {id = 5, item = 'kbohne', vitem = 'kbohnekiste', itemFrom = 5, itemTo = 1, tick = 8000, posX = -691.28,  posY = 5784.76,  posZ = 17.32, h = 238.38, distance = 2}
 }   

playerFarmingTick = nil
                                playerFarmingTickAnim = nil
                                playerFarmingItem = nil 
                                playerFarmingPos = {}
                                playerFarmingDistance = nil
                                playerFarmingItemMax = nil
                                playerFarmingItemMin = nil 
 
-- FARMING
Citizen.CreateThread(function( )
    while true do
        Citizen.Wait(1)
        local player = GetPlayerPed(-1)
        local playerloc = GetEntityCoords(player, 0)
        for _, farming in pairs(farming) do
            local distance = GetDistanceBetweenCoords(farming.posX, farming.posY, farming.posZ, playerloc['x'], playerloc['y'], playerloc['z'], true)
            if distance < farming.distance then 
                if showFarmMsg ~= true then 
                    ESX.ShowNotification("Benutze E um ".. farming.item .. " zu Farmen!")
                    showFarmMsg = true 
                end
                if IsControlJustPressed(1,51) then 
                    if playerFarming ~= true then
                        ESX.TriggerServerCallback('farming:hasNeededItem', function(hasItem)
                            if hasItem == true then
                                ESX.ShowNotification("Farming wurde gestartet...")  
                                playerFarming = true
                                playerFarmingTick = farming.tick
                                playerFarmingTickAnim = farming.tickAnim
                                playerFarmingItem = farming.item  
                                playerFarmingPos = {x = farming.posX, y = farming.posY, z = farming.posZ}
                                playerFarmingDistance = farming.distance
                                playerFarmingItemMax = farming.maxed
                                playerFarmingItemMin = farming.minimum 
                                FreezeEntityPosition(player, true)
                            else 
                                ESX.ShowNotification("Du benötigst ein/e ".. farming.needItem:upper())
                            end
                        end, farming.needItem)
                    else
                        playerFarming = false 
                        playerFarmingTick = nil
                                playerFarmingTickAnim = nil
                                playerFarmingItem = nil 
                                playerFarmingPos = {}
                                playerFarmingDistance = nil
                                playerFarmingItemMax = nil
                                playerFarmingItemMin = nil
                        ESX.ShowNotification("Farming wurde gestoppt..")
                        FreezeEntityPosition(player, false)
                    end
                end
            elseif distance > farming.distance and distance < farming.distance + 5 then 
                showFarmMsg = false 
            end
        end 
    end
end) 

Citizen.CreateThread(function( )
    while true do
        Citizen.Wait(1)
        if playerFarming == true then
            ----print("farming true")
            Citizen.Wait(playerFarmingTickAnim)
            if playerFarming == true then
                
            
                playerFarminAnim()
                
                Citizen.Wait(playerFarmingTick)
                if playerFarming == true then
                    
                    local player = GetPlayerPed(-1)
                    local playerloc = GetEntityCoords(player, 0)
                    local distance = GetDistanceBetweenCoords(playerFarmingPos.x, playerFarmingPos.y, playerFarmingPos.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
                    if distance < playerFarmingDistance then 
                        citemc = math.random(playerFarmingItemMin, playerFarmingItemMax)
                        ESX.TriggerServerCallback('canInInventory', function(can)
                            if can == true then
                                TriggerServerEvent('farming:item', playerFarmingItem, citemc)
                                playerFarminAnim() 
                            else 
                                playerFarming = false
                                ESX.ShowNotification("Dein Inventar ist voll!")
                                ESX.ShowNotification("Farming wurde gestoppt..")
                                FreezeEntityPosition(player, false)
                            end

                        end, playerFarmingItem, citemc)
                    else 
                        playerFarming = false
                        ESX.ShowNotification("Farming wurde gestoppt..")
                        FreezeEntityPosition(player, false)
                    end
                end
            end
        end
    end
end)

function playerFarminAnim()
    local ped = PlayerPedId()
    local AnimationLib = 'anim@mp_snowball'
    local AnimationStatus = 'pickup_snowball'

    RequestAnimDict(AnimationLib)
    TaskPlayAnim(ped, AnimationLib, AnimationStatus, 8.0, -1, -1, 0, 1, 0, 0, 0)
end