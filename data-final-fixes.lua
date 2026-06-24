local asteroid_util = require("__1spa__.prototypes.asteroid-spawn-definitions")

data.raw["utility-constants"]["default"].starmap_orbit_default_color = { 128, 128, 128 }
data.raw["utility-constants"]["default"].starmap_orbit_clicked_color = { 128, 0, 0 }
data.raw["utility-constants"]["default"].starmap_orbit_hovered_color = { 128, 128, 0 }
--data.raw["utility-constants"]["default"].starmap_orbit_disabled_color  = { 25, 25, 112 }
--starmap_orbit_disabled_color 
-- Удалить неиспользованные космические соединения, заставив их нацелиться на себя
data.raw["space-connection"]["gleba-fulgora"].from = "gleba"
data.raw["space-connection"]["gleba-fulgora"].to = "gleba"
data.raw["space-connection"]["nauvis-vulcanus"].from = "nauvis"
data.raw["space-connection"]["nauvis-vulcanus"].to = "nauvis"
data.raw["space-connection"]["aquilo-solar-system-edge"].from = "aquilo"
data.raw["space-connection"]["aquilo-solar-system-edge"].to = "aquilo"

-- Обновление пространства подключений для подключения перехватов, а не низкой орбиты

data.raw["space-connection"]["nauvis-gleba"].from = "nauvis-intercept"
data.raw["space-connection"]["nauvis-gleba"].to = "gleba-intercept"
data.raw["space-connection"]["nauvis-gleba"].length = 1200
data.raw["space-connection"]["nauvis-gleba"].icon = "__1spa__/graphics/icons/transfer-point.png"

data.raw["space-connection"]["vulcanus-gleba"].from = "gleba-intercept"
data.raw["space-connection"]["vulcanus-gleba"].to = "vulcanus-intercept"
data.raw["space-connection"]["vulcanus-gleba"].length = 1200
data.raw["space-connection"]["vulcanus-gleba"].icon = "__1spa__/graphics/icons/transfer-point.png"

data.raw["space-connection"]["nauvis-fulgora"].from = "nauvis-intercept"
data.raw["space-connection"]["nauvis-fulgora"].to = "fulgora-intercept"
data.raw["space-connection"]["nauvis-fulgora"].length = 3700
data.raw["space-connection"]["nauvis-fulgora"].icon = "__1spa__/graphics/icons/transfer-point.png"




data.raw.planet["aquilo"].orientation = 0.5
data.raw.planet["aquilo"].distance = 46
data.raw.planet["aquilo"].solar_power_in_space = 48
data.raw.planet["aquilo"].gravity_pull = 6

if  mods["Paracelsin"] or mods["secretas"] then
    require "prototypes.sekr"
end




--data.raw.planet["aquilo"].localised_name={"space-location-name.aquilo"}

if data.raw.planet then
    local planet_templates = {
        nauvis = "planet-template-g.name",
        gleba = "planet-template-g.name",
        aquilo = "planet-template-bl.name",
        fulgora = "planet-template-p.name",
        vulcanus = "planet-template-o.name",
    }
    for planet_name, template_key in pairs(planet_templates) do
        if data.raw.planet[planet_name] then
            data.raw.planet[planet_name].localised_name = {
                template_key,
        {"planet-name." .. planet_name}
    }
        end
    end
end
local q = "pg.name"

if data.raw["space-location"] then
    local locale = {
        ["nauvis-intercept"] = q,
        ["aquilo-intercept"] = q,
        ["gleba-intercept"] = q,
        ["vulcanus-intercept"] = q,
        ["fulgora-intercept"] = q,
        ["location-discovery-aquilite-cluster"] = q,
        ["carbolithic-belt"] = q,
        ["location-discovery-ferrarius-belt"] = q,
        ["ferrarius-belt"] = q,
        ["carbolithic-belt-intercept"] = q,
    }

    for location_name, template_key in pairs(locale) do
        if data.raw["space-location"][location_name] then
            data.raw["space-location"][location_name].localised_name = {
                template_key,
                {"space-location-name." .. location_name}
            }
        end
    end
end