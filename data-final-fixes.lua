local asteroid_util = require("__1spa__.prototypes.asteroid-spawn-definitions")

data.raw["utility-constants"]["default"].starmap_orbit_default_color = { 128, 128, 128 }
data.raw["utility-constants"]["default"].starmap_orbit_clicked_color = { 128, 0, 0 }
data.raw["utility-constants"]["default"].starmap_orbit_hovered_color = { 128, 128, 0 }
--data.raw["utility-constants"]["default"].starmap_orbit_disabled_color  = { 25, 25, 112 }
--starmap_orbit_disabled_color 
-- Удалить неиспользованные космические соединения, заставив их нацелиться на себя
data.raw["space-connection"]["gleba-fulgora"].from = "gleba"
data.raw["space-connection"]["gleba-fulgora"].to = "gleba"
data.raw["space-connection"]["aquilo-fulgora"] = nil
data.raw["space-connection"]["fulgora-aquilo"] = nil
data.raw["space-connection"]["gleba-aquilo"].to = "gleba"
data.raw["space-connection"]["gleba-aquilo"].from = "gleba"
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


