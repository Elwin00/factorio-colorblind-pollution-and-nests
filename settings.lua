data:extend({
  {
    type = "bool-setting",
    name = "colorblind-pollution-enabled",
    setting_type = "startup",
    default_value = true,
    order = "aa"
  },
  {
    type = "color-setting",
    name = "colorblind-pollution-color",
    setting_type = "startup",
    default_value = {r = 29/255, g = 0, b = 1, a = 0.8},
    order = "ab"
  },
  {
    type = "bool-setting",
    name = "colorblind-nests-enabled",
    setting_type = "startup",
    default_value = true,
    order = "ba"
  },
  {
    type = "color-setting",
    name = "colorblind-nests-color",
    setting_type = "startup",
    default_value = {r = 1, g = 1, b = 1, a = 1},
    order = "bb"
  }
})
