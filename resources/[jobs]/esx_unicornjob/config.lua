Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale = 'de'

Config.PoliceStations = {

	Triaden = {

		Cloakrooms = {
			vector3(105.44,-1303.27,28.77)
		},

		Armories = {
			vector3(-1506.4,-1515.3,6.3)

		},

		Vehicles = {
			{
				Spawner = vector3(-1484.69,-1472.47,2.41),
				InsideShop = vector3(142.72,-1323.8,28.56),
				SpawnPoints = {
					{ coords = vector3(-1481.22,-1463.16,1.58), heading = 298.15, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{}
		},

		BossActions = {
			vector3(93.82,-1291.53,29.27)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_DOUBLEACTION', price = 15000 },
		{ weapon = 'WEAPON_BAT', price = 0 },
		{ weapon = 'WEAPON_FLAREGUN', price = 15000 }
	},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {},

	chef = {},

	boss = { 
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_DOUBLEACTION', price = 15000 },
		{ weapon = 'WEAPON_BAT', price = 0 },
		{ weapon = 'WEAPON_FLAREGUN', price = 15000 }

	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'revolter', label = 'Revolter', price = 25000 },
		{ model = 't20', label = 'T20', price = 25000 },
		{ model = 'italirsx', label = 'ItaliRSX', price = 25000 },
		{ model = 'models', label = 'Tesla Model S', price = 25000 },
	},

	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {},

	chef = {},

	boss = {
		{ model = 'schafter6', label = 'Schafter', price = 35000 },
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {},

	chef = {},

	boss = {}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {},
	officer_wear = {},
	sergeant_wear = {},
	intendent_wear = {},
	lieutenant_wear = {},
	chef_wear = {},
	boss_wear = { },
	bullet_wear = {
		male = {
			['bproof_1'] = 17,  ['bproof_2'] = 2
		},
		female = {
			['bproof_1'] = 17,  ['bproof_2'] = 2
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}