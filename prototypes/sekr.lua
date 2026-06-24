---------------------------------------------------------------------- Paracelsin

if mods["Paracelsin"] then



	if data.raw["space-connection"]["fulgora-paracelsin"] then
		data.raw["space-connection"]["fulgora-paracelsin"] = nil
	end

	if data.raw["space-connection"]["gleba-paracelsin"] then
		data.raw["space-connection"]["gleba-paracelsin"] = nil
	end

	--if data.raw["space-connection"]["paracelsin-gleba"] then
	--	data.raw["space-connection"]["paracelsin-gleba"] = nil
	--end

	if data.raw["space-connection"]["paracelsin-aquilo"] then
		data.raw["space-connection"]["paracelsin-aquilo"] = nil
	end

	if data.raw["space-connection"]["paracelsin-solar-system-edge"] then
		data.raw["space-connection"]["paracelsin-solar-system-edge"] = nil
	end

----------------------------------------------------------------------

data.raw.planet["paracelsin"].label_orientation = 0
data.raw.planet["paracelsin"].magnitude = 1
data.raw.planet["paracelsin"].orientation = 0.27
data.raw.planet["paracelsin"].distance = 34

	data:extend(
		{
			{
				type = "space-connection",
				name = "paracelsin-sosal1",
				subgroup = "planet-connections",
				from = "paracelsin",
				to = "sosal1",
				order = "d",
				length = 5000,
				icon = "__1spa__/graphics/icons/transfer-point.png"
			},
		}
	)

end

---------------------------------------------------------------------- secretas

if mods["secretas"] then


	if data.raw["space-connection"]["aquilo-secretas"] then
		data.raw["space-connection"]["aquilo-secretas"] = nil
	end

	if data.raw["space-connection"]["secretas-edge"] then
		data.raw["space-connection"]["secretas-edge"] = nil
	end
	if data.raw["space-connection"]["frozeta-edge"] then
		data.raw["space-connection"]["frozeta-edge"] = nil
	end

----------------------------------------------------------------------

data.raw.planet["secretas"].label_orientation = 0.5
data.raw.planet["secretas"].magnitude = 1.25
data.raw.planet["secretas"].distance = 38
data.raw.planet["secretas"].orientation = 0


data.raw.planet["frozeta"].label_orientation = 0.75
data.raw.planet["frozeta"].magnitude = 1
data.raw.planet["frozeta"].distance = 38
data.raw.planet["frozeta"].orientation = 0.25

	data:extend(
		{
			{
				type = "space-connection",
				name = "frozeta-s1",
				subgroup = "planet-connections",
				from = "frozeta",
				to = "sosal1",
				order = "d",
				length = 10000,
				icon = "__1spa__/graphics/icons/transfer-point.png"
			},
		}
	)
	data:extend(
	{
		{
			type = "space-connection",
			name = "secretas-s",
			subgroup = "planet-connections",
			from = "secretas",
			to = "sosal",
			order = "d",
			length = 10000,
			icon = "__1spa__/graphics/icons/transfer-point.png"
		},
	}
	)

end
