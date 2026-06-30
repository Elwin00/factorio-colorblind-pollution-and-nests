---@class Constants
local C = {}

---@type boolean
C.DEBUG = false

---@param msg string
function C.dbg(msg)
  if C.DEBUG then log("[colorblind] " .. msg) end
end

---@type Color
C.BULK_INSERTER_TINT = {r = 0.4, g = 0.8, b = 0.45, a = 1}

---@class ColorblindSettingNames
---@field pollution_enabled string
---@field pollution_color string
---@field nests_enabled string
---@field nests_color string
---@field bulk_inserter_enabled string
C.settings = {
  pollution_enabled = "colorblind-pollution-enabled",
  pollution_color = "colorblind-pollution-color",
  nests_enabled = "colorblind-nests-enabled",
  nests_color = "colorblind-nests-color",
  bulk_inserter_enabled = "colorblind-bulk-inserter-enabled"
}

return C
