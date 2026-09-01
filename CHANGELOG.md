# 2.14.0 Release

## What's changed?
**Added**
* Eggman's announcement
* Curvy Pipes
* Full Forge Fluids <-> NTM Fluids compat
    * NTM fluids can be imported and exported into/out of ME system
    * All the mods that use Forge Fluids see and use NTM fluids
    * Fluid tanks are recognized as fluid storage



**Fixed**
* Fixed a crash caused by upgrading the second half of a double Re:Chest
* Fixed squashed GUIs
* Fixed a crash caused by placing down Et Futurum shulker boxes
* Fixed nether quartz and lapis generation
* Fixed missing measure tape recipe
* Fixed weird-ass hopper crafting recipes
* Fixed an exploit that allowed cheaters to grab items out of nowhere using Mass Storage Units



**Changed**
* Removed Lumy Skin Patch due to incompatibility w/ Et Futurum Requiem
* Changed the behavior of the siphon
    * Previously only worked when completely filling a single empty container, failing silently otherwise
    * Now tops up compatible partially filled barrels first
    * Then selects the largest compatible empty barrel and fills it completely or partially
    * Continues through additional containers until the source is depleted
    * Respects barrel restrictions, fluid type, pressure, and exact remaining amounts
    * Safely separates stacked empty barrels when filling one
    * Preserves existing registered-container and pipette behavior
* Reverted Gergification until proper implementation
    * Will probably come with the Stone Age update and/or Factorization update
* Reworked Geological Surveyor
    * 3 tiers available - Iron, Steel, Desh
    * Different tiers have different accuracy
    * The ores show on Journey/Xaero map, instead of creating an unreadable map item
    * Ore overlay can be toggled
    * Ore selection included
    


[Full Changelog](https://github.com/Nuclear-Tech-New-Horizons/NTNH/compare/2.13.0...2.14.0)

## Download
[GitGub](https://github.com/Nuclear-Tech-New-Horizons/NTNH/releases/tag/2.14.0)
[CurseForge](https://www.curseforge.com/minecraft/modpacks/ntnewhorizons)
[Website](https://ntnewhorizons.com/download)
[Technic](https://www.technicpack.net/modpack/nuclear-tech-new-horizons)
