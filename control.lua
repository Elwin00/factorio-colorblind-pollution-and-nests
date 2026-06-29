local CONSTANTS = require("constants")

local function create_chart_settings_signature()
  local s = settings.startup
  local function format_column(c) return string.format("%.4f,%.4f,%.4f,%.4f", c.r or 0, c.g or 0, c.b or 0, c.a or 1) end
  return table.concat({
    tostring(s[CONSTANTS.settings.pollution_enabled].value), format_column(s[CONSTANTS.settings.pollution_color].value),
    tostring(s[CONSTANTS.settings.nests_enabled].value), format_column(s[CONSTANTS.settings.nests_color].value),
  }, "|")
end

local function rechart()
  for _, force in pairs(game.forces) do
    force.rechart()
  end
end

script.on_init(function()
  rechart()
  storage.colorblind_chart_signature = create_chart_settings_signature()
end)

script.on_configuration_changed(function()
  local settings_signature = create_chart_settings_signature()
  if storage.colorblind_chart_signature ~= settings_signature then
    rechart()
    storage.colorblind_chart_signature = settings_signature
  end
end)
