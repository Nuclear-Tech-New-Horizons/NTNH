# 2.9.0 Release
## KEYBOARD WIZARD WAS TEMPORARILY DISABLED
## BECAUSE OF THE CONTROLLING MOD INCOMPATIBILITY

## What's changed?
**Added**
- Plasma forge
   └ Plasma-powered assembly machine
   └ Used to produce lategame items that until now were regular assembler recipes
   └ Can pass on plasma, 25% of the plasma energy that passes through a plasma forge is consumed
   └ This allows plasma forges to be chained, or unused residue energy to be used in turbines
   └ Parts that interact with the fusion reactor directly, like the collector chambers, are not compatible
   └ Like all assembler-type machines, features custom animations (i spent a lot of time on those, please look at them for prolonged periods of time, ideally without blinking)
   └ Base production rates for plasma forge exclusive recipes are very slow
   └ Does not accept upgrades, however, can use up otherwise useless fission fragments and unstable isotopes to gain a temporary x4 speed bonus with no penalty
   └ Can also assemble fusion reactor vessels, which are cheaper but need quantum circuits
- Blank Redstone-over-Radio Panel
   └ A cheap way of extending the size of RoR control consoles without needing unconfigured button or gauge panels
   └ Now used to craft the other RoR panel variants
- Redstone-over-Radio numeric display 
   └ Shows integer RoR values as numbers
   └ Can have up to two display panels per block
- Redstone-over-Radio Graph 
   └ Similar to the numerical display, but instead of showing the number, it logs it every half second and displays it on a graph
- New grenades
   └ Universal system where there's only one grenade item
   └ A grenade is composed of a shell, filling and fuze, which can be mixed and matched as needed
   └ Instead of having dedicated grenades with impact or long timers, the desired fuze can simply be put into any grenade configuration
   └ Comes with proper 3D models and animations
   └ Grenade max stacksize has been drastically reduced (and now depends on the shell used)
- Atmospheres are now visible from other planets/orbit
- All planets/moons now generate flat in superflat worlds
- TheVitya2127 bobblehead
- Redstone-over-radio lever
   └ Big breaker switches
   └ Up to two per module, side by side
   └ Can send different RoR values based on the lever's position
- Redstone-over-radio indicator lights
   └ Colored indicator light panels with labels on them
   └ Up to six lights per module
   └ Will light up when an RoR signal falls within the configured threshold
- Redstone-over-radio pager
   └ Item that receives RoR signals and displays them on the HUD info system
   └ Info contains the channel name, a shortened timestamp to tell apart equal signals sent on different ticks, and the actual signal
   └ Useful in various situations: 
      └ Usable for remote monitoring, allowing critical things like reactor temperature and coolant flow to be checked even if not on-site
      └ Using RoR transmitters that are set to polling, it's now very easy to figure out if the chunk the transmitter is in is loaded
      └ An automated message system for various general alerts, easily doable by using an RoR transmitter with custom mappings (do mind the character limit, longer alerts may have to be sent sequentially)
      └ A simple way of getting live feedback from the RoR system, in order to detect when or if a system sends a signal, since other RoR receivers do not have a way of telling apart repeated identical signals
- Satellite orbit and cosmetic modification
      └ Satellites can now be modified via a GUI that is accessed via crouch + right click
      └ They now store additional info that defines how they move in the sky
      └ Holding a satellite will show you a preview of what their final trajectory in the sky will be
      └ You can configure them to blink too
- Freecam (default key: F4)
- ExNihilo
      └ Allows to get stuff in early game
      └ Currently it is very raw
      └ There will be future changes in loots
- Distant Horizons shader support 🥳
- New colored texts system
- Added the missing music discs
- Lodestone craft
- Added a few more new quests
- Added [Improving Minecraft Mod](https://www.curseforge.com/minecraft/mc-mods/improving-minecraft-fork)
   └ Adds some funny stuff
   └ Changes the stone age gameplay
- Added [Smart Tree Falling Mod](https://www.curseforge.com/minecraft/mc-mods/smart-tree-felling)
- Added [Re: Chests Mod](https://www.curseforge.com/minecraft/mc-mods/rechests)
- Added [An Extra Touch Mod](https://www.curseforge.com/minecraft/mc-mods/an-extra-touch)
- Added some more resourcepacks
   


**Fixed**
- **FIXED ORE GENERATION**
- Fixed size 15 dual kerosene thruster not rendering at all
- Fixed HUD/jetpack toggle popup not working at all on multiplayer servers
- Fixed assembly machine NEI handler not being able to handle all thirteen inputs at once
- Fixed RBMK fuel channels playing the meltdown sound when broken while hot with meltdowns disabled
- Fixed destroyer and crate minecarts having the same entity IDs, causing them to turn into each other when loading a save
- Fixed GL state leak for ICF lasers
- Fixed broken localization on some armor resistances
- Fixed afterburn resistance on HEV not working
- Fixed Floppy Disk recipe
- Fixed Memory Card recipe
- Fixed #62
- Fixed euphemium compound plate recipe not yielding four items as it should in the plasma forge
- Fixed NTM rare item drops ignoring the mob loot gamerule
- Fixed flamethrowers not properly igniting entities on direct hit, only via lingering fire
- Fixed PWR RoR components not properly showing the possible values/functions when connected to ports
- Fixed missing ports on the plasma forge
- Fixed wrong texture being bound in the crucible for the molten metal gauge
- Fixed RoR panels having no hardness at all
- Undid the change to the crucible where using no recipe would fill up the recipe stack anyway because people would NOT STOP smelting stuff then setting the recipe after the fact which DOES NOT WORK.
   └ This change however introduced yet another inconsistency with external pouring behavior that I simply cannot be assed to fix, so we are just rolling all that back
   └ If you're still too dumb, bald or irradiated to use the crucible correctly, please bother LITERALLY ANOYNE EXCEPT ME.
   └ This basically fixes the aforementioned inconsistency
- Fixed meteorite sword progression having some issues ever since the fusion reactor rework
- Fixed the grenade crafting handler not checking if a shell/filling combination is even valid, allowing weird combos
- Fixed dispenser fired laser grenades crashing the game
- Fixed schrabidium grenade being obscenely powerful for no reason
- Fixed annihilator recipe config throwing an error about the recipe list being empty, even though the recipe list should indeed be empty on purpose
- Fixed barrel connectors appearing between barrels even though they have different fluid types
- Crash on Tekto with Angelica installed
- Fixed Adventure jetpacks not working
- Fixed adventure backpack GUI closing on double-click merging item stacks in inventory
- Fixed storage bus not read fluid in configurated dual interface
- Fixed world server memory leak
- AE2 Crash Fix in Anglica (https://github.com/GTNewHorizons/Angelica/pull/1684)
- Fixed some issues someone was having with nixos
- Fixed two world client memory leaks in Angelica
- Various fixes by @mitchej123 in Angelica
- Shader fixes
- Fixed crash with fancy block particles
- Fixed modded enchant glints not being animated
- Fixed mob's eyes from z-fighting
- Fixed no reward crash in quests
- Fixed server leak in BetterQuesting
- Fixed ctm of concrete block in Chisel
- Fixed world client memory leaks caused by block renderers
- Fixed double slabs dropping full block instead of 2 single slabs with silk touch
- Fixed Matter Manipulator does not move wireless hubs and wireless connectors correctly
- Many GUI fixes in AE2
- Fixed bookmark recipe item order being inconsistent
- Fixed Collapsed Recipes in Bookmarks
- Fixed client -> server sync in creative gui
- Fixed hang glider not usable from offhand
- Fixed compact chat messing up the grave message
- Fixed riding issue with hang glider
- Fixed red room bug related to armor
- **AND MANY MORE VARIOUS FIXES**
      └ I am too lazy to list them all



**Changed**
- Doubled bismuth and tantalum yields from high-performance solvent bedrock ore processing
- Hoppers and buckets can now be made out of steel
- RoR gauges now show the lowest and highest configured value on the actual gauge
- The steel sword now looks like a medieval broad sword with the appropriate scale
- All remaining items have been removed from the template folder, siren tracks and plate stamps are now made in the anvil
- Gerald assembly now requires stellar flux
- The DFC parts are now made in the plasma forge, with the recipes being more expensive
- The restrictions for firing Folly (using the scope, waiting for the startup) no longer apply to NPCs (which can never fulfill them anyway), allowing them to actually use it
- The plinking sound played when a drill cannot break a block now only plays once for the entire AoE instead of once for every single block that couldn't be broken
- Fluid barrels now have a sideways connector when hooked up to pipes, bridging the two pixel gap
- Redstone over radio panels now render with their unique parts in the inventory, making the items easier to tell apart
- Updated russian, spanish, polish, ukrainian, german and chinese localization
- Removed the euphemium and DNT compound plate recipes from the anvil, they are now plasma forge exclusive
- More RoR integration
   └ PWRs can now output the control rod position
   └ Industrial turbines and leviathans can now output their current energy production
   └ Industrial turbines can output their current flywheel speed in %
   └ The ZIRNOX now outputs its heat and pressure
   └ The CCGT can output the turbine setting in percent, the turbine's RPM and the produced energy
   └ The fusion reactor plasma vessel can output its output plasma energy and fuel consumption in percent
- Cast plate foundry molds now have a triple variant
- Zombies now have a chance to drop copper, aluminium and titanium ingots (1:200 each)
- The burner press now has nine additional storage slots for things like stamps and reserve fuel
- Crucible recipes no longer require templates, instead featuring a recipe selector 
   └ This means that the template folder has been fully deprecated
   └ The item still exists solely for providing the icon for the recipe selector
- Improved minigun muzzleflash
   └ The flash is now faster and larger
   └ Moved the origin up to be at the firing barrel instead of the center of the rotor
- RoR implicit addition as well as RoR display components now support 64 bit integer numbers (~9 quintillion) instead of just 32 bits (~2 billion)
- Antischrabidium can no longer be made via cyclotron, it is now exclusively post particle accelerator
- Reduced the cost of armor batteries to compensate for the new capacitor recipes
- Quadrupled the amount of polymer created by recipe
   └ Petroleum gas required has been doubled
- Cadmium and fish oil to rubber recipe now needs more fish oil and outputs 16 rubber at once
- Redesigned StarDar GUI
- Improved StarDar OC compat
- Planet icons tweaked for better tiling when rotating 
   └ Urlum and moons added, can't be visited yet though
   └ Same with Plock & Karen
- Invasion waves now use the boss health bar
- Distant planets are now (more) visible through scopes/zooming
- Flour, butter, cheese, strawberries, and icecreams are now oredicted
- More Laythe generation tweaks (ancient roots found deep underground)
- All RoR panels now have basic item descriptions informing about the screwdriver requirement for configuration
- EMP grenades now deal 5x damage against anything with powered armor
   └ Decreased base damage to compensate
- EMP grenades now destroy machines in a small radius like an EMP missile would
- Grenades are no longer affected by nuclear blasts or other grenade explosions
- Players no longer receive the starting guide book on first spawn since it's now very outdated
- All RoR panels now have QMAW integration
- Legacy plasma heater and plasma heater hatches which are still found in crashed space ships can now be dismantled into steel pipes, copper pipes and analog circuits
- Removed legacy plasma block
- RoR panels now have OpenComputers integration, allowing otherwise fixed parameters like gauge thresholds, channels, and button commands to be adjusted on the fly
- Solinium blasts now use the new higher poly sphere model and frame interpolation, making the expansion smoother
- Using a defuser on paintable cables/pipes/tubes that already have a paint applied will toggle the overlay, makng the cable/pipe/tube blend in perfectly
- Mufflers installed on force fields now disable the loud spark noise caused by impacts
- RoR readers can now read neutron flux from fuel channels and the fill state of boilers and heat exchangers
- Canned recursion can now be crafted from canned recursion
- Soldering recipes are now prioritized over anvil recipes in the NEI listing
- Paintable blocks now have tooltips explaining all the tools that can be used
- Restore previous spawn when using Sleeping Bag from Backpack placed in world
- Removed Villager backpack trade from Villagers
- Added tooltip to equip/unequip button in Adventure Backpacks GUIs
- Hiden all colored wireless variant from NEI
- Implemented compact ctm in Angelica
- Better horse support
- Make fog controls work with BoP fog
- Added concrete slabs and stairs in Chisel
- Localization of gui title of the ticket machine in Computronics
- Improve Recipe Badge
- Added recipe chance to bookmarks
- Controlling now ships built-in key combo support
- No more shrooms in caves
- Minimized interface, cleaned it
- Removed armor swap



[Full Changelog](https://github.com/Nuclear-Tech-New-Horizons/NTNH/compare/2.8.1...2.9.0)

## Download
[GitGub](https://github.com/Nuclear-Tech-New-Horizons/NTNH/releases/tag/2.9.0)
