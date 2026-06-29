local C = require("constants")
local TINT = C.BULK_INSERTER_TINT
local dbg = C.dbg

local lib = require("prototypes.tint-lib")

local function tint_capacity_effect_icons(tint)
  local names = {"bulk-inserter"}
  for i = 1, 7 do names[#names + 1] = "inserter-capacity-bonus-" .. i end
  for _, tn in ipairs(names) do
    local t = data.raw["technology"][tn]
    if t and t.effects then
      for _, eff in pairs(t.effects) do
        if eff.type == "bulk-inserter-capacity-bonus" then
          eff.icons = {{ icon = "__base__/graphics/icons/bulk-inserter.png", icon_size = 64, tint = tint }}
        end
      end
    end
  end
end

if settings.startup[C.settings.bulk_inserter_enabled].value then
  local inserter = data.raw["inserter"] and data.raw["inserter"]["bulk-inserter"]
  if not inserter then
    dbg("MISS entity: inserter/bulk-inserter")
    return
  end

  -- in-world sprites
  lib.tint_sprite("bulk-inserter.hand_base_picture", inserter.hand_base_picture, TINT)
  lib.tint_sprite("bulk-inserter.hand_open_picture", inserter.hand_open_picture, TINT)
  lib.tint_sprite("bulk-inserter.hand_closed_picture", inserter.hand_closed_picture, TINT)
  lib.tint_sprite("bulk-inserter.platform_picture", inserter.platform_picture, TINT)
  
  -- icons
  lib.tint_icon("bulk-inserter (entity icon)", inserter, TINT) -- entity icon (editor, alerts)
  lib.tint_icon("bulk-inserter (item icon)", data.raw["item"]["bulk-inserter"], TINT) -- item icon (inventory, crafting)
  
  -- techs
  local techs = {"bulk-inserter"}
  for i = 1, 7 do techs[#techs + 1] = "inserter-capacity-bonus-" .. i end
  for _, tech in ipairs(techs) do
    lib.tint_icon("tech: " .. tech, data.raw["technology"][tech], TINT)
  end

  tint_capacity_effect_icons(TINT)
end
