local C = require("constants")
local dbg = C.dbg

---@class TintLib
local lib = {}

---@param name string
---@param sprite table?  -- a sprite-like prototype table (Sprite / Sprite4Way / animation); may be nil
---@param tint Color
---@return boolean
function lib.tint_sprite(name, sprite, tint)
  if not sprite then dbg("MISS sprite: " .. name .. " (nil)") return false end
  if sprite.layers then
    for _, layer in pairs(sprite.layers) do
      if not layer.draw_as_shadow then
        layer.tint = tint
        if layer.hr_version then layer.hr_version.tint = tint end
      end
    end
  elseif sprite.sheets then
    for _, sheet in pairs(sprite.sheets) do sheet.tint = tint end
  elseif sprite.sheet then
    sprite.sheet.tint = tint
  else
    sprite.tint = tint
    if sprite.hr_version then sprite.hr_version.tint = tint end
  end
  return true
end

-- Tint every sub-sprite in a structure dictionary (direction_in/out, north/east/..., patches), skipping frozen (Aquilo) variants.
---@param name string
---@param structure table?  -- a structure dictionary (direction_in/out, north/..., patches)
---@param tint Color
function lib.tint_structure(name, structure, tint)
  if not structure then dbg("MISS structure: " .. name .. " (nil)") return end
  for key, sub in pairs(structure) do
    if type(key) == "string" and key:find("frozen") then
      dbg("skip frozen: " .. name .. "." .. key)
    else
      lib.tint_sprite(name .. "." .. key, sub, tint)
    end
  end
end

-- Tint all icons of a prototype, skipping overlay badges tagged as "floating" (capacity/speed/...).
---@param name string
---@param proto table?  -- any prototype carrying .icon / .icons
---@param tint Color
function lib.tint_icon(name, proto, tint)
  if not proto then dbg("MISS icon: " .. name .. " (proto nil)") return end
  if proto.icons then
    local n, skipped = 0, 0
    for _, layer in pairs(proto.icons) do
      if layer.floating then
        skipped = skipped + 1
      else
        layer.tint = tint
        n = n + 1
      end
    end
    dbg("OK icon (icons, tinted " .. n .. ", skipped " .. skipped .. " floating): " .. name)
  elseif proto.icon then
    proto.icons = {{ icon = proto.icon, icon_size = proto.icon_size or 64, tint = tint }}
    proto.icon = nil
    dbg("OK icon (icon -> icons): " .. name)
  else
    dbg("MISS icon: " .. name .. " (no .icon or .icons)")
  end
end

return lib
