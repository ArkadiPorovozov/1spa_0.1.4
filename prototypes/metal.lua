
--mirandus-
--ringworld-
--shipyard-
--mirandus-a -


--calidus-senestella-gate-senestella

--calidus-senestella-gate-calidus solar

--redstar

PlanetsLib:update({ 
    {
        type = "space-location",
        name = "redstar",
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 120,
            orientation = 0.25,
            },
        }
    
})

if data.raw["space-connection"]["gate-senestella-fulgora"] then
    data.raw["space-connection"]["gate-senestella-fulgora"] = nil
end
if data.raw["space-connection"]["gate-senestella-nauvis"] then
    data.raw["space-connection"]["gate-senestella-nauvis"] = nil
end

PlanetsLib:update(
	{
		{
			type = "space-location",
			name = "calidus-senestella-gate-calidus",
			order = "c[calidus-senestella-gate-calidus]",
			label_orientation = 0.15,
			magnitude = 1,
			orbit =
			{
				parent = {
					type = "space-location",
					name = "star"
				},
				distance = 42,
				orientation = 0.25,
			},
			draw_orbit = false,
		},
})

PlanetsLib:update(
    {
        {
            type = "space-location",
            name = "calidus-senestella-gate-senestella",
            order = "c[calidus-senestella-gate-senestella]",
            label_orientation = 0.25,
            magnitude = 1,
            orbit =
            {
                parent = {
                    type = "space-location",
                    name = "redstar"
                },
                distance = 45,
                orientation = 0.8,
            },      
            draw_orbit = false,
        },
})

PlanetsLib:update(
    {
        {
            type = "planet",
            name = "nix",
            order = "c[nix]",
            label_orientation = 0.25,
            magnitude = 1,
            orbit =
            {
                parent = {
                    type = "space-location",
                    name = "redstar",

                },
                sprite = {
                    type = "sprite",
                    filename = "__metal-and-stars-graphics-2__/graphics/starmap/orbits/orbit_nix.png",
                    size = 4096,
                },
                distance = 38,
                orientation = 0.785,
            },
            draw_orbit = false,
        },
})

PlanetsLib:update(
    {
        {
            type = "space-location",
            name = "mirandus-a",
            order = "c[mirandus-a]",
            label_orientation = 0.25,
            magnitude = 1,
            orbit =
            {
                parent = {
                    type = "space-location",
                    name = "redstar"
                },
                sprite = {
                    type = "sprite",
                    filename = "__metal-and-stars-graphics-2__/graphics/starmap/orbits/orbit_shipyard.png",
                    size = 4096,
                },
                distance = 25,
                orientation = 0.75,
            },
            draw_orbit = false,
        },
})
PlanetsLib:update(
    {
        {
            type = "planet",
            name = "ringworld",
            order = "c[ringworld]",
            label_orientation = 0.25,
            magnitude = 1,
            orbit =
            {
                parent = {
                    type = "space-location",
                    name = "redstar",
                },
                distance = 11,
                orientation = 0.15,
            },
            draw_orbit = false,
        },
})

PlanetsLib:update(
    {
        {
            type = "planet",
            name = "shipyard",
            order = "c[shipyard]",
            label_orientation = 0.25,
            magnitude = 1,
            orbit =
            {
                parent = {
                    type = "space-location",
                    name = "redstar",
                },
                sprite = {
                    type = "sprite",
                    filename = "__metal-and-stars-graphics-2__/graphics/starmap/orbits/orbit_mirandus.png",
                    size = 4096,
                },
                distance = 31,
                orientation = 78.0,
            },
            draw_orbit = false,
        },
})


data:extend(
	{
		{
			type = "space-connection",
			name = "calidus-senestella-gate-calidus-s",
			subgroup = "planet-connections",
			from = "calidus-senestella-gate-calidus",
			to = "sosal1",
			order = "d",
			length = 1000,
			icon = "__1spa__/graphics/icons/transfer-point.png"
		},
	}
	)