BDEV = {}

BDEV.Intervall = {
    activated = true, -- If true, the drops will be dropped at the intervall entered below
    intervall =  6 * 60 * 60 * 1000-- 10 * 60 * 1000, -- The intervall in milliseconds in which the drops will be dropped 
}

BDEV.Command = {
    groups = { -- All the groups that can use the command
        "superadmin",
        "admin"
    },
    name = "lootdrop", -- The command name
}


BDEV.Drops = {
    {
        label = "Sandy-Shores", -- The label of the drop 
        jobs = { -- only these jobs would see the global message
            ["unicorn"] = {
                capture = true,
                getLoot = true,
            },
            ["unemployed"] = {
                capture = true,
                getLoot = true,
            },    
        },
        randomLoot = true, -- If true, the loot will be random from the 'loot' table otherwise it will be the whole 'loot' table
        loot = {
            { -- The type as 'key'
                type = "item", -- The type
                name = "coke", -- The item name
                amount = 100, -- The amount of items
            },  
            { -- The type as 'key'
                type = "item", -- The type
                name = "weed", -- The item name
                amount = 100, -- The amount of items
            }, 
            { -- The type as 'key'
                type = "item", -- The type
                name = "bulletproof", -- The item name
                amount = 20, -- The amount of items
            },
            { -- The type as 'key'
                type = "item", -- The type
                name = "diamond", -- The item name
                amount = 15, -- The amount of items
            }, 
            { -- The type as 'key'
                type = "item", -- The type
                name = "weapon_tacticalrifle", -- The item name
                amount = 3, -- The amount of items
            }, 
            { -- The type as 'key'
            type = "item", -- The type
            name = "weapon_combatmg_mk2", -- The item name
            amount = 1, -- The amount of items
            },
            { -- The type as 'key'
            type = "item", -- The type
            name = "weapon_precisionrifle", -- The item name
            amount = 1, -- The amount of items
            },
            { -- The type as 'key'
            type = "item", -- The type
            name = "weapon_marksmanrifle_mk2", -- The item name
            amount = 1, -- The amount of items
            },  
        },
        locations = { -- picks a random location from the table
            vector4(1078.0233, 3084.4314, 40.5484, 202.8693),
            vector4(40.6293, 3677.9272, 39.7230, 245.1164),
            vector4(851.4877, 3630.6704, 33.1420, 244.7133),
            vector4(1343.1233, 3563.5984, 34.9786, 244.5553),
            vector4(2100.1328, 3869.4629, 32.9915, 232.1739),
            vector4(1364.2852, 4355.7744, 47.3433, 84.4937),
            vector4(1943.7078, 4638.1079, 40.5138, 242.5094),
            vector4(1689.1879, 6417.4307, 32.4337, 54.8258),

        }, 
        captureTime = 1000 * 60 * 2, -- The time it takes to capture the drop in milliseconds
        captureBlip = {
            sprite = 1, -- The blip sprite
            color = 1, -- The blip color
            scale = 3.3, -- The blip scale
        },
    },
    -- {
    --     label = "Paleto-Bay", -- The label of the drop 
    --     jobs = { -- only these jobs would see the global message
    --         ["bbg"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["blackchina"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["caruso"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["casamonica"] = {
    --             capture = true,
    --             getLoot = false,
    --         },
    --         ["frankos"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["gomorrha"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["intikam"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["lph"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["rollingbig"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["santana"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["soa"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --         ["unemployed"] = {
    --             capture = true,
    --             getLoot = true,
    --         },
    --     },
    --     randomLoot = true, -- If true, the loot will be random from the 'loot' table otherwise it will be the whole 'loot' table
    --     loot = {
    --         { -- The type as 'key'
    --             type = "item", -- The type
    --             name = "coke", -- The item name
    --             amount = 100, -- The amount of items
    --         },  
    --         { -- The type as 'key'
    --             type = "item", -- The type
    --             name = "weed", -- The item name
    --             amount = 100, -- The amount of items
    --         }, 
    --     },
    --     locations = { -- picks a random location from the table
    --         vector4(-789.1145, 5431.0728, 34.9666, 272.5614),
    --         vector4(-386.5475, 5882.3218, 49.6295, 272.5614),
    --         vector4(-442.8455, 6034.7842, 31.6850, 272.5614),
    --         vector4(-272.2858, 6365.4585, 32.6019, 272.5614),
    --         vector4(-195.6212, 6299.7847, 32.1438, 272.5614),
    --         vector4(53.0020, 6384.5073, 32.1248, 272.5614)
    --     }, 
    --     captureTime = 1000 * 60 * 2, -- The time it takes to capture the drop in milliseconds
    --     captureBlip = {
    --         sprite = 1, -- The blip sprite
    --         color = 1, -- The blip color
    --         scale = 3.3, -- The blip scale
    --     },
    -- },
}

function BDEV.Notify(env, source, type, message, time, globalmessage)
    -- This function is called when the player is capturing the drop
    -- The 'env' is the environment (client or server)
    -- The 'source' is the source of the player / only on the server environment
    -- The 'type' is the type of the notification (e.g. "error", "success", "info")
    -- The 'message' is the message that will be displayed
    -- The 'time' is the time in milliseconds
    -- the 'globalmessage' is a bool and will be shown to every player with the respective job in BDEV.Drops.jobs array
    if env == "client" then
        -- Do something on the client
    elseif env == "server" then
        -- Do something on the server
        if globalmessage then

            -- TriggerClientEvent('b-notify:notify', source, type, string.upper(type), message)
            -- print("Global message: " .. message)
        else
            -- TriggerClientEvent('b-notify:notify', source, type, string.upper(type), message)
            -- print("Message: " .. message)
        end

    end
end

function BDEV.HelpNotify(msg, coords)
    -- This function is called when the player is capturing the drop
    -- The 'msg' is the message that will be displayed
    -- The 'coords' is the coords of the drop (vector4)
    -- this function gets called every frame
    AddTextEntry("b-safezone", msg)
    DisplayHelpTextThisFrame("b-safezone", false)
end

function BDEV.Progressbar(time, text)
    -- This function is called when the player is capturing the drop
    -- You can use this function to create a progressbar
    -- The 'time' is the time in milliseconds
    -- The 'text' is the text that will be displayed on the progressbar (e.g. "Capturing...")
end

function BDEV:CaptureDrop(dropTable, looterTable, xPlayer)
    -- This function is called when the player is capturing the drop // serverside environment
    -- The 'dropTable' is the drop table (table with all the drop data)
    -- The 'looterTable' is the looter table (table with all the looter data)
    -- The 'xPlayer' is the player that captured the drop (table with source, name, identifier, job, job_grade)
    print("Capture Drop")
end

function BDEV:StartedDrop(location_name, location)
    -- This function is called when the drop is started // serverside environment
    -- The 'location_name' is the location name
    -- The 'location' is the drop location (vector4)
end

function BDEV:CustomLoot(xPlayer, lootTable)
    -- This function is called when the player looted the drop and got custom loot // serverside environment
    -- The 'xPlayer' is the player that looted the drop (table with source, name, identifier, job, job_grade)
    -- The 'lootTable' is the loot table (table with all the loot)
    print("Custom Loot")
end

BDEV.Locales = {
    ["press_e_to_get_loot"] = "~input_context~ um die Drogenlieferung zu looten.",
    ["is_beeing_looted"] = "Der Lootdrop wird von %s aufgeschweißt",
    ["created_drop"] = "Du hast erfolgreich einen Lootdrop erstellt.",
    ["drop_started"] = "Ein Container ist von einem Mexikanisches Flugzeug runtergefallen.",
    ["not_allowed"] = "You are not allowed to do this!",
    ["drop_landed"] = "Der Lootdrop ist gelandet.",
    ["drop_looted"] = "Der Lootdrop wurde von %s gelootet",
    ["blip_name"] = "Lootdrop",
    ["blip_name_dist"] = "Lootdrop - [Distanz: %s]",
    ["looted_item"] = "Du hast %sx %s bekommen",
    ["looted_weapon"] = "Du hast eine %s mit %s 100 Schuss",
    ["looted_account"] = "Du hast $%s bekommen",
    ["looted_all"] = "Du hast den Lootdrop gelootet."
}