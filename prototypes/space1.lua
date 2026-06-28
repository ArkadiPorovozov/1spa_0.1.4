--data.raw.planet["nauvis"].orientation = 0.1
local asteroid_util = require("__1spa__.prototypes.asteroid-spawn-definitions")
--  ----  ----  ----  ----  ----  ----  --
data:extend({ 
    {
        type = "space-location", 
        name = "sosal",
        localised_name = "sosal",  -- название сюды
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        order = "f[solar-system-edge]",
        subgroup = "planets",
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 15,
            orientation = 0.5,
        },
        draw_orbit = false,
        distance = 40,
        orientation = 0,
        label_orientation = 0.15,
        solar_power_in_space = 100,
        --asteroid_spawn_influence = 1, 
        --asteroid_spawn_definitions = asteroid_util.spawn_definitions(
            --asteroid_util.aquilo_solar_system_edge,
            --0.9 
        --)
    }
})

data:extend({ 
    {
        type = "space-location", 
        name = "sosal1",
        localised_name = "sosal",  
        icon = "__space-age__/graphics/icons/solar-system-edge.png",       
        order = "f[solar-system-edge]", 
        subgroup = "planets",
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 15,
            orientation = 0.5,
        },    
        draw_orbit = false,  
        distance = 40, 
        orientation = 0.25,         
        label_orientation = 0.15,        
        solar_power_in_space = 100,
    }
})

data:extend({ 
    {
        type = "space-location", 
        name = "sosal2",
        localised_name = "sosal",  
        icon = "__space-age__/graphics/icons/solar-system-edge.png",       
        order = "f[solar-system-edge]", 
        subgroup = "planets",
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 15,
            orientation = 0.5,
        },    
        draw_orbit = false,   
        distance = 40, 
        orientation = 0.5, 
        label_orientation = 0.15,        
        solar_power_in_space = 100,
    }
})
data:extend({ 
    {
        type = "space-location", 
        name = "sosal3",
        localised_name = "sosal",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        order = "f[solar-system-edge]", 
        subgroup = "planets",
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 15,
            orientation = 0.5,
        },    
        draw_orbit = false,   
        distance = 40, 
        orientation = 0.75,         
        label_orientation = 0.15,        
        solar_power_in_space = 100,
    }
})
--  ----  ----  ----  ----  ----  ----  --
data:extend(
    {

        {
            type = "space-connection",
            name = "sosal-1",
            subgroup = "planet-connections",
            from = "sosal",
            to = "sosal1",
            order = "d",
            length = 1500,
            icon = "__1spa__/graphics/icons/transfer-point.png",
            asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
        },
        {
            type = "space-connection",
            name = "sosal1-2",
            subgroup = "planet-connections",
            from = "sosal1",
            to = "sosal2",
            order = "d",
            length = 1500,
            icon = "__1spa__/graphics/icons/transfer-point.png",
            asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
        },
        {
            type = "space-connection",
            name = "sosal2-3",
            subgroup = "planet-connections",
            from = "sosal2",
            to = "sosal3",
            order = "d",
            length = 1500,
            icon = "__1spa__/graphics/icons/transfer-point.png",
            asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
        },
        {
            type = "space-connection",
            name = "sosal-3",
            subgroup = "planet-connections",
            from = "sosal",
            to = "sosal3",
            order = "d",
            length = 1500,
            icon = "__1spa__/graphics/icons/transfer-point.png",
            asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),

        },
        {
            type = "space-connection",
            name = "sosale3-gi",
            subgroup = "planet-connections",
            from = "sosal3",
            to = "gleba-intercept",
            order = "d",
            length = 1000,
            icon = "__1spa__/graphics/icons/transfer-point.png",
            asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
        },
        {
            type = "space-connection",
            name = "sosale2-ai",
            subgroup = "planet-connections",
            from = "sosal3",
            to = "aquilo-intercept",
            order = "d",
            length = 5000,
            icon = "__1spa__/graphics/icons/transfer-point.png",
            asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
        },
        {
            type = "space-connection",
            name = "sosale3-gi",
            subgroup = "planet-connections",
            from = "sosal3",
            to = "gleba-intercept",
            order = "d",
            length = 1000,
            icon = "__1spa__/graphics/icons/transfer-point.png",
            asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora),
        },
})



--  ----  ----  ----  ----  ----  ----  --


if mods["slp-dyson-sphere-reworked"] then
    data:extend({
        {
            type = "space-connection",
            name = "slp-nauvis-sun",
            subgroup = "planet-connections",
            from = "nauvis-intercept",
            to = "slp-solar-system-sun",
            order = "d",
            length = 4000,
            icon = "__1spa__/graphics/icons/transfer-point.png"  
        },
        {
            type = "space-connection",
            name = "slp-vulcanus-sun",
            subgroup = "planet-connections",
            from = "vulcanus-intercept",
            to = "slp-solar-system-sun",
            order = "d",
            length = 4000,
            icon = "__1spa__/graphics/icons/transfer-point.png" 
        }, 

        {
            type = "space-location",
            name = "slp-solar-system-sun",
            icon = "__slp-dyson-sphere-reworked__/graphics/orbit/sun.png",
            icon_size = 512,
            solar_power_in_space = 1000,
            gravity_pull = 13,
            order = "c[slp-solar-system-sun]",
            distance = 15,
            orientation = 0.25          
        },
        {
            type = "space-location",
            name = "slp-solar-system-sun2",
            icon = "__slp-dyson-sphere-reworked__/graphics/orbit/sun2.png",
            icon_size = 512,
            solar_power_in_space = 2500,
            gravity_pull = 13,
            order = "c[slp-solar-system-sun2]",
            distance = 5,
            orientation = 0.25           
        }
    
            })
end