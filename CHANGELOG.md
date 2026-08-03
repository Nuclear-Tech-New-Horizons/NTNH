# 2.12.0 Release

## What's changed?
**Added**
* Command history navigation using arrow buttons
* Added Grass Is Annoying mod
    * Allows you to attack mobs through grass and non-solid blocks
    * Thank you @thomass47. !
* Some new GuideNH entries about agriculture and farming
* Modern copper items and blocks
    * Glad you're here, modern version gooners >:D
* Modern honey items and blocks
* Modern lingering potions
* Tipped arrows
* The original crying obsidian
    * Did you know it was a concept in 2011?
    * Me neither
* Pneumatic Storage System
  * Mass storage logistics system that can perform various automation tasks
  * Items can be stored in clutter storages (steel crate equivalent) or mono type storages (ironically supports three types set using filters holding several thousand items)
  * In order to be accessible, all storages need a supply of compressed air with the compression level dictating range
  * Access points allow items to be retrieved and inserted manually
  * Access points have a search function as well as several sorting options
  * Importers allow hopper IO to add items to the network
  * Exporters allow items to be retrieved and then taken using hopper IO, things like filters and request rules can be defined in several ways
    * Allows continuous request and request on demand (redstone or RoR command)
    * Filters can be set using items or RoR commands
    * Requests can be configured to take as much as possible, to only take full stacks, or to only take full requests
    * In combination with assembler recipe switching, using RoR logic, this means that on-demand recipe automation is now possible
  * Still in testing, there's no recipes for any of the parts yet
* Cargo door
  * Steel grate door which goes well with the cargo elevators
* Effortless Building Gadgets by @mellowarpeggiation (@MellowArpeggiation)
* *Returned* InventoryBogoSorter and Mouse Tweaks
* *Returned* Xaero's Minimap and World Map
* NTNH Modernity 2.1 resource pack
* Added Flare Stack quest to the questbook
* Added Bountiful Stars shader settings improvements for Angelica compatibility
* New Chicago Pile
  * Assembled multiblock, similar to the PWR
  * Requires new chicago pile graphite bricks
  * Assembled with a hand drill out of a box made from graphite bricks, at least 5x5x5, and at most 15x15x15 blocks large
  * Drilling the assembled reactor will add channels at the selected locations
    * Drilling along the reactor's orientation will add a fuel channel
    * Drilling perpendicular to fuel channels will add a ventilation channel
    * Drilling vertically will add a control rod channel
  * Fuel insertion is now done with a dedicated fuel loader which can be operated by hand or automated with hopper IO and redstone
  * Ventilation channels need chicago pile vents which are powered with compressed air at 1 PU
  * Chicago pile control rods can either be fully withdrawn with redstone or fine tuned with RoR
  * Additionally, channels can be drilled by right clicking a pile addon device with the hand drill, the addon doesn't need to be removed beforehand
    * This is mainly for convenience when disassembling and reassembling the reactor, which requires all channels to be drilled again
  * Piles that overheat will explode, throwing flaming graphite everywhere
* Satelllite Ground Station
  * Can relay RoR commands to connected satellites and satellite info back to RoR
* Platemetal
  * Decorative connected texture metal block
  * Comes in all colors except brown
  * NTM poop theory debunked
  * Make a nice clanking noise when placing and breaking
* Special Mobs
  * yaay more different mobs :D



**Fixed**
* Fixed a crash caused by typing any command on the server
* Fixed pressing "/" not adding "/" in the chat
* Fixed blur in Redstone-over-Radio Terminal
* *Probably* fixed the brigadier issue ([#92](https://github.com/NTNewHorizons/NTNH/issues/92))
* *Probably* fixed the skin issue
    * ~~Skill~~ Skin issue, my friend
* Fixed andesite, diorite, granite, limestone and marble generation
* Fixed [#83](https://github.com/NTNewHorizons/NTNH/issues/83)
* Fixed shaders being enabled BY DEFAULT 😭😭😭💔💔
* Fixed "HOW THE FUCK?!" quest showing
    * It was supposed to be secret
* Fixed [#96](https://github.com/NTNewHorizons/NTNH/issues/96)
    * That's basically a misinformation
* Fixed AUTOCAL's number comparison functions not working with variable substitution as advertised
* Fixed broken thorium ore centrifuging recipe shown in NEI
* Fixed industrial turbine not properly saving its energy values, causing the flywheel to stop on relog
* Fixed lapis dust to cobalt shredder recipe not using oredict
* Fixed AUTOCAL's file opening buttons not working on some systems, it will fall back to opening the folder instead
* Fixed some recipes not using ore dict when they should
* Fixed `anyBismoid` group not being a proper group, causing other mods' bismuth and arsenic to not be included
* Fixed RoR gauge not using SI suffixes on values below 0
* Fixed AUTOCAL units not closing their GUI when the unit is destroyed
* Fixed AUTOCAL's $buffer$ substitution not working
* Fixed meteorite sword localization still being broken
* Fixed missing localization on the FM radio
* Fixed mufflers not working on large doors
* Fixed the electric press not displaying the currently pressed item in the model
* Fixed flint craft
* Air intake can dupe compressed air (if you need compressed air in a vacuum, you can use the air intake in a room full of any gas except compressed air)
* Titanium deco has 16 variants for no reason
* Crash on oil blob generation on celestials
* Crash when setting gas output of oil blocks to 0 in config
* Fixed horrible experience when generating new chunks
* Reduced "hanging" when first loading into the world
* Fixed burner press GUI offsets being incorrect
* Potentially fixed an issue with journey map where slaked sellafite would sometimes get the wrong color in the minimap
* Finally fixed an issue making electric armor way worse than it should be, as well as preventing the vanilla armor points from working almost entirely
* Fixed pneumatic storage exporter duping filter items when broken
* Re-enabled the GTNH-NEI filter slot integration
* Fixed various GUI title offsets
* Fixed mask man announcement being sent 20 minutes before spawn (therefore never being sent at all) instead of one minute as intended
* Fixed old BAT9000 recycling
* Fixed crash in the controls menu when two keybind categories share the same localized name
* Fixed Zombies & Skeletons from flickering with fire when exposed to the sun while immune to fire (Wither Skeletons)
* Fixed held block being placed when not sneaking when opening the cable diode's GUI
* Fixed an issue where the diesel generator's fuel capacity is the original 4,000mB instead of the intended new 16,000mB
  * This means that explosive barrels and universal barrels can now be loaded into the diesel generator
* Fixed RoR terminal's `set` command not working
* Fixed a longstanding issue where the transparent part of beams from tile entity models would often have incorrect render order, sometimes rendering things behind them invisible
  * This also fixes the same phenomenon for other types of beams, such as those from hitscan laser and tesla weapons
* Fixed some issues regarding the new crane structure
* Fixed skeletonizer ashes floating over the floor after landing
* Fixed backface rendering of the capacitor frames when inserted in the battery socket
* Fixed crash caused by crafting in the backpack GUI



**Changed**
* Updated main menu and loading screen backgrounds
* Removed Lan UPnP due to high instability
* Removed Village Names
  * Byee
* Fully reworked ExNihilo loot tables
  * Removed all default ExNihilo ore gravel/sand/dust sieve drops
  * Sieve now drops bedrock ore fragments instead
  * Added Duna sands sieve support (for Martian mode)
  * Added ender gravel drops (Stardust, End Powder, Tikite, Cobalt/Niobium dust)
  * Added Duna Cobble hammer recipe to gravel (for Martian mode)
  * Sieve seed drops now use AgriCraft seeds (potato, carrot, sugar cane, cactus) instead of ExNihilo seeds
* Dev/contributor update - cleaned up .gitignore
* Changed default render distance from 32 to 12 chunks
    * To speed up world loading and not scare yall people
* Updated chinese localization
* Updated Portuguese localization
* Watz powerplant now has OC and RoR integration
* The automatic thresher now has a fluid port on the bottom as well
* The foundry basins and outlet filters now use the properly translated name instead of the internal name for the material
* Removed config for new bedrock ores
  * New ores are the default anyway and old bedrock ores are now properly deprecated
  * Existing setups will continue to work for now
  * Old bedrock ore items still exist but are no longer listed in the creative tab
* Removed recipe for the small single block steam turbine
  * We have steam engines and industrial turbines are really not that expensive
  * "oh no, i have to build an actually good looking setup now if i want to build a zirnox!" yeah you do
* Updated light brick texture
* The maximum character limit on RoR channels is now the same for all RoR devices, being 15
  * This does not include special RoR interactive devices that don't use GUI text fields like the RoR terminal or the AUTOCAL units
* Pile output rods like the bred uranium and the plutonium rods can no longer be dismantled using the anvil, the PUREX is now mandatory
* If too many conveyor item entities intersect with one another, they explode
  * The conveyor belt the items were on is broken, preventing further item buildup
* Items that leave the covneyor belt, usually by trying to enter a full inserter, now have a shortened lifespan of 1 minute instead of 5
* Base steam production per consumed heat has been increased by 50% on the ZIRNOX
* Both radioisotope cell variants have been finally removed after being deprecated for a while
* Selfchargers now have a tooltip explaining the hazards of using them in a battery socket
* The alternate recipe for the assembler in the assembler now uses integrated circuits instead of analog ones
* Added an alternate chemical plant recipe that uses a smaller selection of items and ICs instead of ACs
* Flashgold and flashlead are now made in the PUREX instead of the crafting table
  * The flashgold recipe now yields two billets instead of one
* Slightly changed the HSS ingot and plate textures to not look identical to steel except slightly greenish
* The AUTOCAL's buffer is now limited to 256 characters instead of being infinite
* Increased the blast furnace's fuel buffer by 50%, allowing coke blocks to be used
* If an RoR controller tries to parse an integer, but the supplied string represents a decimal, instead of canceling the operation, the system will now interpret decimals and round them to be integers
  * This means that the AUTOCAL can now send RoR commands using calculated values directly without the use of `round` or `evalr`
* Assembly machines and chemical plants now support Redstone-over-Radio
  * Active state (0 or 1), progress (0-100) and current recipe (internal name) can now be read
  * The recipe can be set using a controller
  * Do note that setting a recipe that needs a blueprint without that blueprint will not work
  * RoR set recipes cause the assembler to go into low power mode, making it run at only 25% speed (visible through the blue progress bar)
  * The speed penalty is removed as soon as a recipe is assigned manually again
* Assembly factories, chemical factories, PUREX and plasma forges can now be read (but not configured) using Redstone-over-Radio
* Fusion reactor vessels can now be read and configured using RoR
  * Unlike assemblers and chemplants, remote recipe configuration does not cause a speed penalty
* The AUTOCAL's script interpreter now runs MS-ES v1.1 (First Extended Instruction Set)
  * Allows the use of a global stack, similar to the buffer which can hold 256 values
  * Allows splitting of strings and counting of string fragments
  * Adds substring operations
  * Polling for receiving only fresh RoR signals
  * A command for writing the world time to the buffer, allowing for more precise timers
* All RoR values/commands are now case-insensitive
* Changed mask man spawning rules
  * Instead of random checks and chances, if a player meets the requirements, a timer starts (timer exists per player)
  * Once this timer runs out, mask man spawns
  * Should the timer run out but the spawn be unsuccessful (spawn restrictions) then a different message appears
  * If the requirements are no longer met, the timer immediately resets, making it easier to avoid him deliberately
  * The default spawn timer is now 20 minutes, making it easier to spawn him deliberately
  * One minute before the timer ends, a warning message appears
* Changed normal mode control unit recipes
  * Standard control units now use rubber instead of speed I upgrades
  * Advanced control units now use hardplastics instead of speed III upgrades
  * Quantum computers now use speed III upgrades instead of overdrive I
* Updated electric furnace, burner press and electric press GUIs
* The RoR terminal can now accept RoR controller input, allowing the terminal screen to be written directly and RoR terminal commands to be executed via incoming RoR signals
  * The last part seems redundant, why would you need to send RoR by sending RoR? The answer being, the terminal can be toggled to send polling signals, which will run independently of the source
  * For AUTOCALs, this means that they can now send polling signals "in parallel", i.e. independently of the code that actually runs on said AUTOCAL, by simply toggling polling on a terminal
  * Since AUTOCALs now have a proper screen to output things with, it is now theoretically possible to program a functioning arcade machine (with terminal graphics)
* Glyphids will now try to target new players every 5 seconds if their current target is farther away than any other potential target
  * 1/3 of glyphids do not have this behavior, this means that larger groups of glyphids cannot be trapped indefinitely by triggering target changes on purpose
* Pedestal blocks fitted with charms now have a 200x200 block square area around them where the charm effect of repelling meteors applies to all players
* Pedestal blocks fitted with golden defusers now have a 50x50 block area around them where creepers are automatically defused
* Disabled GTNH-NEI filter drag functionality because GTNH-NEI breaks the pattern slots of the new pneumatics stuff and the person who added it originally was too bald to fix it despite being told multiple times
  * 70k it's 70k and he's bald bald haha bald head
  * baldie baldie hahaha he bald he has the no of hair
  * follically challenged baldie bald head
* Increased flue gas burn value from 10kTU to 25kTU
* Added criteria for secret overdrive mode??
* Improved errors for station propulsion
* Saltleaf is now edible (Laythe start approaches)
* Improved Angelica shader compat (for those using Bountiful Stars)
* Removed water particles mod
  * It was lagging so much
* Removed camera tilt and UI pop-up animation
  * It was giving people motion sickness
  * You can enable it back in An Extra Touch config
* Made Martian mode *actually* playable by fixing Ex Nihilo
  * Duna Cobble can be broken down to gravel now
  * Duna sand can be sieved now
* Collapsed all the forge microblocks
  * They were so annoying weren't they?
* Removed "Three Hundred Caps" questline
  * I can just modify Bobmazon's code bruh
* There are x4 as much limestone underground
* Updated russian, chinese, portugese and french localization
* Updated the trinitite ore textures
  * The ore spots are now smaller and more shard-like
  * Each trinitite ore block now has four randomized texture variants
* Trinitite ores now spawn fewer particles
* The radiation effect caused by walking on trinitite ore is now much shorter but more intense to compensate
* Finally removed the old terra drill items after being deprecated for almost a year
* The electrolysis machine now instantly annihilates all buffered fluid output when changing recipe
  * This is a straight downgrade but people for some reason wanted it so sure why not
* Cable diodes now have a GUI for configuration instead of requiring tools
  * The throughput can now be configured more precisely instead of increments of powers of 10
* The magnetic storage barrel now uses BSCCO and has a new texture
* Hunger depletes 2 times slower
  * Yeah, yeah, I know
* Gas bubble spawn rate doubled, explosive gas bubbles now spawn
* Enabled chisel cast iron block variant
* Questbook: Removed "Buy Advanced Alloy", "Sell Dust" and "Buy Technetium Steel" Bobmazon quests
* Questbook: Renamed "Smokestack" to "Pollution and Smokestack"
* Questbook: Rewrote Hammer, Sieve and Flint Tools quest descriptions
* Questbook: Updated "Time to Kill (Chicken)" and "Touch Grass" final quest descriptions
* Questbook: Updated ore generation quest to note the online spreadsheet is deprecated
* Questbook: Added optional Heavy Sieve task to the Sieve quest
* Questbook: Fixed typo in "FEATURE" quest description
* Removed ProjectRed copper ingot and copper ore from NEI (Et Futurum copper takes priority)
* Added flint recipe change: 2x2 shaped recipe now yields 2 flint instead of 3 gravel -> 1 flint
* Added iron door crafting recipe (removed default, added custom 2x3 ingot recipe)
* BogoSorter: Added AE2 tooltip integration, drop-off highlight style options, hotbar drop-off option
* Horses float on the water now
* End update
  * Confirmed
* Updated all oil well GUI textures
  * There's now only two upgrade slots instead of three
* All legacy pixel gauges have been replaced with smooth ones (watz, ZIRNOX, CCGT) making them more accurate
* Updated the diesel generator's GUI
  * The diesel gen now also has an in-GUI button for turning it on and off like the industrial combustion engine
* MS-ESv1.1 `split` instruction now supports variable substitution
* Multiblocks now display a wireframe preview of how much space they take up
  * This preview is green if it can be placed and red if it can not
  * On some machines, this preview might not be perfect, but the check on whether it can be placed should always be accurate
  * This makes it easier to anticipate how much space a machine takes up, as well as lining up large parts like fusion reactor components which were notoriously hard to place down right
* Updated the small pylon model
  * The small pylon now has a steel variant
* Items in the battery socket which previously didn't show up in the socket's model are now rendered
* Reduced the cost for the heavy stirling engine
* Removed the satellite interface item for being basically completely useless
* Updated the satellite ID manager texture and recipe
* Satellite ID chips are now soldered
* Overhauled all satellites
  * Satellites now use one item ID with meta, most satellites now have new textures
  * Satellites can now be connected to ground stations and controlled with RoR commands
  * Satellites now have manual pages detailing the commands
  * The recipes have been updated, they now use mostly common parts and no longer feature the satellite base and heads items which are welded together
  * Legacy satellites still function and can still be launched
* The PWR's coolant levels can now be read with RoR
* Soyuz and related assembly recipes now use 25kHE/t instead of just 100
* Updated the GUI textures for the refinery, various particle accelerator parts and a few other machines
* Glyphid hive blocks now use state-of-the-fart flesh sounds
* Mun/Minmus sulfuric non-metal bedrock is now lapis
* Removed percipitation stat from the InGameInfo
  * Useless broken shit
* Removed AgriCraft's irrigation systems to fix weird rendering artifacts
* Locked questlines are hidden by default
* Removed instant night skip
* Difficulty does not affect hunger rate anymore
* Reduced the average number of generations from wild to farm animals to 2 instead of 4
* Increased the amount of structures
* RTG/Betavoltaic fuel power scales down as it decays
* Glowing mycelium spreads now
* Hopefully optimized some shit including ore generation



[Full Changelog](https://github.com/Nuclear-Tech-New-Horizons/NTNH/compare/2.11.1...2.12.0)

## Download
[GitGub](https://github.com/Nuclear-Tech-New-Horizons/NTNH/releases/tag/2.12.0)
[CurseForge](https://www.curseforge.com/minecraft/modpacks/ntnewhorizons)
[Website](https://ntnewhorizons.com/download)
[Technic](https://www.technicpack.net/modpack/nuclear-tech-new-horizons)
