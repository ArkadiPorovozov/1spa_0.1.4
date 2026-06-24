
	data.raw.recipe["thruster-oxidizer"].ingredients =
	{
		{type = "fluid", name = "water", amount = 75}
	}
	
	data.raw.recipe["nuclear-fuel"].category = "crafting-with-fluid"
	data.raw.recipe["nuclear-fuel"].ingredients =
	{
		{type = "item", name = "uranium-235", amount = 1},
		{type = "fluid", name = "light-oil", amount = 20}
	}

	--data.raw.recipe["rocket-fuel-from-jelly"].icon = "__1spa__/graphics/icons/rocket-fuel-from-jelly.png"
	--data.raw.recipe["rocket-fuel-from-jelly"].results = 
	--{
	--	{type="fluid", name="thruster-fuel", amount=75}
	--}
--  ----  ----  ----  ----  ----  ----  --
	data.raw.recipe["advanced-thruster-oxidizer"].category = "cryogenics"
	data.raw.recipe["advanced-thruster-oxidizer"].energy_required = 120
	data.raw.recipe["advanced-thruster-oxidizer"].icon = "__1spa__/graphics/icons/advanced-thruster-oxidizer.png"
	data.raw.recipe["advanced-thruster-oxidizer"].results = {{type = "fluid", name = "thruster-oxidizer", amount = 150}}
	data.raw.recipe["advanced-thruster-oxidizer"].ingredients =
	{
		{type = "item", name = "ice", amount = 10},
		{type = "fluid", name = "steam", amount = 25}
	}
	data.raw.recipe["advanced-thruster-oxidizer"].surface_conditions = nil
--  ----  ----  ----  ----  ----  ----  --
--  ----  ----  ----  ----  ----  ----  --нихуя виксь

--data.raw.recipe["advanced-circuit"].ingredients =
--{
--	{type = "item", name = "electronic-circuit", amount = 2},
--	{type = "item", name = "plastic-bar", amount = 2},
--	{type = "item", name = "copper-cable", amount = 4},
--}

--  ----  ----  ----  ----  ----  ----  -- похуйшено
--  ----  ----  ----  ----  ----  ----  --
	data.raw.recipe["advanced-thruster-fuel"].icon = "__1spa__/graphics/icons/advanced-thruster-fuel.png"
	data.raw.recipe["advanced-thruster-fuel"].energy_required = 120
	data.raw.recipe["advanced-thruster-fuel"].results = {{type = "fluid", name = "thruster-fuel", amount = 150}}
	data.raw.recipe["advanced-thruster-fuel"].ingredients =
	{
		{type = "item", name = "carbon", amount = 12},
		{type = "item", name = "calcite", amount = 1},
		{type = "fluid", name = "steam", amount = 25}
	}
		
	data.raw.recipe["rocket-fuel"].crafting_machine_tint =
	{
		primary = {r = 0.596, g = 0.764, b = 0.780, a = 1.000},
		secondary = {r = 0.551, g = 0.762, b = 0.844, a = 1.000},
		tertiary = {r = 0.596, g = 0.773, b = 0.895, a = 1.000},
		quaternary = {r = 0.290, g = 0.734, b = 1, a = 1.000},
	}
--  ----  ----  ----  ----  ----  ----  --
