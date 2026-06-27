# Colorblind Pollution and Nests

A Factorio mod that recolors pollution and enemies on the map and minimap so they are easier to tell apart for players with color vision deficiencies (color blindness). The default map colors — red enemies over similarly-toned terrain, and pollution shading that blends in — can be hard to distinguish; this mod replaces them with more separable colors.

## Features

- Recolors the **pollution** overlay on the map and minimap.
- Recolors **enemy nests and other enemy structures** on the map and minimap (the default is red).
- Each recolor can be turned on or off independently.
- The map is automatically refreshed when the mod is added or its settings change, so the new colors apply to already-explored areas, not just newly-charted ones.

## Settings

The mod adds two startup settings (found under **Settings → Mod settings → Startup**):

| Setting                      | Default | Effect                                                                                           |
|------------------------------|---------|--------------------------------------------------------------------------------------------------|
| Recolor pollution on the map | On      | When enabled, pollution is shown in a custom color instead of the game default.                  |
| Recolor enemies on the map   | On      | When enabled, enemy nests and structures are shown in a custom color instead of the default red. |

When a setting is unchecked, the corresponding element keeps its normal in-game color.

Because these are startup settings, changing them requires returning to the main menu and restarting Factorio for the change to take effect — this is standard for any setting that affects how the game's data is loaded.

## Compatibility

This version targets **Factorio 2.1**. Players still on Factorio 2.0 can use the older `1.0.x` release, available from the mod's version history on the Factorio Mod Portal.

## Installation

Install through the in-game mod browser or the [Factorio Mod Portal](https://mods.factorio.com/), or place the packaged mod zip in your Factorio `mods/` folder.

## Credits

Forked from the original project *Colorblind Pollution & Nests* by Marko Galić: <https://mods.factorio.com/mod/colorblind-pollution>

## License

Released under the MIT License. See [LICENSE](LICENSE) for details.
