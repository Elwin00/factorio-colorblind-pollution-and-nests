local function rechart()
  game.forces.player.rechart()
end

script.on_init(rechart)
script.on_configuration_changed(rechart)
