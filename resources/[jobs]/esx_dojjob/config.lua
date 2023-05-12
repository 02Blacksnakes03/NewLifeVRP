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

	Crips = {

		Cloakrooms = {
		
		},

		Armories = {
			vector3(-464.16, 1179.57, 330.57)
		},

		Vehicles = {
			
		},

		Helicopters = {
			
		},

		BossActions = {
			vector3(-459.48, 1173.92, 330.58)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{ weapon = 'weapon_stungun', price = 0 },
	},

	officer = {
		{ weapon = 'weapon_stungun', price = 0 },
	},

	sergeant = {
		{ weapon = 'weapon_stungun', price = 0 },
	},

	intendent = {
		{ weapon = 'weapon_stungun', price = 0 },
	},

	lieutenant = {
		{ weapon = 'weapon_stungun', price = 0 },
	},

	chef = {
		{ weapon = 'weapon_stungun', price = 0 },
	},

	boss = {
		{ weapon = 'weapon_stungun', price = 0 },
		{ weapon = 'weapon_appistol', price = 0 }
	}
}

Config.AuthorizedVehicles = {
	Shared = {},

	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {},

	chef = {},

	boss = {}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},

	lieutenant = {},

	chef = {},

	boss = {
		{ model = 'supervolito', label = 'DOJ', livery = 0, price = 1 },
	}
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
			['bproof_1'] = 27,  ['bproof_2'] = 5
		},
		female = {
			['bproof_1'] = 29,  ['bproof_2'] = 5
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