Config = {}


-- INVENTORY SETTINGS
Config.Inventoryname = "Inventar"
Config.MaxWeight	 = "40000" -- 1000 = 1KG
Config.MaxSlots		 = "12"	   -- 12 = 12 inventar slots
Config.es_extended1_1 = true

-- PACK ARMOR SETTINGS
Config.packArmortime = 5000 --> TIME HOW LONG IT TAKES UNTIL ARMOR IS PACKED
Config.packArmorItem = "bulletproof" --> ITEM THAT YOU GET AFTER PACKING ARMOR
Config.packArmorremoveclothe = true --> REMOVE ARMORCLOTHE FROM PLAYER | true = YES and false = NO

-- PACK WEAPON SETTINGS
Config.packWeapontime = 5000 --> TIME HOW LONG IT TAKES UNTIL WEAPON IS PACKED
Config.packWeaponMunitionItem = "magazin" --> ITEM THAT THE PLAYER GETS AS AMMO WHEN WEAPON GO PACKED


Config.WeaponItems = {
	WEAPON_PISTOL = {
		item = 'pistol',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_ADVANCEDRIFLE = {
		item = 'advancedrifle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_SPECIALCARBINE = {
		item = 'specialcarbine',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_HEAVYPISTOL = {
		item = 'heavypistol',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_PUMPSHOTGUN = {
		item = 'pumpshotgun',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_ASSAULTRIFLE = {
		item = 'assaultrifle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_GUSENBERG = {
		item = 'gusenberg',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_COMBATPISTOL = {
		item = 'combatpistol',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_PISTOL50 = {
		item = 'pistol50',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_SNSPISTOL = {
		item = 'snspistol',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_APPISTOL = {
		item = 'appistol',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_VINTAGEPISTOL = {
		item = 'vintagepistol',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_FLAREGUN = {
		item = 'flaregun',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_MICROSMG = {
		item = 'microsmg',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_SMG = {
		item = 'smg',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_ASSAULTSMG = {
		item = 'assaultsmg',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_MACHINEPISTOL = {
		item = 'machinepistol',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_COMBATPDW = {
		item = 'combatpdw',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_MINISMG = {
		item = 'minismg',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_CARBINERIFLE = {
		item = 'carbinerifle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_MILITARYRIFLE = {
		item = 'militaryrifle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_SNIPERRIFLE = {
		item = 'sniperrifle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_HEAVYSNIPER = {
		item = 'heavysniper',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_MARKSMANRIFLE = {
		item = 'marksmanrifle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_SMOKEGRENADE = {
		item = 'smokegrenade',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_BZGAS = {
		item = 'bzgas',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_FLARE = {
		item = 'flare',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_PETROLCAN = {
		item = 'petrolcan',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_FLASHLIGHT = {
		item = 'flashlight',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_HATCHET = {
		item = 'hatchet',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_KNUCKLE = {
		item = 'knuckle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_KNIFE = {
		item = 'knife',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_MACHETE = {
		item = 'machete',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_SWITCHBALDE = {
		item = 'switchblade',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '100' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	},
	WEAPON_BULLPUPRIFLE = {
		item = 'bullpuprifle',	--> THE ITEM THAT THE PLAYER GETS AFTER PACKING THE WEAPON (DONT MAKE THIS ITEM USABLE IN ANOTHER SKRIPT!)
		ammo = '30' 		--> EVERY 30 AMMO THE PLAYER GETS 1 MUNITIONPACK
	}
}



-- PICTURES
Config.DefaultPic = 'https://cdn.pixabay.com/photo/2016/04/01/08/49/box-1299001_960_720.png'

Config.Items = {
--[[EXAMPLE
	[name from the item] = {
		img = '[image name! Dont forgett to put .png at the end]'
	},
	if you want to add a new item just put it in the itemImages folder. (html -> img -> itemImages)
	]]
	bread = {
		img = 'bread.png'
	},
	bulletproof = {
		img = 'bulletproof.png'
	},
	repairkit = {
		img = 'toolbox.png'
	},
	phone = {
		img = 'phone.png'
	},
	cuffs = {
		img = 'rope.png'
	},
	cuff_keys = {
		img = 'cuff_keys.png'
	},
	radio = {
		img = 'radio.png'
	},
	weedbag = {
		img = 'hanfpulver.png'
	},
	water = {
		img = 'water.png'
	},
	weed = {
		img = 'weed.png'
	},
	bandage = {
		img = 'bandage.png'
	},
	weedsamen = {
		img = 'hanfsamen.png'
	},
	lsfdstandard = {
		img = 'hoodie.png'
	},
	juice_orage = {
		img = 'juice_orage.png'
	},
	orage = {
		img = 'orage.png'
	},
	traubenverarbeitet = {
		img = 'Trauben.png'
	},
	trauben = {
		img = 'Traubensaft.png'
	},
	magazin = {
		img = 'Magazin.png'
	},
	medikit = {
		img = 'medikit.png'
	},
	iron = {
		img = 'iron.png'
	},
	stahl = {
		img = 'Stahlbarren.png'
	},
	eisenerz = {
		img = 'Eisenerz.png'
	},
	aluminium = {
		img = 'Aluminiumbarren.png'
	},
	aluminiumoxid = {
		img = 'Aluminiumerz.png'
	},
	bauxit = {
		img = 'schutt.png'
	},
	huelse = {
		img = 'Benutztes Kondom.png'
	},
	schraube = {
		img = 'schraube.png'
	},
	holz = {
		img = 'Holzplanke.png'
	},
	aramid = {
		img = 'faser.png'
	},
	aramidfasern = {
		img = 'bfaser.png'
	},
	ephi = {
		img = 'ephedrin.png'
	},
	kroeten_pooch = {
		img = 'kroeten2'
	},
	kroeten = {
		img = 'kroeten.png'
	},
	meth = {
		img = 'methlabor.png'
	},
    jewels = {
		img = 'jewels.png'
	},
	firstaidkit = {
		img = 'medikit.png'
	},
	drill = {
		img = '123avba.png'
	},
	contract = {
		img = 'contract.png'
	},
	clip = {
		img = 'clip.png'
	},
	kocher = {
		img = 'kocher.png'
	},
	tfcoupon = {
		img = '25coupon.png'
	},
	ffcoupon = {
		img = '50coupon.png'
	},
	teddy = {
		img = 'teddy.png'
	},
	rose = {
		img = 'rose.png'
	},
	casinochips = {
		img = 'wurfel.png'
	},
	baggies = {
		img = 'backpack.png'
	},
	cocacola = {
		img = 'cola.png'
	},
	steine = {
		img = 'schutt.png'
	},
	gusenberg = {
		img = 'Gusenberg.png'
	},
	advancedrifle = {
		img = 'AdvanvcedRifle.png'
	},
	lspdweste = {
		img = 'lspdstandard.png'
	},
	lspdstandard = {
		img = 'police-uniform.png'
	},
	fibweste = {
		img = 'federalagent.png'
	},
	fibstandard = {
		img = 'federalagent.png'
	},
	lsmcstandard = {
		img = 'lsmcstandard.png'
	},
	pistol = {
		img = 'PISTOL.png'
	},
	assaultrifle = {
		img = 'Assaultrifle.png'
	}, 
	pumpshotgun = {
		img = 'Pumpshotgun.png'
	}, 
	specialcarbine = {
		img = 'SpecialCarbine.png'
	}, 
	stungun = {
		img = 'Tazer.png'
	}, 
	heavypistol = {
		img = 'HeavyPistol.png'
	}, 
	bullpuprifle = {
		img = 'BullpupRifle.png'
	}, 
	nightstick = {
		img = 'Schlagstock.png'
	}, 
	flashlight = {
		img = 'flashlight.png'
	}, 
	hatchet = {
		img = 'Axt.png'
	}, 
	knuckle = {
		img = 'schlagring.png'
	}, 
	knife = {
		img = 'Messer.png'
	}, 
	machete = {
		img = 'Machete.png'
	}, 
	switchblade = {
		img = 'SwitchBlade.png'
	}, 
	appistol = {
		img = 'ApPistol.png'
	}, 
	combatpistol = {
		img = 'CombatPistol.png'
	}, 
	pistol50 = {
		img = 'Pistol50.png'
	}, 
	snspistol = {
		img = 'SnSPistol.png'
	}, 
	vintagepistol = {
		img = 'VintagePistol.png'
	}, 
	flaregun = {
		img = 'Flaregun.png'
	}, 
	microsmg = {
		img = 'MicroSMG.png'
	}, 
	smg = {
		img = 'SMG.png'
	}, 
	assaultsmg = {
		img = 'AssaultSMG.png'
	}, 
	machinepistol = {
		img = 'MachinePistol.png'
	}, 
	combatpdw = {
		img = 'CombatPDW.png'
	}, 
	minismg = {
		img = 'MiniSMG.png'
	}, 
	carbinerifle = {
		img = 'CarbineRifle.png'
	}, 
	militaryrifle = {
		img = 'militaryrifle.png'
	}, 
	sniperrifle = {
		img = 'Sniperrifle.png'
	}, 
	heavysniper = {
		img = 'HeavySniper.png'
	}, 
	marksmanrifle = {
		img = 'MarksmanRifle.png'
	}, 
	smokegrenade = {
		img = 'smokegrenade.png'
	}, 
	bzgas = {
		img = 'smokegrenade.png'
	}, 
	flare = {
		img = 'flare.png'
	}, 
	petrolcan = {
		img = 'Kanister.png'
	},
	erdnuss = {
		img = 'erdnuss.png'
	}, 
----------------------------------------------------------WAFFEN-----------------------------------------------------------
	GADGET_PARACHUTE = {
		img = 'FallSchirm.png'
	},
	WEAPON_GUSENBERG = {
		img = 'Gusenberg.png'
	},
	WEAPON_ADVANCEDRIFLE = {
		img = 'AdvanvcedRifle.png'
	},
	WEAPON_ASSAULTRIFLE = {
		img = 'Assaultrifle.png'
	},
	WEAPON_PUMPSHOTGUN = {
		img = 'Pumpshotgun.png'
	},
	WEAPON_SPECIALCARBINE = {
		img = 'SpecialCarbine.png'
	},
	WEAPON_PISTOL = {
		img = 'PISTOL.png'
	},
	WEAPON_STUNGUN = {
		img = 'Tazer.png'
	},
	WEAPON_HEAVYPISTOL = {
		img = 'HeavyPistol.png'
	},
	WEAPON_BULLPUPRIFLE = {
		img = 'BullpupRifle.png'
	},
	WEAPON_NIGHTSTICK = {
		img = 'Schlagstock.png'
	},
}