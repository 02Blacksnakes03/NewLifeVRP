Config = {}

Config.VehicleMenu = true -- enable this if you wan't a vehicle menu.
Config.VehicleMenuButton = 344 -- change this to the key you want to open the menu with. buttons: https://docs.fivem.net/game-references/controls/
Config.RangeCheck = 25.0 -- this is the change you will be able to control the vehicle.

Config.Garages = {
    ["Würfelpark Garage"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(215.97, -809.93, 30.73)
            },
            ["vehicle"] = {
                ["position"] = vector3(230.87, -797.44, 30.57), 
                ["heading"] = 156.0
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = 237.46, 
            ["y"] = -792.67, 
            ["z"] = 34.51, 
            ["rotationX"] = -31.01574149728, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -242.00 
       }
   },

    ["B"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(273.67422485352, -344.15573120117, 44.919834136963)
            },
            ["vehicle"] = {
                ["position"] = vector3(272.50082397461, -337.40579223633, 44.919834136963), 
                ["heading"] = 160.0
            }
        },
        ["camera"] = { 
            ["x"] = 283.28225708008, 
            ["y"] = -333.24017333984, 
            ["z"] = 50.004745483398, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 125.73228356242 
        }
    },
	
	["C"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-430.96, -454.57, 32.52)
            },
            ["vehicle"] = {
                ["position"] = vector3(-436.44, -454.75, 32.53), 
                ["heading"] = 351.22
            }
        },
        ["camera"] = { 
            ["x"] = -441.45, 
            ["y"] = -459.58, 
            ["z"] = 35.76, 
            ["rotationX"] = -10.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -40.73228356242 
        }
    },
	
	["D"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-59.98, -790.44, 44.23)
            },
            ["vehicle"] = {
                ["position"] = vector3(-51.67, -783.09, 44.21), 
                ["heading"] = 240.67
            }
        },
        ["camera"] = { 
            ["x"] = -41.31, 
            ["y"] = -784.2, 
            ["z"] = 48.22, 
            ["rotationX"] = -30.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 90.73228356242 
        }
    },
	
	["E"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-346.21, -875.22, 31.08)
            },
            ["vehicle"] = {
                ["position"] = vector3(-341.73, -881.21, 31.07), 
                ["heading"] = 79.05
            }
        },
        ["camera"] = { 
            ["x"] = -335.43, 
            ["y"] = -886.18, 
            ["z"] = 35.07, 
            ["rotationX"] = -30.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 40.73228356242 
        }
    },
	
	["F"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1197.94, -1275.61, 35.22)
            },
            ["vehicle"] = {
                ["position"] = vector3(1206.09, -1270.34, 35.23), 
                ["heading"] = 177.52
            }
        },
        ["camera"] = { 
            ["x"] = 1211.52, 
            ["y"] = -1264.43, 
            ["z"] = 38.23, 
            ["rotationX"] = -30.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 130.73228356242 
        }
    },
	
	["Bloodshot"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-79.49, 905.45, 235.75)
            },
            ["vehicle"] = {
                ["position"] = vector3(-71.08, 903.47, 235.61), 
                ["heading"] = 115.67
            }
        },
        ["camera"] = { 
            ["x"] = -62.31, 
            ["y"] = 903.9, 
            ["z"] = 238.25, 
            ["rotationX"] = -30.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 100.73228356242 
        }
    },

    ["G"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        },
        ["camera"] = { 
            ["x"] = -1813.5513916016, 
            ["y"] = -340.40087890625, 
            ["z"] = 46.962894439697, 
            ["rotationX"] = -39.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -42.110235854983 
        }
    }
}

Config.Labels = {
    ["menu"] = "Drücke ~INPUT_CONTEXT~ um die Garage zuöffnen",
    ["vehicle"] = "Drücke ~INPUT_CONTEXT~ um das Fahrzeug Einzuparken."
}

Config.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end

Config.AlignMenu = "right" -- this is where the menu is located [left, right, center, top-right, top-left etc.]