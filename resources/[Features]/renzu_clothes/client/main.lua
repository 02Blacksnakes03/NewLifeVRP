if Config.old then return end

if not lib then warn('ox_lib is required in this version') return end

local oldskin = nil
local oldcomponent = {}
local carts = {}

SetPedComponent = function(type, component, drawable, index)
    if type ~= 'Props' then
        return SetPedComponentVariation(cache.ped, component, drawable, index, 2)
    else
        return SetPedPropIndex(cache.ped, component, drawable, index, 2)
    end
end

ClothingMenu = function(data)
    local lists = {}
    local clothesdata = deepcopy(Config.Data)
    if not oldskin then
        oldskin = Config.GetSkin()
    end
    local nums = {}
    local texture = data.type ~= 'Props' and GetPedTextureVariation(cache.ped,data.id) or GetPedPropTextureIndex(cache.ped,data.id)
    local drawable = data.type ~= 'Props' and GetPedDrawableVariation(cache.ped,data.id) or GetPedPropIndex(cache.ped,data.id)
    oldcomponent = {
        type = data.type,
        texture = texture,
        drawable = drawable,
        component = data.id
    }
    for drawable = 1, data.num do
        local texturenum = data.type ~= 'Props' and GetNumberOfPedTextureVariations(cache.ped, data.id, drawable) or GetNumberOfPedPropTextureVariations(cache.ped, data.id, drawable, - 1)
        local clothes_meta = {}
        local textureid = 1
        local drawable = drawable
        for texture = 1, texturenum do
            clothes_meta = GetClotheData(data.id,drawable,texture,data.type == 'Props',data.name) or GetClotheData(data.id,drawable,1,data.type == 'Props',data.name) or clothes_meta
            textureid = texture
            table.insert(nums,clothes_meta.label and clothes_meta.label ~= clothes_meta.NameHash and clothes_meta.label or data.name:gsub('_1',''):upper() ..' - '..texture)
        end
        local label = clothes_meta.label or ''
        local hash = clothes_meta.NameHash or ''
        local icon = clothes_meta.label and clothes_meta.label ~= clothes_meta.NameHash and 'https://raw.githubusercontent.com/renzuzu/carmap/main/carmap/clothes/'..hash..'.png' or data.icon
        local price = clothes_meta.Price or 100
        table.insert(lists,{close = false, description = 'Preis: '..price, icon = icon, label = 'T Shirt '..label, values = nums , args = {price = price, drawable = drawable, texture = textureid, component = data.id}})
        nums = {}
    end

    if #lists == 0 then
        return Notify('Keine Kleidung verfügtbar')
    end

    lib.registerMenu({
        id = 'clothe_lists',
        title = data.name:gsub('_1',''):upper(),
        position = 'top-right',
        onSideScroll = function(selected, scrollIndex, args)
            SetPedComponent(data.type,args.component, args.drawable, scrollIndex)
        end,
        onSelected = function(selected, secondary, args)
            SetPedComponent(data.type,args.component, args.drawable, secondary)
        end,
        onClose = function(keyPressed)
            SetPedComponent(oldcomponent.type,oldcomponent.component, oldcomponent.drawable, oldcomponent.texture)
        end,
        options = lists
    }, function(selected, scrollIndex, args)

        if not carts[args.component] then
            carts[args.component] = {}
        end

        carts[args.component] = {
            texture = scrollIndex,
            drawable = args.drawable,
            component = args.component,
            price = args.price
        }

        oldcomponent = {
            type = data.type,
            texture = scrollIndex,
            drawable = args.drawable,
            component = args.component
        }

        lib.notify({
            description = 'Zum Warenkorb hinzugefügt!',
            type = 'success'
        })
    end)
    
    lib.showMenu('clothe_lists')
end

GetNumOfPedVariations = function(type,id)
    if type == 'ComponentVariations' then
        return GetNumberOfPedDrawableVariations(cache.ped, id)
    elseif type == 'Props' then
        return GetNumberOfPedPropDrawableVariations(cache.ped, id)
    end
end

ClothingIndex = function(data)
    local lists = {}
    local clothesdata = deepcopy(Config.Data)

    local hasarms = false
    local indexes = data.indexes
    for k,v in pairs(indexes) do
        if string.find(v,'arms') then
            hasarms = true
        end
        if clothesdata[v] and clothesdata[v].type and not string.find(v,'_2') then
            local num = GetNumOfPedVariations(clothesdata[v].type, clothesdata[v].componentid)
            table.insert(lists,{icon = clothesdata[v].icon,label = clothesdata[v].label, description = clothesdata[v].label, args = {icon = clothesdata[v].icon, type = clothesdata[v].type, num = num, id = clothesdata[v].componentid, name = v}})
        end
    end

    if #lists == 0 then
        Notify('Kleidung nicht verfügtbar!')
        return
    end
    if not hasarms then
        local num = GetNumOfPedVariations(clothesdata[indexes[1]].type, clothesdata[indexes[1]].componentid)
        return ClothingMenu({icon = clothesdata[indexes[1]].icon, type = clothesdata[indexes[1]].type, num = num, id = clothesdata[indexes[1]].componentid, name = indexes[1]})
    end

    lib.registerMenu({
        id = 'menu__index',
        title = data.label,
        position = 'top-right',
        options = lists
    }, function(selected, scrollIndex, args)
        ClothingMenu(args)
    end)
    
    lib.showMenu('menu__index')
end

Notify = function(msg,icon)
    local label = type(msg) ~= 'string' and '[E] - '..msg.label or msg
    lib.showTextUI(label, {
        position = "top-right",
        icon = icon or 'hand',
        style = {
            --borderRadius = '10px',
            backgroundColor = 'rgb(66 67 68 / 20%)',
            color = '#ccd1d5',
            textShadow = '1px 1px #8d959d',
            boxShadow = 'rgb(239 239 239 / 80%) 2px 2px 3px',
            borderBottomLeftRadius = '0 ',
            borderTopLeftRadius = '30px',
            marginBottom = '20vh'
        }
    })
end

Cashier = function(data)
    local total = 0
    local incart = 0
    for k,v in pairs(carts) do
        total += v.price
        incart += 1
    end
    lib.registerContext({
        id = 'clothe_cashier',
        title = 'Kassiererin im Geschäft',
        options = {
            {
                title = 'Rechnungen Bezahlen',
                description = '***Total:*** $ '..total..'  \n  ***Im Warenkorb:*** '..incart,
                icon = 'check',
                onSelect = function()
                    Config.GetSkin()
                    local success = lib.callback.await('renzu_clothes:Pay', false, total,Config.GetSkin())
                    if success then
                        Notify('Kleidung erfolgreich bezahlt!', 'check')
                        carts = {}
                        oldskin = nil
                        oldcomponent = {}
                    else
                        Notify('Du hast nicht genug Geld dabei!', 'cross')
                    end
                end,
                arrow = true,
                args = {
                    someValue = 500
                }
            }
        }
    })
    lib.showContext('clothe_cashier')
end

Outfits = function()
    local options = {}
    local outfits = lib.callback.await('renzu_clothes:getOutfits',false)
    for name,appearance in pairs(outfits) do
        table.insert(options,{
            title = name,
            description = 'Benutze Outfit '..name,
            icon = 'tshirt',
            onSelect = function()
                lib.registerContext({
                    id = 'outfit_option',
                    title = 'Outfit',
                    menu = 'outfits',
                    options = {
                        {
                            title = 'Benutzen',
                            description = 'Outfits werden angzogen!',
                            icon = 'user-check',
                            iconColor = 'green',
                            onSelect = function()
                                lib.showContext('outfits')
                                Config.SetSkin(appearance)
                                Notify('Outfit '..name..' wurde angezogen', 'check')
                            end
                        },
                        {
                            title = 'Löschen',
                            description = 'entfernt Outfits aus dein Kleiderschrank!',
                            icon = 'user-times',
                            iconColor = 'red',
                            onSelect = function()
                                local success = lib.callback.await('renzu_clothes:RemoveOutfit',false,name)
                                Notify('Outfit '..name..' wurde entfernt')
                            end
                        }
                    }
                })
                lib.showContext('outfit_option')
            end,
            arrow = true,
        })
    end
    if #options == 0 then
        return Notify('Outfits ist leer', 'check')
    end
    lib.registerContext({
        id = 'outfits',
        title = 'Outfit Liste',
        menu = 'wardrobe',
        options = options
    })
    lib.showContext('outfits')
end

Wardrobe = function(data)
    lib.registerContext({
        id = 'wardrobe',
        title = 'Kleiderschrank',
        options = {
            {
                title = 'Speichern',
                description = 'Das aktuelle Outfit speichern',
                icon = 'save',
                onSelect = function()
                    local input = lib.inputDialog('New Outfit', {
                        {type = 'input', label = 'Outfit Name', description = 'Name des neuen Outfits'},
                    })

                    if not input then return end
                    local appearance = Config.GetSkin()
                    local success = lib.callback.await('renzu_clothes:SaveOutfit',false, {name = input[1], appearance = appearance})

                    if success then
                        Notify('Outfit '..input[1]..' gespeichert', 'check')
                    else
                        Notify('Outfit '..input[1]..' ist nicht gespeichert', 'check')
                    end

                end,
                arrow = true,
            },
            {
                title = 'Outfit ansehen',
                description = 'Alle Outfits ansehen',
                icon = 'list',
                onSelect = Outfits,
                arrow = true,
            },
            {
                title = 'Name des Outfits ?',
                description = 'Speichere dein Outfit mit ein Namen',
                icon = 'code',
                onSelect = function()
                    local input = lib.inputDialog('Add Outfit Code', {
                        {type = 'input', label = 'Outfit code', description = 'Shared outfit code'},
                        {type = 'input', label = 'New Outfit Name', description = 'name your outfit'},
                    })

                    if not input then return end

                    local add = lib.callback.await('renzu_clothes:AddCode',false,input)

                    if add then
                        Notify('Das Outfit wurde im Kleiderschrank gespeichert')
                    else
                        Notify('Der Name ist nicht verfügtbar')
                    end
                end,
                arrow = true,
            },
            {
                title = 'Generate Code',
                description = 'Erzeugen von gemeinsam nutzbarem Code für das aktuelle Outfit',
                icon = 'qrcode',
                onSelect = function()
                    local code = lib.callback.await('renzu_clothes:GenerateCode',false, Config.GetSkin())

                    if code then
                        local input = lib.inputDialog('Generated Outfit Code', {
                            {type = 'input', label = 'Outfit code', description = 'Shareable outfit code', disabled = true, default = code},
                        })
    
                        if not input then return end
                        lib.setClipboard(code)
                        Notify("Der Code wurde in deiner Zwischen ablage gespeichert!")
                    end
                end,
                arrow = true,
            }
        }
    })
    lib.showContext('wardrobe')
end

ClothingPoints = function(data)
    local point = lib.points.new(data.coord, 1.5, {
        data = data,
    })
    
    function point:onEnter()
        Notify(self.data,data.icon or Config.Data[self.data.indexes[1]].icon)
    end
    
    function point:onExit()
        lib.hideTextUI()
    end
    
    function point:nearby()
        DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.4, 0.4, 0.4, 200, 255, 241, 50, false, true, 2, nil, nil, false)
    
        if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
            if data.type == 'cashier' then
                Cashier(data)
            elseif data.type == 'wardrobe' then
                Wardrobe(data)
            else
                ClothingIndex(self.data)
            end
        end
    end
    return point
end

local points = {}
local ped = nil
ClothingZones = function(data) -- check if player entered the zones and trigger all points for shop
    function onEnter(self)
        for k,point in pairs(data.clothesdisplay) do
            table.insert(points,ClothingPoints(point))
        end
        table.insert(points,ClothingPoints({label = 'Kassierer', coord = data.cashier, type = 'cashier', icon = 'cash-register'}))
        table.insert(points,ClothingPoints({label = 'Kleiderschrank', coord = data.wardrobe, type = 'wardrobe', icon = 'tshirt'}))

        local model = `s_f_y_shop_mid`
        lib.requestModel(model)
        ped = CreatePed(4, model, data.cashier_ped.x,data.cashier_ped.y,data.cashier_ped.z, false, false)
        TaskTurnPedToFaceEntity(ped,cache.ped,-1)
        SetEntityAsMissionEntity(ped, true, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetEntityInvincible(ped, true)

        Notify('Willkommen im Kleiderladen','fas fa-tshirt')
        Wait(3000)
        lib.hideTextUI()
    end
    
    function onExit(self)
        for i = 1 , #points do
            points[i]:remove()
        end
        if DoesEntityExist(ped) then
            DeleteEntity(ped)
        end

        if oldskin then
            Config.SetSkin(oldskin)
            oldskin = nil
            carts = {}
            oldcomponent = {}
            lib.hideMenu(true)
        end
    end
    

    local box = lib.zones.box({
        coords = data.coord,
        size = vec3(30, 30, 20),
        rotation = 45,
        debug = false,
        inside = inside,
        onEnter = onEnter,
        onExit = onExit
    })
end

for k,v in pairs(Config.Shop) do

    ClothingZones(v)

    local vec = v.coord
    local name = v.name
    local blip = AddBlipForCoord(v.coord.x, v.coord.y, v.coord.z)
    SetBlipSprite (blip, v.blips.sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.8)
    SetBlipColour (blip, v.blips.color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(""..v.name.."")
    EndTextCommandSetBlipName(blip)
end

function GetClotheData(componentid,drawableid,textureid,prop,name)
    local data = {}
    if prop then 

        data = Components.Props[GetEntityModel(PlayerPedId())][tostring(componentid)] ~= nil and Components.Props[GetEntityModel(PlayerPedId())][tostring(componentid)][tostring(drawableid)] ~= nil and Components.Props[GetEntityModel(PlayerPedId())][tostring(componentid)][tostring(drawableid)][tostring(textureid)] ~= nil and Components.Props[GetEntityModel(PlayerPedId())][tostring(componentid)][tostring(drawableid)][tostring(textureid)]
        if name and data then
            data.Price = data.Price * Config.Data[name].multiplier
        end
        return data

    elseif not prop then

        data = Components.ComponentVariations[GetEntityModel(PlayerPedId())][tostring(componentid)] ~= nil and Components.ComponentVariations[GetEntityModel(PlayerPedId())][tostring(componentid)][tostring(drawableid)] ~= nil and Components.ComponentVariations[GetEntityModel(PlayerPedId())][tostring(componentid)][tostring(drawableid)][tostring(textureid)] ~= nil and Components.ComponentVariations[GetEntityModel(PlayerPedId())][tostring(componentid)][tostring(drawableid)][tostring(textureid)]
        if name and data then
            data.Price = data.Price * Config.Data[name].multiplier
        end

    end
    return data
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end