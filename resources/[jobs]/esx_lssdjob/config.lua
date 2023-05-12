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

	lssd = {

		Cloakrooms = {
		   vector3(1858.97,3695.72,34.23)
		},

		Armories = {
			vector3(1860.43,3692.96,34.25)
		},
		Jail = {
			vector3(1690.9, 2591.82, 45.86)
		},


		Vehicles = {
			{
				Spawner = vector3(1863.24,3698.22,33.73),
				InsideShop = vector3(1868.09,3696.37,33.57),
				SpawnPoints = {
					{ coords = vector3(1868.09,3696.37,33.57), heading = 210.13, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{}
		},

		BossActions = {
			vector3(1852.99,3689.05,34.22)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	officer = {
		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_PUMPSHOTGUN', components = { 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
        { weapon = 'WEAPON_STUNGUN', price = 0 },
        { weapon = 'WEAPON_FLASHLIGHT', price = 0 },
        { weapon = 'WEAPON_SMG', price = 0 }
	},

	sergeant = {
		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_PUMPSHOTGUN', components = { 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
        { weapon = 'WEAPON_STUNGUN', price = 0 },
        { weapon = 'WEAPON_FLASHLIGHT', price = 0 },
        { weapon = 'WEAPON_SMG', price = 0 }
	},

	lieutenant = {
		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_PUMPSHOTGUN', components = { 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
        { weapon = 'WEAPON_STUNGUN', price = 0 },
        { weapon = 'WEAPON_FLASHLIGHT', price = 0 },
        { weapon = 'WEAPON_SMG', price = 0 }
	},

	boss = {
		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 0, 0, 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_PUMPSHOTGUN', components = { 0, 0, nil }, price = 0 },
        { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
        { weapon = 'WEAPON_STUNGUN', price = 0 },
        { weapon = 'WEAPON_FLASHLIGHT', price = 0 },
        { weapon = 'WEAPON_SMG', price = 0 }
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'police2', label = 'Polizei Buffalo', price = 1 },
		{ model = 'sheriff', label = 'Sheriff', price = 1 },
		{ model = 'sheriff2', label = 'Sheriff 2', price = 1 },
		{ model = 'pbus', label = 'Prison Bus', price = 1 },
		

	},

	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {},

	boss = {}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {},

	boss = {}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {},
	officer_wear = {},
	sergeant_wear = {},
	intendent_wear = {},
	lieutenant_wear = {},
	chief_wear = { },
	bullet_wear = {
		male = {
		},
		female = {
		}
	},
	gilet_wear = {
		male = {
		},
		female = {
		}
	}

}