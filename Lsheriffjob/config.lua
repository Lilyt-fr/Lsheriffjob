Config                            = {}
Config.DrawDistance               = 25.0
Config.Type = 21
Config.Locale = 'fr'

Config.WebHookPlainte = "https://discordapp.com/api/webhooks/1067824146580516894/574Zz0YedbydQJGjdW9nIV--z76Z3yjcNJh4ck_s8RykDGLxYpc-d9G_V79fxcbly213" 
Config.Logs_Fouille = "https://discordapp.com/api/webhooks/1067824813802004570/i6Vid5frrzKIkA76jiXHVf518S2vVgCPZUAt2G067vMW8Oz99rYlcn1XD6hOFooHRTAu"
Config.Logs_Objets_depot = "https://discordapp.com/api/webhooks/1067824813802004570/i6Vid5frrzKIkA76jiXHVf518S2vVgCPZUAt2G067vMW8Oz99rYlcn1XD6hOFooHRTAu"
Config.Logs_Objets_retrait = "https://discordapp.com/api/webhooks/1067824813802004570/i6Vid5frrzKIkA76jiXHVf518S2vVgCPZUAt2G067vMW8Oz99rYlcn1XD6hOFooHRTAu"
Config.Logs_Armes_depot = "https://discordapp.com/api/webhooks/1067824813802004570/i6Vid5frrzKIkA76jiXHVf518S2vVgCPZUAt2G067vMW8Oz99rYlcn1XD6hOFooHRTAu"
Config.Logs_Armes_retrait = "https://discordapp.com/api/webhooks/1067824813802004570/i6Vid5frrzKIkA76jiXHVf518S2vVgCPZUAt2G067vMW8Oz99rYlcn1XD6hOFooHRTAu"
Config.Logs_PriseFin_Service = "https://discordapp.com/api/webhooks/1067824813802004570/i6Vid5frrzKIkA76jiXHVf518S2vVgCPZUAt2G067vMW8Oz99rYlcn1XD6hOFooHRTAu"
Config.Logs_Amende = "https://discordapp.com/api/webhooks/1067824993121079448/U5wAbPsJ-bWqNh_DEy8H1mQ_9c7u9v9k-qdNa2GPinL1ghImdOpRkhc1gMQGu7y4TJs4"

------------------
Config.Grade_Pour_Radar = 2  -- Accès Menu radar 
Config.Grade_Pour_Objets = 2  -- Accès Menu objets 
Config.Grade_Pour_Chien = 2 -- Accès Menu chien 
Config.Grade_Pour_Camera = 2 -- Accès Menu caméra 
Config.Grade_Pour_AvisRecherche = 1 -- Accès Menu adr 
--------------------
Config.Grade_Pour_PPA = 7 -- retirer/donner ppa
Config.Grade_Pour_Permis = 7 -- retirer/donner permis
------------------

Config.pos = {
    blip = {
        position = {x = 1857.92, y = 3680.45, z = 33.78}
    },
	garagevoiture = {
        position = {x = 1859.76, y = 3710.29, z = 33.95, h = 274.09}
    },
	garageheli = {
        position = {x = 1860.32, y = 3705.62, z = 3.97, h = 113.98}
    },
    garagebateau = {
        position = {x = -717.64, y = -1327.16, z = 1.60, h = 56.18}
    },
	armurerie = {
        position = {x = 1840.67, y = 3690.62, z = 30.68, h = 304.07}
    },
	vestiaire = {
        position = {x = 1857.29, y = 3696.08, z = 34.33}
    },
    coffre = {
        position = {x = 1850.29, y = 3694.22, z = 30.66}
    },
    boss = {
        position = {x = 1834.34, y = 3677.03, z = 38.87}
    },
    plainterdv = {
        position = {x = 1856.80, y = 3690.16, z = 34.33, h = 137.46}
    },
    casierjudiciaire = {
        position = {x = 1843.07, y = 3678.38, z = 30.66}
    }
}

Config.spawn = {
	spawnvoiture = {position = {x = 1861.75, y = 3706.57, z = 33.95, h = 300.00}},
	spawnheli = {position = {x = 1853.41, y = 3706.25, z = 33.97, h = 210.47}},
    spawnbato = {position = {x = -723.94, y = -1326.91, z = 0.60, h = 234.00}}
}

Config.armurerie = {
	{nom = "Famas", arme = "weapon_bullpuprifle_mk2", minimum_grade = 8},
	{nom = "Pistolet de detresse", arme = "weapon_flaregun", minimum_grade = 8},
	{nom = "Fusil à pompe", arme = "weapon_pumpshotgun_mk2", minimum_grade = 8},
	{nom = "Fusil à pompe 2", arme = "weapon_combatshotgun", minimum_grade = 8},
	{nom = "M4", arme = "weapon_carbinerifle_mk2", minimum_grade = 8},
	{nom = "M16", arme = "weapon_specialcarbine_mk2", minimum_grade = 8},
	{nom = "Brigitte", arme = "weapon_heavysniper", minimum_grade = 8}
}

Config.amountAmmo = 500

sheriff = {
    clothes = {
        specials = {
            [0] = {
                label = "Reprendre sa tenue civil",
                minimum_grade = 0, -- grade minmum pour prendre la tenue
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },
            [1] = {
                label = "Tenue sheriff",
                minimum_grade = 0, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 87, ['bags_2'] = 0,
                        ['tshirt_1'] = 44, ['tshirt_2'] = 0,
                        ['torso_1'] = 94, ['torso_2'] = 1,
                        ['arms'] = 19,
                        ['pants_1'] = 130, ['pants_2'] = 5,
                        ['shoes_1'] =35, ['shoes_2'] = 1,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        --['bproof_1'] = 13,
                        ['chain_1'] = 1, ['chain_2'] = 1,
                        ['helmet_1'] = 33, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 52,['tshirt_2'] = 0,
                        ['torso_1'] = 224, ['torso_2'] = 0,
                        ['arms'] = 14, ['arms_2'] = 0,
                        ['pants_1'] = 135, ['pants_2'] = 1,
                        ['shoes_1'] = 25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 14,
                        ['chain_1'] = 8,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            --[[[2] = {
                label = "Tenue Gradé",
                minimum_grade = 2, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 39, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 30,
                        ['pants_1'] = 46, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            [3] = {
                label = "Tenue Sergent",
                minimum_grade = 2, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 39, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 30,
                        ['pants_1'] = 46, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            [4] = {
                label = "Tenue Lieutenant",
                minimum_grade = 3, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 39, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 30,
                        ['pants_1'] = 46, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            },
            [5] = {
                label = "Tenue Directeur",
                minimum_grade = 4, -- grade minmum pour prendre la tenue
                variations = {
                    male = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 39, ['tshirt_2'] = 0,
                        ['torso_1'] = 55, ['torso_2'] = 0,
                        ['arms'] = 30,
                        ['pants_1'] = 46, ['pants_2'] = 0,
                        ['shoes_1'] =25, ['shoes_2'] = 0,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    },
                    female = {
                        ['bags_1'] = 0, ['bags_2'] = 0,
                        ['tshirt_1'] = 15,['tshirt_2'] = 2,
                        ['torso_1'] = 65, ['torso_2'] = 2,
                        ['arms'] = 36, ['arms_2'] = 0,
                        ['pants_1'] = 38, ['pants_2'] = 2,
                        ['shoes_1'] = 12, ['shoes_2'] = 6,
                        ['mask_1'] = 0, ['mask_2'] = 0,
                        ['bproof_1'] = 0,
                        ['chain_1'] = 0,
                        ['helmet_1'] = -1, ['helmet_2'] = 0,
                    }
                },
                onEquip = function()  
                end
            }]]--
        },
        grades = {
            [0] = {
                label = "Mettre",
                minimum_grade = 0, -- grade minmum pour prendre la tenue
                variations = {
                male = {
                    ['bproof_1'] = 27, ['bproof_2'] = 0,
                },
                female = {
                    ['bproof_1'] = 12, ['bproof_2'] = 1,
                }
            },
            onEquip = function()
            end
        },
		[1] = {
			label = "Enlever",
			minimum_grade = 0, -- grade minmum pour prendre la tenue
			variations = {
			male = {
				['bproof_1'] = 0,
			},
			female = {
				['bproof_1'] = 0,
			}
		},
		onEquip = function()
		end
	},
    }
},
	vehicles = {                                                         -- category = Separator en rageui 
        car = {                                                           -- Label = nom ig qui apparaitra sur le bouton 
            {category = "↓ ~b~Véhicules ~s~↓"},                           -- Model = nom de spawn du véhicule
            {model = "polstanierr", label = "Stanier", minimum_grade = 0, stock = 5},
            {model = "polalamor", label = "Alamo", minimum_grade = 1, stock = 2},
			{model = "polbisonr", label = "Bison", minimum_grade = 1, stock = 2},
            {model = "polverus", label = "Verus", minimum_grade = 1, stock = 4},
            {model = "polthrust", label = "Thrust", minimum_grade = 2, stock = 4},
            {model = "polcarar", label = "Caracara", minimum_grade = 2, stock = 2},
            {model = "polgresleyr", label = "Gresley", minimum_grade = 2, stock = 2},
            {model = "polspeedor", label = "Speedo", minimum_grade = 3, stock = 2},
            {model = "poldraugur", label = "Draugur", minimum_grade = 4, stock = 2},
            {model = "polscoutr", label = "Scout", minimum_grade = 5, stock = 2},
            {model = "polstalkerr", label = "Stalker", minimum_grade = 5, stock = 2},
            {model = "polbarrage", label = "Barage", minimum_grade = 5, stock = 4},
            {model = "poltorencer", label = "Torence", minimum_grade = 7, stock = 2}, -- CMD
            {category = "↓ ~b~Rangement ~s~↓"},
        },
    }
}