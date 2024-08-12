local PM = require("__periodic-madness__/library")
--for all vanilla changed recipes
local recipes = data.raw.recipe
---@param recipe data.RecipePrototype
---@return data.RecipePrototype
local function sanitize_recipe(recipe)
  local difficulty = recipe.normal or recipe.expensive
  if difficulty then
    for k, v in pairs(difficulty --[[@as {[string]:any}]]) do
---@diagnostic disable-next-line: no-unknown
      recipe[k] = v
    end
    recipe.normal, recipe.expensive = nil, nil
  end
  return recipe
end
sanitize_recipe(recipes["electronic-circuit"]).ingredients =
{
  PM.ingredient("copper-cable", 2),
  PM.ingredient("pm-basic-breadboard", 1),
  PM.ingredient("pm-basic-integrated-circuits", 3),
}
sanitize_recipe(recipes["automation-science-pack"]).ingredients =
{
  PM.ingredient("iron-plate", 1),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("pm-nickel-plate", 1),
}
sanitize_recipe(recipes["assembling-machine-1"]).ingredients =
{
  PM.ingredient("pm-assembling-machine-0", 1),
  PM.ingredient("pm-basic-framing", 5),
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("iron-gear-wheel", 3)
}
sanitize_recipe(recipes["assembling-machine-2"]).ingredients =
{
  PM.ingredient("pm-basic-framing", 5),
  PM.ingredient("electronic-circuit", 2),
  PM.ingredient("pm-brass-cog", 4),
  PM.ingredient("assembling-machine-1", 1)
}
sanitize_recipe(recipes["logistic-science-pack"]).ingredients =
{
  PM.ingredient("pm-gold-plate", 5),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("pm-manganese-plate", 5),
  PM.ingredient("pm-liquid-mercury", 25, "fluid")
}
sanitize_recipe(recipes["military-science-pack"]).ingredients =
{
  PM.ingredient("piercing-rounds-magazine", 1),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("stone-wall", 2),
  PM.ingredient("grenade", 1)
}
sanitize_recipe(recipes["production-science-pack"]).ingredients =
{
  PM.ingredient("rail", 30),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("productivity-module", 1),
  PM.ingredient("electric-furnace", 1)
}
sanitize_recipe(recipes["utility-science-pack"]).ingredients =
{
  PM.ingredient("processing-unit", 2),
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("flying-robot-frame", 1),
  PM.ingredient("low-density-structure", 3)
}
sanitize_recipe(recipes["lab"]).ingredients =
{
  PM.ingredient("pm-glass-pane", 8),
  PM.ingredient("iron-gear-wheel", 5),
  PM.ingredient("pm-basic-framing", 4),
  PM.ingredient("electronic-circuit", 5)
}
sanitize_recipe(recipes["solar-panel"]).ingredients =
{
  PM.ingredient("advanced-circuit", 3),
  PM.ingredient("pm-lightweight-panelling", 8),
  PM.ingredient("pm-heavyweight-framing", 4),
  PM.ingredient("pm-solar-cell", 4),
  PM.ingredient("pm-silver-plate", 5)
}
sanitize_recipe(recipes["advanced-circuit"]).ingredients =
{
  PM.ingredient("pm-gold-wire", 3),
  PM.ingredient("pm-advanced-circuit-breadboard", 1),
  PM.ingredient("pm-transistors", 5),
  PM.ingredient("pm-solder", 1),
  PM.ingredient("pm-advanced-integrated-circuits", 3)
}
sanitize_recipe(recipes["small-lamp"]).ingredients =
{
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("pm-glass-pane", 2),
}
sanitize_recipe(recipes["fast-transport-belt"]).ingredients =
{
  PM.ingredient("transport-belt", 1),
  PM.ingredient("pm-brass-cog", 2)
}
sanitize_recipe(recipes["fast-underground-belt"]).ingredients =
{
  PM.ingredient("underground-belt", 2),
  PM.ingredient("pm-brass-cog", 10)
}
sanitize_recipe(recipes["fast-splitter"]).ingredients =
{
  PM.ingredient("splitter", 1),
  PM.ingredient("pm-brass-cog", 2),
  PM.ingredient("electronic-circuit", 5)
}
sanitize_recipe(recipes["express-transport-belt"]).ingredients =
{
  PM.ingredient("pm-polyethylene-plastic", 2),
  PM.ingredient("pm-solid-lubricant", 2),
  PM.ingredient("pm-stainless-steel-alloy", 2),
  PM.ingredient("fast-transport-belt", 1),
}
sanitize_recipe(recipes["express-underground-belt"]).ingredients =
{
  PM.ingredient("express-transport-belt", 1),
  PM.ingredient("fast-underground-belt", 2),
  PM.ingredient("pm-solid-lubricant", 4)
}
sanitize_recipe(recipes["express-splitter"]).ingredients =
{
  PM.ingredient("express-transport-belt", 2),
  PM.ingredient("pm-stainless-steel-alloy", 2),
  PM.ingredient("pm-polyethylene-plastic", 4),
  PM.ingredient("pm-solid-lubricant", 6),
  PM.ingredient("pm-mini-motor", 2)
}
sanitize_recipe(recipes["splitter"]).ingredients =
{
  PM.ingredient("pm-basic-motor", 2),
  PM.ingredient("transport-belt", 4),
  PM.ingredient("electronic-circuit", 2)
}
sanitize_recipe(recipes["inserter"]).ingredients =
{
  PM.ingredient("pm-basic-motor", 1),
  PM.ingredient("pm-basic-wiring", 2),
  PM.ingredient("iron-plate", 1)
}
sanitize_recipe(recipes["fast-inserter"]).ingredients =
{
  PM.ingredient("pm-mini-motor", 1),
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("iron-plate", 2)
}
sanitize_recipe(recipes["long-handed-inserter"]).ingredients =
{
  PM.ingredient("pm-basic-motor", 1),
  PM.ingredient("iron-stick", 2),
  PM.ingredient("pm-basic-wiring", 2),
  PM.ingredient("iron-plate", 1)
}
sanitize_recipe(recipes["filter-inserter"]).ingredients =
{
  PM.ingredient("electronic-circuit", 2),
  PM.ingredient("fast-inserter", 1),
}
sanitize_recipe(recipes["stack-inserter"]).ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 2),
  PM.ingredient("pm-solid-lubricant", 1),
  PM.ingredient("fast-inserter", 1),
  PM.ingredient("advanced-circuit", 2)
}
sanitize_recipe(recipes["stack-filter-inserter"]).ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 2),
  PM.ingredient("pm-solid-lubricant", 1),
  PM.ingredient("filter-inserter", 1),
  PM.ingredient("advanced-circuit", 4)
}
sanitize_recipe(recipes["big-electric-pole"]).ingredients =
{
  PM.ingredient("pm-basic-framing", 8),
  PM.ingredient("pm-fiberoptic-cable", 1),
  PM.ingredient("pm-stainless-steel-alloy", 2)
}
sanitize_recipe(recipes["substation"]).ingredients =
{
  PM.ingredient("pm-fiberoptic-cable", 8),
  PM.ingredient("pm-heavyweight-framing", 12),
  PM.ingredient("pm-aluminium-plate", 6),
  PM.ingredient("concrete", 10)
}
sanitize_recipe(recipes["concrete"]).ingredients =
{
  PM.ingredient("pm-bitumen", 3),
  PM.ingredient("stone-brick", 5),
  PM.ingredient("water", 100, "fluid")
}
sanitize_recipe(recipes["assembling-machine-3"]).ingredients =
{
  PM.ingredient("assembling-machine-2", 1),
  PM.ingredient("electric-engine-unit", 6),
  PM.ingredient("processing-unit", 4),
  PM.ingredient("pm-cooling-plating", 20),
  PM.ingredient("pm-radiation-resistant-panelling", 10)
}
sanitize_recipe(recipes["oil-refinery"]).ingredients =
{
  PM.ingredient("pm-heating-plating", 2),
  PM.ingredient("pm-brass-cog", 4),
  PM.ingredient("pm-corrosion-resistant-tubing", 6),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("stone-brick", 15)
}
sanitize_recipe(recipes["chemical-plant"]).ingredients =
{
  PM.ingredient("pm-corrosion-resistant-tubing", 6),
  PM.ingredient("pm-brass-plate", 3),
  PM.ingredient("iron-gear-wheel", 5),
  PM.ingredient("pm-fluid-circuit", 3)
}
sanitize_recipe(recipes["pumpjack"]).ingredients =
{
  PM.ingredient("pm-brass-plate", 3),
  PM.ingredient("pm-corrosion-resistant-tubing", 4),
  PM.ingredient("pm-fluid-circuit", 4),
  PM.ingredient("pm-basic-framing", 8)
}
sanitize_recipe(recipes["boiler"]).ingredients =
{
  PM.ingredient("pm-basic-tubing", 4),
  PM.ingredient("stone-furnace", 1),
  PM.ingredient("pm-basic-panelling", 3)
}
sanitize_recipe(recipes["steam-engine"]).ingredients =
{
  PM.ingredient("pm-basic-tubing", 4),
  PM.ingredient("iron-gear-wheel", 6),
  PM.ingredient("pm-basic-panelling", 12)
}
sanitize_recipe(recipes["offshore-pump"]).ingredients =
{
  PM.ingredient("pm-brass-cog", 1),
  PM.ingredient("pm-basic-tubing", 4),
  PM.ingredient("electronic-circuit", 1)
}
sanitize_recipe(recipes["chemical-science-pack"]).ingredients =
{
  PM.ingredient("pm-science-bottle", 1),
  PM.ingredient("pm-chlorine", 25, "fluid"),
  PM.ingredient("pm-carbon", 15),
  PM.ingredient("sulfur", 8)
}
sanitize_recipe(recipes["storage-tank"]).ingredients =
{
  PM.ingredient("pm-basic-panelling", 8),
  PM.ingredient("pm-basic-framing", 4),
  PM.ingredient("pm-basic-tubing", 2)
}
sanitize_recipe(recipes["locomotive"]).ingredients =
{
  PM.ingredient("engine-unit", 20),
  PM.ingredient("pm-lightweight-panelling", 10),
  PM.ingredient("pm-stainless-steel-alloy", 12),
  PM.ingredient("pm-heavyweight-framing", 20)
}
sanitize_recipe(recipes["car"]).ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 8),
  PM.ingredient("engine-unit", 4),
  PM.ingredient("pm-lightweight-panelling", 4),
  PM.ingredient("pm-lightweight-framing", 12)
}
sanitize_recipe(recipes["tank"]).ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 12),
  PM.ingredient("engine-unit", 10),
  PM.ingredient("pm-heavyweight-panelling", 20),
  PM.ingredient("pm-heavyweight-framing", 40)
}
sanitize_recipe(recipes["low-density-structure"]).ingredients =
{
  PM.ingredient("pm-polytetrafluoroethylene", 5),
  PM.ingredient("copper-plate", 20),
  PM.ingredient("steel-plate", 2)
}
sanitize_recipe(recipes["rocket-fuel"]).ingredients =
{
  PM.ingredient("solid-fuel", 10),
  PM.ingredient("pm-stainless-steel-alloy", 4),
  PM.ingredient("pm-fuel-oils", 50, "fluid")
}
data.raw["recipe"]["rocket-fuel"].category = "crafting-with-fluid"

sanitize_recipe(recipes["burner-mining-drill"]).ingredients =
{
  PM.ingredient("pm-basic-framing", 2),
  PM.ingredient("iron-gear-wheel", 2),
  PM.ingredient("stone-furnace", 1)
}
sanitize_recipe(recipes["electric-mining-drill"]).ingredients =
{
  PM.ingredient("pm-basic-framing", 4),
  PM.ingredient("pm-basic-panelling", 8),
  PM.ingredient("pm-basic-wiring", 4),
  PM.ingredient("electronic-circuit", 3)
}
sanitize_recipe(recipes["steel-plate"]).ingredients =
{
  PM.ingredient("iron-plate", 3),
  PM.ingredient("pm-manganese-plate", 3)
}
sanitize_recipe(recipes["flying-robot-frame"]).ingredients =
{
  PM.ingredient("pm-vanadium-redox-battery", 2),
  PM.ingredient("pm-lightweight-framing", 8),
  PM.ingredient("electric-engine-unit", 1),
  PM.ingredient("advanced-circuit", 2),
}
sanitize_recipe(recipes["electric-engine-unit"]).ingredients =
{
  PM.ingredient("pm-basic-wiring", 10),
  PM.ingredient("advanced-circuit", 2),
  PM.ingredient("pm-solid-lubricant", 12),
  PM.ingredient("engine-unit", 1),
  PM.ingredient("pm-kasethal-plate", 4)
}
sanitize_recipe(recipes["construction-robot"]).ingredients =
{
  PM.ingredient("flying-robot-frame", 1),
  PM.ingredient("pm-lightweight-panelling", 8),
  PM.ingredient("electronic-circuit", 2),
  PM.ingredient("pm-polyethylene-plastic", 4)
}
sanitize_recipe(recipes["logistic-robot"]).ingredients =
{
  PM.ingredient("flying-robot-frame", 1),
  PM.ingredient("pm-lightweight-panelling", 8),
  PM.ingredient("electronic-circuit", 2),
  PM.ingredient("pm-polyethylene-plastic", 4)
}
sanitize_recipe(recipes["electric-furnace"]).ingredients =
{
  PM.ingredient("advanced-circuit", 5), --basic, i know
  PM.ingredient("pm-heating-plating", 6),
  PM.ingredient("pm-heavyweight-panelling", 8),
  PM.ingredient("pm-heavyweight-framing", 6),
  PM.ingredient("pm-kasethal-plate", 5)
}
sanitize_recipe(recipes["exoskeleton-equipment"]).ingredients =
{
  PM.ingredient("pm-lightweight-framing", 30),
  PM.ingredient("pm-heavyweight-panelling", 2),
  PM.ingredient("processing-unit", 8),
  PM.ingredient("electric-engine-unit", 20)
}
sanitize_recipe(recipes["solar-panel-equipment"]).ingredients =
{
  PM.ingredient("pm-solar-cell", 2),
  PM.ingredient("pm-lightweight-framing", 5),
  PM.ingredient("advanced-circuit", 2),
}
sanitize_recipe(recipes["personal-roboport-equipment"]).ingredients =
{
  PM.ingredient("pm-lightweight-framing", 12),
  PM.ingredient("pm-heavyweight-panelling", 4),
  PM.ingredient("pm-basic-wiring", 8),
  PM.ingredient("advanced-circuit", 12),
  PM.ingredient("pm-vanadium-redox-battery", 15)
}
sanitize_recipe(recipes["roboport"]).ingredients =
{
  PM.ingredient("pm-basic-wiring", 20),
  PM.ingredient("advanced-circuit", 25),
  PM.ingredient("pm-heavyweight-framing", 10),
  PM.ingredient("pm-heavyweight-panelling", 16),
  PM.ingredient("pm-polyethylene-plastic", 8)
}
sanitize_recipe(recipes["accumulator"]).ingredients =
{
  PM.ingredient("pm-vanadium-redox-battery", 4),
  PM.ingredient("pm-basic-wiring", 5),
  PM.ingredient("pm-heavyweight-framing", 8)
}
sanitize_recipe(recipes["engine-unit"]).ingredients =
{
  PM.ingredient("pm-stainless-steel-alloy", 2),
  PM.ingredient("pm-corrosion-resistant-tubing", 6),
  PM.ingredient("pm-platinum-plate", 3),
  PM.ingredient("pm-kasethal-plate", 3)
}
sanitize_recipe(recipes["pipe"]).ingredients =
{
  PM.ingredient("pm-basic-tubing", 1),
  PM.ingredient("pm-zinc-plate", 1)
}
sanitize_recipe(recipes["pipe-to-ground"]).ingredients =
{
  PM.ingredient("pm-basic-tubing", 10),
  PM.ingredient("pm-zinc-plate", 2)
}
sanitize_recipe(recipes["train-stop"]).ingredients =
{
  PM.ingredient("pm-lightweight-framing", 6),
  PM.ingredient("advanced-circuit", 3),
  PM.ingredient("pm-stainless-steel-alloy", 2),
  PM.ingredient("pm-glass-pane", 4)
}
sanitize_recipe(recipes["rail-signal"]).ingredients =
{
  PM.ingredient("pm-glass-pane", 3),
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("pm-lightweight-panelling", 4)
}
sanitize_recipe(recipes["rail-chain-signal"]).ingredients =
{
  PM.ingredient("pm-glass-pane", 3),
  PM.ingredient("advanced-circuit", 1),
  PM.ingredient("pm-lightweight-panelling", 4)
}
sanitize_recipe(recipes["flamethrower-turret"]).ingredients =
{
  PM.ingredient("pm-stainless-steel-alloy", 20),
  PM.ingredient("pm-fluid-circuit", 15),
  PM.ingredient("engine-unit", 5),
  PM.ingredient("pm-brass-cog", 10),
  PM.ingredient("pm-heating-plating", 20)
}
sanitize_recipe(recipes["modular-armor"]).ingredients =
{
  PM.ingredient("pm-lightweight-framing", 25),
  PM.ingredient("pm-tungsten-plate", 10),
  PM.ingredient("advanced-circuit", 20),
  PM.ingredient("pm-cadnium-plate", 12),
  PM.ingredient("pm-polyethylene-plastic", 12)
}
sanitize_recipe(recipes["power-armor"]).ingredients =
{
  PM.ingredient("processing-unit", 30),
  PM.ingredient("electric-engine-unit", 20),
  PM.ingredient("pm-lightweight-framing", 50),
  PM.ingredient("pm-stainless-steel-alloy", 20),
  PM.ingredient("pm-cadnium-plate", 24),
  PM.ingredient("pm-lead-plate", 12)
}
sanitize_recipe(recipes["medium-electric-pole"]).ingredients =
{
  PM.ingredient("pm-basic-framing", 6),
  PM.ingredient("steel-plate", 2),
  PM.ingredient("copper-cable", 4)
}

sanitize_recipe(recipes["speed-module"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-speed-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-cobalt-blue", 5)
}
sanitize_recipe(recipes["productivity-module"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-productivity-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-cadnium-red", 5)
}
sanitize_recipe(recipes["effectivity-module"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-efficiency-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-chrome-green", 5)
}
sanitize_recipe(recipes["speed-module-2"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-speed-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("pm-cobalt-blue", 5)
}
sanitize_recipe(recipes["productivity-module-2"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-productivity-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("pm-cadnium-red", 5)
}
sanitize_recipe(recipes["effectivity-module-2"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-efficiency-light", 1),
  PM.ingredient("electronic-circuit", 5),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("pm-chrome-green", 5)
}
sanitize_recipe(recipes["speed-module-3"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-speed-light", 1),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("advanced-circuit", 5),
  PM.ingredient("pm-cobalt-blue", 5)
}
sanitize_recipe(recipes["productivity-module-3"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-productivity-light", 1),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("advanced-circuit", 5),
  PM.ingredient("pm-cadnium-red", 5)
}
sanitize_recipe(recipes["effectivity-module-3"]).ingredients =
{
  PM.ingredient("pm-module-case", 1),
  PM.ingredient("pm-module-efficiency-light", 1),
  PM.ingredient("pm-fluid-circuit", 5),
  PM.ingredient("advanced-circuit", 5),
  PM.ingredient("pm-chrome-green", 5)
}
sanitize_recipe(recipes["processing-unit"]).ingredients =
{
  PM.ingredient("pm-processing-breadboard", 1),
  PM.ingredient("pm-processing-integrated-circuits", 3),
  PM.ingredient("pm-solder", 2),
  PM.ingredient("pm-semiconductor", 3),
  PM.ingredient("pm-transistors", 10),
  PM.ingredient("pm-indium-wire", 3)
}
sanitize_recipe(recipes["cannon-shell"]).ingredients =
{
  PM.ingredient("pm-polyethylene-plastic", 2),
  PM.ingredient("explosives", 1),
  PM.ingredient("pm-stainless-steel-alloy", 2)
}
sanitize_recipe(recipes["explosive-cannon-shell"]).ingredients =
{
  PM.ingredient("pm-polyethylene-plastic", 2),
  PM.ingredient("explosives", 2),
  PM.ingredient("pm-stainless-steel-alloy", 4)
}
data.raw["recipe"]["slowdown-capsule"].category = "crafting-with-fluid"
data.raw["recipe"]["slowdown-capsule"].results = { PM.product("slowdown-capsule", 2) }
sanitize_recipe(recipes["slowdown-capsule"]).ingredients =
{
  PM.ingredient("pm-melatonin", 4, "fluid"),
  PM.ingredient("pm-lightweight-panelling", 4),
  PM.ingredient("pm-lightweight-framing", 4),
  PM.ingredient("pm-fluid-circuit", 3)
}
data.raw["recipe"]["poison-capsule"].category = "crafting-with-fluid"
data.raw["recipe"]["poison-capsule"].results = { PM.product("poison-capsule", 2) }
sanitize_recipe(recipes["poison-capsule"]).ingredients =
{
  PM.ingredient("pm-phosgene", 4, "fluid"),
  PM.ingredient("pm-lightweight-panelling", 4),
  PM.ingredient("pm-lightweight-framing", 4),
  PM.ingredient("pm-fluid-circuit", 3)
}
data.raw["recipe"]["heat-pipe"].subgroup = "pm-heat-machines"
data.raw["recipe"]["heat-pipe"].order = "b"
data.raw["recipe"]["heat-pipe"].results = { PM.product("heat-pipe", 2) }
sanitize_recipe(recipes["heat-pipe"]).ingredients =
{
  PM.ingredient("pm-heat-pipe-1", 1),
  PM.ingredient("pm-molten-framing", 20),
  PM.ingredient("pm-stainless-steel-alloy", 5),
  PM.ingredient("pm-silver-plate", 5)
}
sanitize_recipe(recipes["uranium-fuel-cell"]).ingredients =
{
  PM.ingredient("pm-empty-reactor-cell", 10),
  PM.ingredient("uranium-235", 1),
  PM.ingredient("uranium-238", 19)
}
sanitize_recipe(recipes["firearm-magazine"]).ingredients =
{
  PM.ingredient("pm-zinc-plate", 3),
  PM.ingredient("coal", 1)
}
sanitize_recipe(recipes["piercing-rounds-magazine"]).ingredients =
{
  PM.ingredient("pm-vulcanised-rubber", 2),
  PM.ingredient("firearm-magazine", 1),
  PM.ingredient("steel-plate", 2),
  PM.ingredient("copper-plate", 2)
}
sanitize_recipe(recipes["rocket-control-unit"]).ingredients =
{
  PM.ingredient("pm-oscilloscope", 1),
  PM.ingredient("pm-polyethylene-plastic", 8),
  PM.ingredient("pm-basic-wiring", 10)
}
sanitize_recipe(recipes["cluster-grenade"]).ingredients =
{
  PM.ingredient("explosives", 4),
  PM.ingredient("pm-cadnium-plate", 2),
  PM.ingredient("pm-silver-plate", 2),
  PM.ingredient("pm-glass-shards", 3),
  PM.ingredient("grenade", 1)
}
sanitize_recipe(recipes["defender-capsule"]).ingredients =
{
  PM.ingredient("electronic-circuit", 3),
  PM.ingredient("pm-brass-cog", 2),
  PM.ingredient("pm-basic-panelling", 6),
  PM.ingredient("piercing-rounds-magazine", 2)
}
sanitize_recipe(recipes["battery-equipment"]).ingredients =
{
  PM.ingredient("pm-vanadium-redox-battery", 5),
  PM.ingredient("pm-vulcanised-rubber", 10),
  PM.ingredient("pm-glass-pane", 5)
}
sanitize_recipe(recipes["beacon"]).ingredients =
{
  PM.ingredient("pm-travelling-wave-amplifier-tube", 1),
  PM.ingredient("pm-polytetrafluoroethylene", 5),
  PM.ingredient("pm-heavyweight-framing", 24),
  PM.ingredient("advanced-circuit", 8),
  PM.ingredient("pm-chrominum-ore", 12)
}


data.raw["recipe"]["nuclear-fuel-reprocessing"].results =
{
  PM.product_range("pm-empty-reactor-cell", 3, 5),
  PM.product("uranium-238", 3)
}
data.raw["recipe"]["speed-module-2"].energy_required = 15
data.raw["recipe"]["effectivity-module-2"].energy_required = 15
data.raw["recipe"]["productivity-module-2"].energy_required = 15
data.raw["recipe"]["speed-module-3"].energy_required = 30
data.raw["recipe"]["effectivity-module-3"].energy_required = 30
data.raw["recipe"]["productivity-module-3"].energy_required = 30

data.raw["recipe"]["processing-unit"].energy_required = 6
local RCCraftingFix = data.raw["recipe"]["advanced-circuit"]

RCCraftingFix.energy_required = 3

local BlueBeltTime = data.raw["recipe"]["express-transport-belt"]

BlueBeltTime.energy_required = 2

local BlueSplitterTime = data.raw["recipe"]["express-splitter"]

BlueSplitterTime.energy_required = 3

local BlueUBeltTime = data.raw["recipe"]["express-underground-belt"]

BlueUBeltTime.energy_required = 2

data.raw["recipe"]["chemical-science-pack"].category = "crafting-with-fluid"

data.raw["recipe"]["logistic-science-pack"].category = "crafting-with-fluid"

local CoalLiquefactionDirtyFix = data.raw["recipe"]["coal-liquefaction"]

CoalLiquefactionDirtyFix.ingredients =
{
  PM.ingredient("coal", 10),
  PM.ingredient("pm-oil-residuals", 25, "fluid"),
  PM.ingredient("steam", 50, "fluid")
}
CoalLiquefactionDirtyFix.results =
{
  PM.product("pm-oil-residuals", 90, "fluid"),
  PM.product("pm-refinery-gases", 20, "fluid"),
  PM.product("crude-oil", 10, "fluid")
}
