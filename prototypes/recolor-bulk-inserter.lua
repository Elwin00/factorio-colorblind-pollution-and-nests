local C = require("constants")
local dbg = C.dbg

if settings.startup["colorblind-bulk-inserter-enabled"].value then
    local inserter = data.raw["inserter"] and data.raw["inserter"]["bulk-inserter"]
    if not inserter then
      dbg("MISS entity: inserter/bulk-inserter")
    else
      tint_sprite("bulk-inserter.hand_base_picture",   inserter.hand_base_picture,   C.BULK_INSERTER_TINT)
      tint_sprite("bulk-inserter.hand_open_picture",   inserter.hand_open_picture,   C.BULK_INSERTER_TINT)
      tint_sprite("bulk-inserter.hand_closed_picture", inserter.hand_closed_picture, C.BULK_INSERTER_TINT)
      tint_sprite("bulk-inserter.platform_picture",    inserter.platform_picture,    C.BULK_INSERTER_TINT)
      tint_item_icon("bulk-inserter", C.BULK_INSERTER_TINT)
    end
end
