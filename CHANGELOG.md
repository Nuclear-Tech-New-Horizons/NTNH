# 2.8.1 Release
### All of the changes are related to AE2

## What's changed?
**Added**
- Universal GUI in WirelessCraftingTerminal
- Added keybinds for every universal terminal
- Added "fluix" to wireless connector tooltip
- Added a "Nodes and one Channel" mode
- Added Universal GUI for all terminals (Wireless Crafting, Processing, Pattern, etc.)
- Added CPU Sorting buttons and enhancements
- Added Color Selector GUI for the Color Applicator with color pickup
- Added Crafting Complete Notification Popup
- Added Pattern Repeater
- Added Spatial Link Chamber and Spatial Network Relay
- Added Stack Type API
- Added Preview Blocks
- Added storage interceptor & locking card support
- Added creative-like pick block with withdrawal from AE system
- Added info tooltip for Pins Button and tooltips for creative energy blocks
- Added level emitter button to control detection mode on empty filter
- Added backhand support for the color applicator
- Allow bind terminal to wireless access point
- Allow network-to-network exotic stack transfer
- Allow viewing crafting and usage of the pattern main output
- Allow input-only pattern to be encoded as a Tunnel pattern
- Allow using inverter card on fluid cells
- Allow block containers to disable facades based on metadata
- View Cell now supports all stack types
- Show requester on active crafting CPU crafts
- Use pylon dimension for SpatialTransition instead of IO-Port
- Enhanced Network Status Bar
- Enhanced Stuck Overlay (red tint on stuck interfaces)
- Improve terminal interaction with type filter



**Fixed**
- Fixed armor slot index and duplicated tooltip in WirelessCraftingTerminal
- Fixed container interaction tooltip in WirelessCraftingTerminal
- Fixed multible bugs related to AE2
- [Memory-opti:fix leak] Fix world leak
- Fixed universal terminal mode switch in baubles
- Fixed multiple bugs
- Fixed discretizier crash
- Fixed primary gui
- Fixed draining simulation actually perform drain
- Fixed import/export bus issues
- Fixed replenisher void
- Fixed stock replenisher item voiding
- Fixed some typos
- Fixed storage name on exp
- Fixed storage name fluid emitter
- Fix crash when trying to open wireless magnet filter when terminal in baubles
- Fixed alt-type storage bus unable to read subnet
- Fixed null key in legacy craftable map
- Fixed storage bus crash on empty container
- Fixed storage bus crash and item NBT disappearance
- Fixed fill containers interaction
- Fixed fluid cell interaction and amount-to-send calculation for fluids
- Fixed essentia not being pushed to network via interface
- Fixed bi-directional filters with storage bus + interface subnet
- Fixed item buses not updating redstone mode when GUI changes
- Fixed crafting results being voided when unable to inject into network
- Fixed crafting GUI transition and opening in non-hand slot
- Fixed Universal Terminal not loading pattern when changing pattern output slot
- Fixed pattern optimizer crash and crash on patterns with unsupported types
- Fixed wrong substitutes used in crafting calculation
- Fixed processing terminal buttons position
- Fixed performance regression when requesting new crafts
- Fixed crafting status tooltip
- Fixed negative amount button
- Fixed colored +/- amount buttons not updating value when colored
- Fixed tooltip showing previously hovered item details instead of current one
- Fixed color applicator GUI not reporting colors properly
- Fixed optimizer GUI not opening; fixed fluids not displayed in optimizer GUI
- Fixed partition button not working on Cell Workbench
- Fixed highlight interface not working sometimes
- Fixed Network Status GUI not opening
- Fixed multi-interface smart blocking (smart UAAL automation)
- Fixed config copy for IO Bus, Storage Bus, and Level Emitter via memory card
- Fixed interface terminal search refocus
- Fixed Interface Terminal crashes and improvements
- Fixed item name localization on dedicated server
- Fixed NPE in DualityInterface#addDrops and in AEFluidStackType#drainStackFromContainer
- Fixed server crash introduced by PR#1089
- Fixed crash without AE2FC
- Fixed encoded pattern overwrite
- Fixed fake slot and pin slot ghost items
- Fixed standard search not being standard
- Fixed ME Chest
- Fixed Security Terminal GUI
- Fixed primary GUI and slot rendering (items not appearing while dragging)
- Fixed NEI Cell View stack size rendering
- Fixed AE Follow Craft client disconnect
- Fixed keyBindPickBlock in terminals
- Fixed materials order in NEI
- Fixed level emitter watcher not tracking fluids
- Fixed crafting mode for processing pattern terminal
- Fixed storage search chat names localization
- Fixed null filter sync to client in GUI
- Fixed NPE on addon
- Fixed toggle focus



**Changed**
- Don't strip logs when holding healing axe in offhand
- Updated Super Stock Replenisher block texture
- Allow using inverter card on fluid cells
- Fixed Level Maintainer FCGuiLineField and texture
- Fix NPE when trying to drain a tank in a tank tower
- Changed Artificial Universe Fluid Cell to 63 Types
- Added priority in fluid storage bus tooltip
- Removed essentia terminal from ultra terminal recipe
- Adjusted pixels in Gui Terminal
- Hide all colored wireless variant from NEI 
- Improve colors, localisation and add configuration for render overlay
- Terminal performance fixes
- Improved NetworkInventoryHandler performance
- Added getTile cache and optimized ASM integration
- Cached pattern output stack and Enum.values() calls
- Cached invalid pattern flag in NBT
- Packed interface stuck state with other client flags (tick on client only)
- Reduced updates when recoloring cables
- Fixed performance regression when requesting new crafts
- Made crafting tree search more exhaustive
- Fixed fluid transfer IO port speed
- Changed Matter Condenser default entry state to Singularity Mode
- Changed cable sorting
- Changed ME Drive rendering to color the chassis instead of cells
- Changed Level Type Tooltip to include Fluid
- Renamed interface in Interface Terminal
- Removed pattern refill card
- Improved clarity of container interactions
- Improved Storage Bus slot fadeout when OreDict card is present
- Improved pattern info tooltip (more universal)
- Reduced interface GUI textures
- Move AE2 pick-block block select logic to client-side
- Adjusts ME Pick Block to prefer PickBlockEvent when appropriate
- Implement simulateAdd for ItemIO
- Localization updates (Ukrainian, Portuguese, Amount elements)
- Less random Meteorite generation
- Do not push items in inactive interface
- Don't add items to pattern with shift-click on Pattern Terminal
- Restrict multi-parts in cable with bus
- Optimized images / textures



[Full Changelog](https://github.com/Nuclear-Tech-New-Horizons/NTNH/compare/2.8.0...2.8.1)

## Download
[GitGub](https://github.com/Nuclear-Tech-New-Horizons/NTNH/releases/tag/2.8.1)
