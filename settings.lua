local CONSTANTS = require("constants")

data:extend({
  {
    type = "bool-setting",
    name = CONSTANTS.settings.pollution_enabled,
    setting_type = "startup",
    default_value = true,
    order = "aa"
  },
  {
    type = "color-setting",
    name = CONSTANTS.settings.pollution_color,
    setting_type = "startup",
    default_value = {r = 29/255, g = 0, b = 1, a = 0.8},
    order = "ab"
  },
  {
    type = "bool-setting",
    name = CONSTANTS.settings.nests_enabled,
    setting_type = "startup",
    default_value = true,
    order = "ba"
  },
  {
    type = "color-setting",
    name = CONSTANTS.settings.nests_color,
    setting_type = "startup",
    default_value = {r = 1, g = 1, b = 1, a = 1},
    order = "bb"
  },
  {
    type = "bool-setting",
    name = CONSTANTS.settings.bulk_inserter_enabled,
    setting_type = "startup",
    default_value = false,
    order = "ca"
  }
})
