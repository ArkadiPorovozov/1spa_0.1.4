
--data.raw.planet["nauvis"].orientation = 0.25

--data.raw.planet["fulgora"].orientation = 0

--data.raw.planet["gleba"].orientation = 0

--data.raw.planet["aquilo"].orientation  = 0



local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")


require "prototypes.asteroid-spawn-definitions"
--------ьуь--------
require "prototypes.space1"
--require "prototypes.vulcanus"
--require "prototypes.recipe"
require "prototypes.technology"
require "prototypes.space"


--require "prototypes.graphics"
------------------
--require "prototypes.item-subgroup"
--require "prototypes.item"
--require "prototypes.asembler"
--require "prototypes.cryovolcanic-t"
if mods["metal-and-stars"] then
    require "prototypes.metal"
end

