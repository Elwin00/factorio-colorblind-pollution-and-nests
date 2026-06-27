local to_extend = {}

if settings.startup["colorblind-pollution-enabled"].value then
  local pollution = table.deepcopy(data.raw["airborne-pollutant"]["pollution"])
  pollution.chart_color = settings.startup["colorblind-pollution-color"].value
  table.insert(to_extend, pollution)
end

if settings.startup["colorblind-nests-enabled"].value then
  local utility_constants = table.deepcopy(data.raw["utility-constants"]["default"])
  utility_constants.chart.default_enemy_color = settings.startup["colorblind-nests-color"].value
  table.insert(to_extend, utility_constants)
end

if #to_extend > 0 then
  data:extend(to_extend)
end
