Config = {}

Config.DrawDistance 			  = 100.0
Config.MarkerType    			  = 1
Config.MarkerSize   			  = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 0, p = 255 }
Config.MarkerDeletersColor        = { r = 255, g = 0, p = 0 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- enable if you're using esx_identity


Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

reward = math.random(25000)

Config.MaxInService               = -1
Config.Locale = 'fa'

Config.JournalistStations = {

	Journalist = {

		Blip = {
			Pos     = { x = -1053.9, y = -230.65, z = 43.02 },
			Sprite  = 564,
			Display = 4,
			Scale   = 1.2,
			Colour  = 0,
		},

		Cloakrooms = {
			{ x = -1066.79, y = -243.79, z = 43.07 },

	},

		Vehicles = {
			{
				Spawner    = { x = -1100.31, y = -259.56, z = 36.68 },
	SpawnPoints = {
					{ x = -1095.53, y = -274.78, z = 37.7, heading = 340.8, radius = 6.0 },
					{ x = -1095.53, y = -274.78, z = 37.7, heading = 340.8, radius = 6.0  },
					{ x = -1095.53, y = -274.78, z = 37.7, heading = 340.8, radius = 6.0  }
		}
			},
		},

		VehicleDeleters = {
			{ x = -1095.53, y = -274.78, z = 36.7 }
	},

		BossActions = {
			{ x = -1053.9, y = -230.65, z = 43.02 }
	},

		Elevator = {
			{
				Top = { x = -1075.11, y = -253.0, z = 43.07 },
				Down = { x = -1075.3, y = -253.36, z = 36.50 },
				Parking = { x = -1099.29, y = -251.52, z = 37.03 }
}
		},

},
}

Config.AuthorizedVehicles = {
	Shared = {	
		{
			model = 'Rumpo',
			label = 'Rumpo'
		}

},

	agent = {

	},

	special = {			

	},

	supervisor = {				

	},

	assistant = {				
},

	boss = {

	}
}

Config.Uniforms = {
	agent_wear = {
		male = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		}
	},

	special_wear = {
		male = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		}
	},

	supervisor_wear = {
		male = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		}
	},

	assistant_wear = {
		male = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		}
	},

	boss_wear = {
		male = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		},
		female = {
			['tshirt_1'] = 4,
			['tshirt_2'] = 0,
			['torso_1'] = 4,
			['torso_2'] = 0,
			['decals_1'] = 0,
			['decals_2'] = 0,
			['arms'] = 6,
			['arms_2'] = 0,
			['pants_1'] = 10,
			['pants_2'] = 0,
			['shoes_1'] = 10,
			['shoes_2'] = 0,
			['helmet_1'] = -1,
			['helmet_2'] = 0,
			['chain_1'] = 10,
			['chain_2'] = 0,
			['ears_1'] = 4,
			['ears_2'] = 0,
			['mask_1'] = 0,
			['mask_2'] = 0
		}
	}
}