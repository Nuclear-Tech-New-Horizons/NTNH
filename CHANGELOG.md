# 2.11.0 Release

## What's changed?
**Added**
- "Balefire Ballet" and "Music in a Box" music discs
 - Can only be found in dungeons
- Sowth bobblehead
 - He alone carries the whole NTNH OST - Disc 1
 - So he deserves the credit
- Redstone-over-Radio Terminal
 - Allows commands to be sent manually, command line style
 - Supports single commands and repeated ones (polling)
- Grenade machinegun
 - 30rnd automatic 40mm grenade weapon firing at 120 RPS
 - Can be upgraded with an auxiliary electric engine to double the firerate
- Automatic thresher
 - A specialized machine for automatically harvesting crops in a 7x7 area
 - Replaces the buzzsaw's temporary functionality to do just that (the buzzsaw now loses that ability)
 - Drops harvested items using a chute instead of leaving them on the farmland
 - When cutting down hemp, willows, and other NTM double plants, only the top part will be cut off, no matter where the thresher touches it
 - Can also harvest items from sunflowers and tall grass without breaking the blocks
 - Can also handle tall plants like cacti and sugar cane
- New big-ass tank
 - Successor to the BAT9k
 - Larger footprint, way more storage space
 - Needs to be placed on a proper foundation or else it'll sink into the ground
 - Legacy BAT9ks can be recycled in a tier 3 anvil
- AUTOCAL Automatic Calculator
 - Highly advanced programmable RoR device
 - Can send and receive signals and do calculations with the same system as NTM's calculator
- Vending machines
 - Comes in snack machine and soda machine variants
 - The machines can be purchased off of bobmazon for 64 caps each
 - Use vending machine tokens as currency, which can be found occasionally in most structures
- New blast furnace
 - 3x3 base, 7 blocks tall
 - Can be accelerated with hot air blast (just compressed air in a boiler)
 - The faster it is supplied with hot air blast, the faster it gets
 - Uses smarter IO, one port can supply all slots without needing to configure anything or have multiple item inputs
 - A firebox burning coal can already take the blast furnace to 130% speed (default speed with no blast at all is 50%)
 - Produces flue gas, a new type of exhaust that can be burned
- Celestial body cloud rendering!
 - Can be seen from orbit/other celestial bodies
 - Current weather of the planet can be seen, thunderstorms make for denser clouds and lightning
 - Clouds are tinted by atmospheric composition
 - Denser atmospheres can have up to three cloud layers
 - Rain now matches the water table
 - Gerald impacts briefly clear the clouds
- Nukes are now visible from space
 - They also interact with the new clouds
- New expensive mode parts and recipes for space machines
- Config for disabling tilting on "unavoidable gravity" machines like the Big-Ass Tank
- Added this - https://www.youtube.com/watch?v=tkQRdXkX-sc
- Added E4mc Retro and Lan UPnP
 - This allows you to open your world to the internet
 - No public IP required!
- New Bountiful Stars shader!
 - Looks and works *AWESOME* with space!




**Fixed**
- Fixed RoR graph showing the wrong name in the GUI
- Fixed polling option in RoR controllers reading dead signals
- Fixed state change in RoR controllers not allowing repeat commands
- Fixed RoR transmitter sending empty signals when unused mappings apply
- Fixed hopper IO for battery sockets being entirely broken
- Fixed cargo elevators not dropping the correct amount of segments
- Fixed broken config check causing smithing recipes in anvils to always be tier 1
- Fixed potential client desync when placing or removing lids on a hot RBMK
- Fixed custom missile launch pad cores not being obtainable in 528 mode
- Fixed industrial turbines never fully spinning down
- Fixed bricked furnace IO not working right
- Teto could not consume butter
- Mun heavy bedrock ore density not showing on scanner
- Fixed the well-known MC-108343 packet/memory leak bug
- Fixed citical Forge bug where TEs randomly wipe or reset themselves
- Potentially fixed issue with Angelica where tile entity culling would cause cargo elevators to not render on certain angles
- Fixed cargo elevators not rendering past a distance of 100 blocks
- Fixed cargo elevator syncing range being only 100 blocks, meaning that elevators taller than that don't work properly
- Fixed https://github.com/Artur114Projects/Armored_Arms/issues/59
- Fixed HORRIBLE FPS and TPS
 - And probably some of the unknown bugs



**Changed**
- **REMOVED SATCHELS - EMPTY THEM BEFORE UPDATING**
- **REMOVED NETHERLICIOUS - BACKUP YOUR WORLD BEFORE UPDATING**
- Removed Zora no Densha
 - Nobody really used it
- Removed Dmod
- Removed ItemPhysic mod
 - Useless garbage
- Removed OpenFM
- Removed OpenPrinter
- Removed LagGoggles
 - Seems to be unstable
 - Install it yourself if needed
- Removed Chunk Pregenerator mod
 - Unstable garbage
 - If you need command autocompletion, see **Added** section
- Removed TabFaces
 - It didn't work properly anyway, so...
- Removed AIImprovements
 - No improvements, only lags
- RoR graphs can now have their min and max bounds set to a fixed number
 - This should make it easier to accurately tell the difference/scale of values when they exist in an expected range (for example, RBMK temperatures)
- RoR controllers now use polling by default, since state change is unable to actually perform a function unless the state changes, preventing repeated commands
- HE/RF converters now have a tooltip showing their buffered energy
- Updated the models of the cage lamp, fluorescent light and halogen lamp
- 528 mode now has a new config for enabling gravity on machines
 - Machines not on solid ground will tilt, causing them to break
 - Still a work in progress, not all machines make use of it yet
 - The ZIRNOX for example will continue to operate when tilted, however the pipes will disconnect, resulting in a fatal loss of cooling
- Slightly adjusted the automatic buzzsaw's texture
- Mobs can no longer spawn on most versions of concrete
 - Notable exceptions are mossy and cracked concrete bricks
- Increased the yield of lye from wood ash
- All fluid tanks larger than barrels now have dynamic IO speed instead of providing their entire contents instantly
 - Tank fill will slow down the fuller the tank becomes, tank drain also slow downs as it gets emptier
 - This means that multiple tanks in IO mode in the same network will still ping pong, but only a small portion of fluid will be "lost" (i.e. invisible due to subtick transfer operations)
- The stinger is now classified as a special weapon
- The carbine can now take a scope
- The battery socket now renders supports when a block is placed on top of it, allowing somewhat aesthetic stacking of sockets
- The bayonet weapon attachment now uses regular steel plates instead of weapon steel, making them available as early as the blast furnace
- Adjusted some 528 mode recipes
- Removed the template crates entirely for being literally useless
- Oil bubbles can no longer go down to Y:0, they now have a minimum center height of Y:15
- The automatic buzzsaw and thresher now have sound loops when active
- The shredder auto shotgun now uses the plasma damage type instead of laser
- Added "nitra to ammunition" recipe in the assembly machine, turning large piles of nitra into random casings/propellants
- Removed more unused blocks to free up block IDs
 - Removed the old iron barrel
 - Removed the factory hull blocks
 - Removed the vacuum block that has been unused for like 5 years at this point
 - Removed five of the 10 sturdy ladder variants because they were hella ugly anyway
- Added a new alternate recipe "instant aggregate" in the chemical plant, turning 16 cobblestone into 8 gravel and 8 sand
- Added a new alternate recipe for making obsidian in the chemical plant
- Removed the water and steam geysers, which were so obscenely rare most people have never seen either one of them, and became functionally useless without the old geothermal generator
- Moved the napalm recipe to the chemical plant
- Moved the microchip (all variants) and atomic clock recipes to the assembler
- The analog and integrated circuit boards now have alternate recipes in the assembler
- Removed two of the older motor recipes in the arc welder
 - The only remaining recipe is the dense red copper one
- Using state of the art anti-leave-the-screen technology, recipe tooltips (and most tooltips used by `GuiInfoScreen`) should no longer leave the screen
 - This means that the recipe selector can now have the tooltip follow the mouse instead of being eternally stuck in the corner
 - Recipe selector tooltips now have a nice orange and yellow border
- The nuclear charge and demolition nuclear grenade charge now need neutron reflectors
- Schrabidium grenade charges now use CMB steel instead of bronze
- The satellite base now only uses a medium thruster instead of a large one, making it no longer post pyrolysis
- The steel recipe in the crucible now requires flux
 - The recipe is also now a fair bit slower (still faster than a blast furnace overall)
- Remodeled the catalytic reformer
- Crane structure
 - Crane structure
- Martian mode now supports 528 + expensive mode
- Drive processor recipes rebalanced
- Astroturf now blocks mob spawns
- New gas giant harvester texture
- Removed advanced alloy
 - All recipes that used to have AA in it now use something else
 - AA tools and armor remain for now, although they are uncraftable
 - Steel and titanium armor now have some DT and DR, making them roughly on-par with the old AA
 - Buffed durability for steel and titanium tool materials
 - Steel tools now deal more damage (still not as much as titanium) and has diamond harvest level
 - Steel tools now have the abilities that AA tools used to have (vein miner)
 - AA custom machine blocks have been replaced with bronze ones which make more sense in progression, since AA was too close to steel anyway
- Renamed "worker's alloy" to "desh" to avoid confusion
 - Seriously why did this have two names?
- Industrial grade and minecraft grade copper ingots now have the "ingot" suffix
- Changed the microchip assembler recipe duration so that it matches with the demand of one soldering station
- Blast furnace speed with hot air blast can now be increased to 500% (uses the same amount of hot air blast as before)
- Removed BetterFPS mod to avoid some weird bugs
- Updated danish, turkish, spanish and russian translation
- Disabled breath effect
- Updated some 



[Full Changelog](https://github.com/Nuclear-Tech-New-Horizons/NTNH/compare/2.10.0...2.11.0)

## Download
[GitGub](https://github.com/Nuclear-Tech-New-Horizons/NTNH/releases/tag/2.11.0)
