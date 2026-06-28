-- Shared constants + helpers. require("constants") from any stage (data / data-updates / control).
local C = {}

C.DEBUG = false

function C.dbg(msg)
  if C.DEBUG then log("[colorblind] " .. msg) end
end

C.BULK_INSERTER_TINT    = {r = 0.4, g = 0.8, b = 0.45, a = 1}
return C
