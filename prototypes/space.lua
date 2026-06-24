local asteroid_util = require("__1spa__.prototypes.asteroid-spawn-definitions")


-------------------------------------------------------------------------- цвета космической карты


-------------------------------------------------------------------------- Модификации планеты

-- Удалить астероидное нересту
--data.raw["space-connection"]["nauvis-vulcanus"].asteroid_spawn_definitions = nil
--data.raw["space-connection"]["nauvis-gleba"].asteroid_spawn_definitions = nil
--data.raw["space-connection"]["nauvis-fulgora"].asteroid_spawn_definitions = nil
--data.raw["space-connection"]["vulcanus-gleba"].asteroid_spawn_definitions = nil
--data.raw["space-connection"]["gleba-fulgora"].asteroid_spawn_definitions = nil
--data.raw["space-connection"]["gleba-aquilo"].asteroid_spawn_definitions = nil
--data.raw["space-connection"]["fulgora-aquilo"].asteroid_spawn_definitions = nil



-------------------------------------------------------------------------- Обновить существующие места с использованием Planetslib rubia



PlanetsLib:update(
{
	{
		type = "planet",
		name = "vulcanus",

		label_orientation = 0.45,
		solar_power_in_space = 833,
		gravity_pull = 20,
		order = "b[vulcanus]",
		magnitude = 1,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 13,
			orientation = 0.5,
		}
	},
})

PlanetsLib:update(
{

	{
		type = "planet",
		name = "gleba",

		solar_power_in_space = 415,
		gravity_pull = 15,
		order = "c[gleba]",

		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 13,
			orientation = 0.75,
		}
	},
})

PlanetsLib:update(
{

	{
		type = "planet",
		name = "nauvis",

		order = "d[nauvis]",

		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 13,
			orientation = 0.0,
		}
	},
})

PlanetsLib:update(
{

	{
		type = "planet",
		name = "fulgora",

		solar_power_in_space = 133,
		gravity_pull = 8,
		order = "e[fulgora]",

		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 46,
			orientation = 0.75,
		}
	},
})


PlanetsLib:update(
{

	{
		type = "space-location",
		name = "solar-system-edge",

		draw_orbit = false,
		solar_power_in_space = 1,
		order = "i[solar-system-edge]",

		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 50,
			orientation = 0,125,
		}
	},
})

PlanetsLib:update(
{

	{
		type = "space-location",
		name = "shattered-planet",

		label_orientation = 0.2,
		solar_power_in_space = 1,
		order = "j[solar-system-edge]",

		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 75,
			orientation = 0,
		}
	},
})

-------------------------------------------------------------------------- Добавить новые места в пространствепространстве

data:extend(
{
-------------------------------------------------------------------------- Добавить новые астероидные ремни
	{
		type = "space-location",
		name = "ferrarius-belt",
		icon = "__1spa__/graphics/icons/ferrarius-belt.png",
		starmap_icon = "__1spa__/graphics/icons/starmap-location-ferrarius-belt.png",
		starmap_icon_size = 512,
		order = "a[ferrarius-belt]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		solar_power_in_space = 1875,
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_ferrarius, 0.9),
		distance = 8,
		orientation = 0.5,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},

		}
	},
	{
		type = "space-location",
		name = "carbolithic-belt",
		icon = "__1spa__/graphics/icons/carbolithic-belt.png",
		starmap_icon = "__1spa__/graphics/icons/starmap-location-carbolithic-belt.png",
		starmap_icon_size = 512,
		order = "f[carbolithic-belt]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		solar_power_in_space = 83,
		distance = 46,
		orientation = 0.625,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 46,
			orientation = 0.625,
		}
	},
	{
		type = "space-location",
		name = "aquilite-cluster",
		icon = "__1spa__/graphics/icons/aquilite-cluster.png",
		starmap_icon = "__1spa__/graphics/icons/starmap-location-aquilite-cluster.png",
		starmap_icon_size = 512,
		order = "h[aquilite-cluster]",
	    subgroup = "planets",
		gravity_pull = 0,
		magnitude = 1,
		fly_condition = false,
		solar_power_in_space = 40,
		distance = 50,
		orientation = 0.25,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 50,
			orientation = 0.25,
		}
	},

-------------------------------------------------------------------------- Добавить новые местоположения перехвата на планеты
	{
		type = "space-location",
		name = "vulcanus-intercept",
		icons =
		{
			{
				icon = "__1spa__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__space-age__/graphics/icons/vulcanus.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "a[vulcanus-intercept]",
	    subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.2,
		solar_power_in_space = 833,
		distance = 15,
		orientation = 0.5,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},

		}
	},
	{
		type = "space-location",
		name = "gleba-intercept",
		icons =
		{
			{
				icon = "__1spa__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__space-age__/graphics/icons/gleba.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "b[gleba-intercept]",
	    subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.5,
		solar_power_in_space = 415,
		distance = 15,
		orientation = 0.75,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},

		}
	},
	{
		type = "space-location",
		name = "nauvis-intercept",
		icons =
		{
			{
				icon = "__1spa__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__base__/graphics/icons/nauvis.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "c[nauvis-intercept]",
	    subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.49,
		solar_power_in_space = 300,
		distance = 15,
		orientation = 0.0,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},

		}
	},
	{
		type = "space-location",
		name = "fulgora-intercept",
		icons =
		{
			{
				icon = "__1spa__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__space-age__/graphics/icons/fulgora.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "d[fulgora-intercept]",
	    subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.75,
		solar_power_in_space = 133,
		distance = 48,
		orientation = 0.75,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},

		}
	},
	{
		type = "space-location",
		name = "carbolithic-belt-intercept",
		icons =
		{
			{
				icon = "__1spa__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__1spa__/graphics/icons/carbolithic-belt.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "e[carbolithic-belt-intercept]",
	    subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		solar_power_in_space = 83,
		distance = 48,
		orientation = 0.625,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},

		}
	},
	{
		type = "space-location",
		name = "aquilo-intercept",
		icons =
		{
			{
				icon = "__1spa__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__space-age__/graphics/icons/aquilo.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "f[aquilo-intercept]",
	    subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.40,
		solar_power_in_space = 48,
		distance = 48,
		orientation = 0.5,
		orbit = 
		{
			parent = {
				type = "space-location",
				name = "star"
			},

		}
	},
})

-------------------------------------------------------------------------- Добавить новые пространственные соединения и т. Д.

data:extend(
{
	{
		type = "item-subgroup",
		name = "transfer-point",
		group = "space",
		order = "jj"
	},
	{
		type = "space-connection",
		name = "nauvis-low-to-intercept",
		subgroup = "planet-connections",
		from = "nauvis",
		to = "nauvis-intercept",
		order = "d",
		length = 10000,
		icon = "__1spa__/graphics/icons/transfer-point.png"
	},
	{
		type = "space-connection",
		name = "gleba-low-to-intercept",
		subgroup = "planet-connections",
		from = "gleba",
		to = "gleba-intercept",
		order = "d",
		length = 10000,
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
		icon = "__1spa__/graphics/icons/transfer-point.png"
	},
	{
		type = "space-connection",
		name = "vulcanus-low-to-intercept",
		subgroup = "planet-connections",
		from = "vulcanus",
		to = "vulcanus-intercept",
		order = "d",
		length = 10000,
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
		icon = "__1spa__/graphics/icons/transfer-point.png"
	},
	{
		type = "space-connection",
		name = "fulgora-low-to-intercept",
		subgroup = "planet-connections",
		from = "fulgora",
		to = "fulgora-intercept",
		order = "d",
		length = 10000,
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
		icon = "__1spa__/graphics/icons/transfer-point.png"
	},
	{
		type = "space-connection",
		name = "aquilo-low-to-intercept",
		subgroup = "planet-connections",
		from = "aquilo",
		to = "aquilo-intercept",
		order = "d",
		length = 12000,
		icon = "__1spa__/graphics/icons/transfer-point.png"
	},
	{
		type = "space-connection",
		name = "vulcanus-ferrarius",
		subgroup = "planet-connections",
		from = "vulcanus-intercept",
		to = "ferrarius-belt",
		order = "d",
		length = 3000,
		icon = "__1spa__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_ferrarius)
	},
	{
		type = "space-connection",
		name = "carbolithic-belt-to-intercept",
		subgroup = "planet-connections",
		from = "carbolithic-belt-intercept",
		to = "carbolithic-belt",
		order = "d",
		length = 3000,
		icon = "__1spa__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.carbolithic_belt)
	},
	{
		type = "space-connection",
		name = "fulgora-to-carbolithic-belt",
		subgroup = "planet-connections",
		from = "fulgora-intercept",
		to = "carbolithic-belt-intercept",
		order = "d",
		length = 5000,
		icon = "__1spa__/graphics/icons/transfer-point.png"
	},
	{
		type = "space-connection",
		name = "carbolithic-belt-to-aquilo",
		subgroup = "planet-connections",
		from = "carbolithic-belt-intercept",
		to = "aquilo-intercept",
		order = "d",
		length = 5000,
		icon = "__1spa__/graphics/icons/transfer-point.png"
	},
	{
		type = "space-connection",
		name = "aquilo-to-aquilite-cluster",
		subgroup = "planet-connections",
		from = "aquilo-intercept",
		to = "aquilite-cluster",
		order = "d",
		length = 12500,
		icon = "__1spa__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_aquilite)
	},
	{
		type = "space-connection",
		name = "aquilite-cluster-to-solar-system-edge",
		subgroup = "planet-connections",
		from = "aquilite-cluster",
		to = "solar-system-edge",
		order = "d",
		icon = "__space-age__/graphics/icons/solar-system-edge.png",  
		length = 100000,
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilite_cluster_solar_system_edge)
	},
})


---------------------------------------------------------------------- rubia


if mods["rubia"] then

	data.raw["space-connection"]["gleba-rubia"].from = "rubia"
	data.raw["space-connection"]["vulcanus-rubia"].to = "vulcanus"
	----------------------------------------------------------------------


	PlanetsLib:update(
	{
		{
			type = "planet",
			name = "rubia",
			order = "b[rubia]",
			magnitude = 1,
			orbit = 
			{
				parent = {
					type = "space-location",
					name = "star"
				},
				distance = 38,
				orientation = 0.5
			},
			--draw_orbit = false,

      
		},
	})

	data:extend(
		{
			{
				type = "space-connection",
				name = "rubia-s2",
				subgroup = "planet-connections",
				from = "rubia",
				to = "sosal2",
				order = "d",
				length = 10000,
				icon = "__1spa__/graphics/icons/transfer-point.png"
			}
		}
	)

end


if mods["skewer_planet_vesta"] then

	data.raw["space-connection"]["fulgora-vesta"].to = "fulgora"
	----------------------------------------------------------------------

	PlanetsLib:update(
	{
		{
			type = "planet",
			name = "vesta",
			order = "b[vesta]",
			magnitude = 1.25,
			orbit = 
			{
				parent = {
					type = "space-location",
					name = "star"
				},
				distance = 50,
				orientation = 0.625
			},
			draw_orbit = false,
		},
	})


	data:extend(
		{
			{
				type = "space-connection",
				name = "vesta-cbi",
				subgroup = "planet-connections",
				from = "vesta",
				to = "carbolithic-belt-intercept",
				order = "d",
				length = 12000,
				icon = "__1spa__/graphics/icons/transfer-point.png"
			},


		}
	)

end

if mods["Moshine"] then



	if data.raw["space-connection"]["nauvis-moshine"] then
		data.raw["space-connection"]["nauvis-moshine"] = nil
	end

	if data.raw["space-connection"]["vulcanus-moshine"] then
		data.raw["space-connection"]["vulcanus-moshine"] = nil
	end
	----------------------------------------------------------------------

	PlanetsLib:update(
	{
		{
			type = "planet",
			name = "moshine",
			order = "b[moshine]",
			magnitude = 1,
			orbit = 
			{
				parent = {
					type = "space-location",
					name = "star"
				},
				distance = 17,
				orientation = 0.5
			},
			--draw_orbit = false,
		},
	})


	data:extend(
		{
			{
				type = "space-connection",
				name = "moshine-vi",
				subgroup = "planet-connections",
				from = "moshine",
				to = "vulcanus-intercept",
				order = "d",
				length = 10000,
				asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
				icon = "__1spa__/graphics/icons/transfer-point.png"
			},


		}
	)

end

---------------------------------------------------------------------- panglia

if mods["panglia_planet"] then



	if data.raw["space-connection"]["gleba-panglia"] then
		data.raw["space-connection"]["gleba-panglia"] = nil
	end
	----------------------------------------------------------------------

	PlanetsLib:update(
	{
		{
			type = "planet",
			name = "panglia",
			order = "b[panglia]",
			label_orientation = 0.0,
			magnitude = 1,
			orbit = 
			{
				parent = {
					type = "space-location",
					name = "star"
				},
				distance = 42,
				orientation = 0.75
			},
			--draw_orbit = false,
		},
	})


	data:extend(
		{
			{
				type = "space-connection",
				name = "panglia-s3",
				subgroup = "planet-connections",
				from = "panglia",
				to = "sosal3",
				order = "d",
				length = 10000,
				asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
				icon = "__1spa__/graphics/icons/transfer-point.png"
			},


		}
	)

end

---------------------------------------------------------------------- dea-dia-system

if mods["dea-dia-system"] then



	if data.raw["space-connection"]["dea-dia-system-edge-fulgora"] then
		data.raw["space-connection"]["dea-dia-system-edge-fulgora"] = nil
	end
	----------------------------------------------------------------------

	data:extend(
		{
			{
				type = "space-connection",
				name = "panglia-s3",
				subgroup = "planet-connections",
				from = "panglia",
				to = "sosal3",
				order = "d",
				length = 10000,
				icon = "__1spa__/graphics/icons/transfer-point.png"
			},


		}
	)

	PlanetsLib:update(
	{
		{
			type = "planet",
			name = "prosephina",
			orbit = {

				parent = {
					type = "planet",
					name = "planet-dea-dia"
				},
				distance = 6,
				orientation = 0.5,
			},

		},
	})

	PlanetsLib:update(
		{
			{
				type = "planet",
				name = "lemures",
				orbit = {
					parent = {
						type = "planet",
						name = "planet-dea-dia"
					},
					distance = 6,
					orientation = 0,
				},
			},
	})

	PlanetsLib:update(
		{
			{
				type = "planet",
				name = "planet-dea-dia",
				orbit = {
					parent = {
						type = "space-location",
						name = "star"
					},
					distance = 80,
					orientation = 0.75,
				},
			},
	})

	PlanetsLib:update(
		{
			{
				type = "space-location",
				name = "dea-dia-system-edge",
				orbit = {
					parent = {
						type = "space-location",
						name = "star"
					},
					distance = 70,
					orientation = 0.75,
				},
			},
	})

	PlanetsLib:update(
		{
			{
				type = "space-location",
				name = "star-dea-dia",
				orbit = {
					parent = {
						type = "space-location",
						name = "star"
					},
					distance = 80,
					orientation = 0.75,
				},
			},
	})

end



---------------------------------------------------------------------- arig-hyarion

if mods["planetaris-unbounded"] then


	if data.raw["space-connection"]["vulcanus-arig"] then
		data.raw["space-connection"]["vulcanus-arig"] = nil
	end

	if data.raw["space-connection"]["nauvis-arig"] then
		data.raw["space-connection"]["nauvis-arig"] = nil
	end
	if data.raw["space-connection"]["fulgora-arig"] then
		data.raw["space-connection"]["fulgora-arig"] = nil
	end
	if data.raw["space-connection"]["fulgora-hyarion"] then
		data.raw["space-connection"]["fulgora-hyarion"] = nil
	end

----------------------------------------------------------------------

	PlanetsLib:update(
	{
		{
			type = "planet",
			name = "arig",
			order = "b[arig]",
			label_orientation = 0.5,
			magnitude = 1.25,
			orbit = 
			{
				parent = {
					type = "space-location",
					name = "star"
				},
				distance = 17,
				orientation = 0.625
			},
			draw_orbit = false,
		},
	})



	PlanetsLib:update(
	{
		{
			type = "planet",
			name = "hyarion",
			order = "c[hyarion]",
			label_orientation = 0.75,
			magnitude = 1,
			orbit = 
			{
				parent = {
					type = "space-location",
					name = "star"
				},
				distance = 21,
				orientation = 0.625,

				--sprite = {
				--	type = "sprite",
				--	filename = "__muluna-graphics__/graphics/orbits/orbit-muluna.png",
				--	size = 412,
				--	scale = 0.25
				--}
			},
			draw_orbit = false,
		},
	})

	data:extend(
	{
		{
			type = "space-connection",
			name = "arig-gi",
			subgroup = "planet-connections",
			from = "arig",
			to = "gleba-intercept",
			order = "d",
			length = 1000,
			asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
			icon = "__1spa__/graphics/icons/transfer-point.png"
		},
	}
	)
	data:extend(
	{
		{
			type = "space-connection",
			name = "arig-vi",
			subgroup = "planet-connections",
			from = "arig",
			to = "vulcanus-intercept",
			order = "d",
			length = 1000,
			asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
			icon = "__1spa__/graphics/icons/transfer-point.png"
		},
	}
	)


end
---------------------------------------------------------------------- skewer_shattered_planet

if mods["skewer_shattered_planet"] then
	--shattered-planet
	--skewer_shattered_planet

	--skewer_lost_beyond


PlanetsLib:update(
			{{
				type = "planet",
				name = "skewer_shattered_planet",
				order = "c[skewer_shattered_planet]",
				label_orientation = 0.75,
				magnitude = 1,
				orbit =
				{
					parent = {
						type = "space-location",
						name = "star"
					},
					distance = 80,
					orientation = 0.175,
				},
				draw_orbit = false,
		},})

		PlanetsLib:update(
			{
				{
					type = "space-location",
					name = "skewer_lost_beyond",
					orbit = {
						parent = {
							type = "space-location",
							name = "star"
						},
						distance = 81,
						orientation = 0.25,
					},
				},
		})

--0,375
end

--carna



if mods["carna"] then


	if data.raw["space-connection"]["carna-aquilo"] then
		data.raw["space-connection"]["carna-aquilo"] = nil
	end
	if data.raw["space-connection"]["carna-maraxsis"] then
		data.raw["space-connection"]["carna-maraxsis"] = nil
	end


PlanetsLib:update(
			{{
				type = "planet",
				name = "carna",
				order = "c[carna]",
				label_orientation = 0.75,
				magnitude = 1,
				orbit =
				{
					parent = {
						type = "space-location",
						name = "star"
					},
					distance = 30,
					orientation = (255/360),
				},
				draw_orbit = false,
		},})

--0,375
end
