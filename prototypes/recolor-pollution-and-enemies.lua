local CONSTANTS = require("constants")

local to_extend = {}

if settings.startup[CONSTANTS.settings.pollution_enabled].value then
  local pollution = table.deepcopy(data.raw["airborne-pollutant"]["pollution"])
  pollution.chart_color = settings.startup[CONSTANTS.settings.pollution_color].value
  table.insert(to_extend, pollution)
end

if settings.startup[CONSTANTS.settings.nests_enabled].value then
  local utility_constants = table.deepcopy(data.raw["utility-constants"]["default"])
  utility_constants.chart.default_enemy_color = settings.startup[CONSTANTS.settings.nests_color].value
  table.insert(to_extend, utility_constants)
end

if #to_extend > 0 then
  data:extend(to_extend)
end
