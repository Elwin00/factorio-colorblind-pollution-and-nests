local function rechart()
  for _, force in pairs(game.forces) do
    force.rechart()
  end
end

script.on_init(rechart)
script.on_configuration_changed(rechart)
