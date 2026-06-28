function keys_of(tbl)
  if type(tbl) ~= "table" then return "(not a table: " .. type(tbl) .. ")" end
  local ks = {}
  for k in pairs(tbl) do ks[#ks + 1] = tostring(k) end
  table.sort(ks)
  return "{ " .. table.concat(ks, ", ") .. " }"
end

function tint_sprite(name, sprite, tint)
  if not sprite then dbg("MISS sprite: " .. name .. " (nil)") return false end
  if sprite.layers then
    local n = 0
    for _, layer in pairs(sprite.layers) do
      if not layer.draw_as_shadow then
        layer.tint = tint
        if layer.hr_version then layer.hr_version.tint = tint end
        n = n + 1
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
function tint_structure(name, structure, tint)
  if not structure then dbg("MISS structure: " .. name .. " (nil)") return end
  for key, sub in pairs(structure) do
    if type(key) == "string" and key:find("frozen") then
      dbg("skip frozen: " .. name .. "." .. key)
    else
      tint_sprite(name .. "." .. key, sub, tint)
    end
  end
end

function tint_item_icon(item_name, tint)
  local item = data.raw["item"] and data.raw["item"][item_name]
  if not item then dbg("MISS item: item/" .. item_name .. " (nil)") return end
  if item.icon then
    item.icons = {{ icon = item.icon, icon_size = item.icon_size or 64, tint = tint }}
    item.icon = nil
  elseif item.icons then
    for _, layer in pairs(item.icons) do layer.tint = tint end
  else
    dbg("MISS item: " .. item_name .. " has neither .icon nor .icons")
  end
end
