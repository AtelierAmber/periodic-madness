--fuels

data:extend({

  {
    type = "item",
    name = "pm-empty-fuel-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-canister.png",
    subgroup = "pm-fuels",
    order = "b",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-diesel-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/diesel-canister.png",
    fuel_value = "12MJ",
    fuel_category = "chemical",
    fuel_acceleration_multiplier = 1.3,
    fuel_top_speed_multiplier = 1.3,
    subgroup = "pm-fuels",
    order = "c",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-petrol-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/petrol-canister.png",
    fuel_value = "1.5MJ",
    fuel_category = "chemical",
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 2,
    subgroup = "pm-fuels",
    order = "d",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-kerosene-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/kerosene-canister.png",
    fuel_value = "24MJ",
    fuel_category = "chemical",
    fuel_acceleration_multiplier = 1.1,
    fuel_top_speed_multiplier = 1.05,
    subgroup = "pm-fuels",
    order = "e",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-naptha-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/naptha-canister.png",
    fuel_value = "32MJ",
    fuel_category = "chemical",
    fuel_acceleration_multiplier = 1,
    fuel_top_speed_multiplier = 1.05,
    subgroup = "pm-fuels",
    order = "f",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-hydrogen-fuel",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/hydrogen-fuel.png",
    subgroup = "pm-fuels",
    order = "a",
    fuel_category = "pm-oxidiser",
    fuel_value = "64MJ",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-polonium-fuel-rod",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/polonium-fuel-rod.png",
    subgroup = "pm-fuel-rods",
    order = "c",
    fuel_category = "pm-fuel-rods",
    burnt_result = "pm-spent-fuel-rod",
    fuel_value = "25MJ",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-empty-fuel-rod",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-fuel-rod.png",
    subgroup = "pm-fuel-rods",
    order = "a",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-spent-fuel-rod",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/spent-fuel-rod.png",
    subgroup = "pm-fuel-rods",
    order = "b",
    stack_size = 10
  },
}--[[@as data.ItemPrototype[] ]])

data.raw["item"]["rocket-fuel"].subgroup = "pm-fuels"
data.raw["item"]["rocket-fuel"].order = "g"
data.raw["recipe"]["rocket-fuel"].subgroup = "pm-fuels"
data.raw["recipe"]["rocket-fuel"].order = "g"
data.raw["item"]["nuclear-fuel"].subgroup = "pm-fuels"
data.raw["item"]["nuclear-fuel"].order = "h"
data.raw["recipe"]["nuclear-fuel"].subgroup = "pm-fuels"
data.raw["recipe"]["nuclear-fuel"].order = "h"
