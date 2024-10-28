-- colorblind-pollution.lua

local utility_constants = table.deepcopy(data.raw["utility-constants"]["default"])
utility_constants.chart.default_enemy_color = {r = 255, g = 255, b = 255}

local pollution = table.deepcopy(data.raw["airborne-pollutant"]["pollution"])
pollution.chart_color = {r = 29, g = 0, b = 255, a = 0.8}

data:extend{utility_constants, pollution}
