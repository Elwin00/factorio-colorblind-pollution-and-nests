# Colorblind Pollution and Nests

A Factorio mod that recolors pollution and enemies on the map and minimap so they are easier to tell apart for players with color vision deficiencies (color blindness). The default map colors — red enemies over similarly-toned terrain, and pollution shading that blends in — can be hard to distinguish; this mod replaces them with more separable colors. It also includes an optional recolor of the bulk inserter to make it easier to distinguish from the regular inserter.

## Features

- Recolors the **pollution** overlay on the map and minimap.
- Recolors **enemy nests and other enemy structures** on the map and minimap (the default is red).
- Each map recolor can be turned on or off independently, and its color is customizable with a color picker.
- Optionally recolors the **bulk inserter** toward a more distinct green (in-world, its icons and research screen), to tell it apart from the regular inserter. Off by default.
- The map is automatically refreshed when the mod is added or its map-color settings change, so the new colors apply to already-explored areas, not just newly-charted ones.

## Settings

The mod's settings are found under **Settings → Mod settings → Startup**.

The two map recolors each have an on/off toggle plus a color picker:

| Setting                      | Default    | Effect                                                                                             |
|------------------------------|------------|----------------------------------------------------------------------------------------------------|
| Recolor pollution on the map | On         | When enabled, pollution is shown in the chosen color instead of the game default.                  |
| Pollution color              | Light blue | The color used for pollution when the pollution recolor is enabled.                                |
| Recolor enemies on the map   | On         | When enabled, enemy nests and structures are shown in the chosen color instead of the default red. |
| Enemy color                  | White      | The color used for enemies when the enemy recolor is enabled.                                      |
| Recolor the bulk inserter    | Off        | When enabled, tints the bulk inserter toward a darker, more distinct green.                        |

Each color picker defaults to the mod's original colors (light blue pollution, white enemies), so leaving them untouched preserves the classic look.

When a toggle is unchecked, the corresponding element keeps its normal in-game color, and (for the map recolors) its color picker has no effect.

Because these are startup settings, changing them requires returning to the main menu and restarting Factorio for the change to take effect — this is standard for any setting that affects how the game's data is loaded.

### Note on the bulk inserter recolor

This recolor works by tinting the existing sprites rather than shipping new artwork. Because of how Factorio applies tints (a per-channel multiply over the original, full-color sprite), it can darken and shift the color but cannot cleanly repaint it. The result is a darker, greener bulk inserter that is easier to distinguish — not a full repaint. The current tint is tuned for protan color vision.

## Compatibility

This version targets **Factorio 2.1**. Players still on Factorio 2.0 can use the older `1.0.x` release, available from the mod's version history on the Factorio Mod Portal.

## Installation

Install through the in-game mod browser or the [Factorio Mod Portal](https://mods.factorio.com/), or place the packaged mod zip in your Factorio `mods/` folder.

## Credits

Forked from the original project *Colorblind Pollution & Nests* by Marko Galić: <https://mods.factorio.com/mod/colorblind-pollution>

## License

Released under the MIT License. See [LICENSE](LICENSE) for details.