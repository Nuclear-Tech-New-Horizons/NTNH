# 2.10.0 Release

## What's changed?
**Added**
- New background images for the loading screen and the main menu
- Lobotomy
   └ Do you know who else got dementia?
- Freight elevator
   └ A 3x3 hydraulic platform
   └ Can be stacked
   └ Only supports two floors, the top and the bottom
   └ Hopefully not terribly janky
   


**Fixed**
- Fixed various quiks related to clouds, water and textures when using shaders
- Fixed uncrafting of the nickel RTG pellet not respecting item metadata
- Tile entities that use fluids should now force the chunk they are in to be written to disk when unloaded
   └ This should fix the issue where systems that constantly move fluids around may not properly save to disk
- Fixed dispensed dynamites being considered impact grenades for some reason
- Fixed RBMK flux detection with RoR and OC not working
- Moved the soyuz launcher core component recipe to the assembler, fixing an issue where the component recipe is not available in 528 mode
- Fixed crash caused by using the copy tool on uncolored RBMK control rods
- Fixed turbine blade smelting in the crucible only yielding 2 ingots worth of material
- Fixed cluster missiles never properly splitting before impact
   └ The final splitting height depends on the trajectory's arc, cluster missiles are therefore not suitable for very long distances
- Fixed an issue where 40mm grenades that impact entities within three ticks of spawning would never detonate
- Fixed broken foundry scrap name and tooltip
- Finally fixed the rotary furnace's steam going into the negatives because 70k was too bald to do it
- Fixed magnet and HUD toggle popups being incorrect half the time
- Fixed crash caused by connecting NONE type pipe anchors
- Fixed color inconsistency with the bedrock ore density scanner
- HUD and Magnet notifications always showing ON even when turning OFF
- Eclipses do not affect solar panels or solar boilers
- MCHeli third person broken due to rocket third person changes
- Rocket launch pad does not connect with OC cables
- Lodestar renders in the wrong position with broken alpha
- Fixed missing Enf Portal craft
- Fixed some issues with shaders
- Ore generation fixes
- Updated fensu trophy



**Changed**
- BIG early game quest rework (there will be more in future)
- Disabled armor sounds while walking
   └ Can be enabled back in anextratouch.cfg
- Main menu backgrounds are now randomized
- Updated the website link in the main menu
- Replaced CoroUtil Library mod with BetterCrashes mod
- Updated russian and chinese localization
- Oil bubbles are now 3x more common in deserts (biomes with a temperature value of 2 and rainfall of 0)
- Oil bubbles now have a 50% chance of spawning a surface indicator (similar to bedrock oil but still distinct)
- Oil deposits will never drop themselves, they always produce tar when mined
- Any tar type can now be turned into bitumen in a mixer (with worse efficiency compared to a liquefactor)
- RoR levers and indicator lights now have OpenComputers integration
- Alexandrite dropped with fortune is now capped at 2 gems per ore
- Added a config option for decreasing the soot requirement for skeleton guns (or rather, for the calculation, this number is added to the actual soot value, simulating a higher value)
- Radioisotope cells and PT cells are now deprecated, and can no longer be crafted
   └ Existing cells will continue to work for now
- If two pipe anchors are connected, one having a type set and one still being "none", instead of erroring, the "none" pipe will assume the other one's type
- Self-chargers in battery sockets now produce unreliable power output which constantly fluctuates
- Self-chargers in battery sockets now cause static discharges in regular intervals
- Added more RoR functionality to the boilers, industrial combustion engine, heat exchangers, fluid burners, CCGT and ZIRNOX
- Turrets can now be toggled and configured with RoR
- Artillery turrets can now have targets enqueued with RoR
- The RBMK numeric displays can now be controlled via OpenComputers, and come with built-in settings for shortening numbers and displaying leading zeroes
- The industrial steam turbine now has OpenComputers integration
- The RBMK fuel crane can now report stats for the loaded fuel rod to OpenComputers
- The RBMK console can now detect and send all stored RBMK fuel rods in storage columns via OpenComputers
- Crates now open when right-clicked by default, holding shift is required to place them down
- The automatic buzzsaw can now burn coal tar creosote
- The old cluster type effect used by MPBs and cluster missiles now use the new generic projectile system with actual bomblet models
- Removed the legacy fusion reactor entirely
- Changed neutron reflectors
   └ Reflectors can no longer be made in the blast furnace
   └ Rather, they are welded from HSS and tungsten carbide
   └ Tungsten carbide is made in the pyrolysis oven using syngas and tungsten powder
   └ Many recipes that used to use neutron reflectors now use alternative materials like HSS plates or weapon steel
   └ This effectively means that neutron reflectors are post oil 3
   └ PWR neutron reflectors have an alternate recipe allowing them to be made with weaponsteel
- Removed legacy battery items and selfchargers
- Added more QMAW pages
- Expensive mode plastic sheets now only use rubber instead of rubber or latex
- Updated the texture on the fop thing
- RoR info on tanks now displays the (0-3) value range of the mode setting
- Spike, tesla and microwave damage have now been categorized as physical, energy and energy respectively, making armors resistant against them
- Fau and DNT armor now have explicit physical resistances, making them harder to pierce
- The rubber recipe now yields two rubber per sulfur used
- Foundry scraps now show their material in the name instead of the description
- Bedrock ore minimum tier and bore fluid is no longer fixed at (1/NONE), rather it scales with the quality of the bedrock ore at that spot
   └ The bedrock ore density scanner will try to predict the required tier and bore fluid at the current spot, and show it as part of the HUD
   └ This only applies to newly generated bedrock ore patches
- Reduced industrial turbine cost from 3 titanium steam turbine blades to 2
- Motors now have yet another alternate recipe in the arc welder, using steel plates but substituting the coils with a dense red copper wires
- Dense red copper wires can now be welded
- The old factory hull blocks have been deprecated
- The singularity screwdriver, being with no purpose ever since the fwatz got removed, has been removed as well
- Desh motors now use dense golden wires instead of golden ring coils
- Added "desh from cracked oil" recipe
   └ Default recipe, doesn't need a blueprint
   └ Uses cracked light oil instead of regular light oil (500mB at 1 PU, or 2.5x more than the standard recipe, plus one compressor)
   └ Uses 100mB of mercury instead of 200mB
- All standard coils now have alternate recipes, using a steel core instead of an iron one
- Reduced steam demand of the rotary furnace's hotter fuels by a bit
- The acidizer now has a sound loop (chemplant sound at 75% pitch)
- Updated some bomb part recipes, mainly to make use of the new neutron reflectors and some more modern materials (why did ivy mike coolers still use iron?)
- Updated the fat man igniter and gadget wiring icons
- The cape items, which haven't actually been used by anyone ever, are now deprecated. Existing capes will still work, but the items are now unobtainable
- Some long deprecated melee weapons have now been properly removed
- Added OC compat to the RBMK coolers
- Refueling Station now shows the currently assigned fluid
- Earth heavy bedrock solvent fraction is now zinc
- Bedrock ore density scanner will show planet specific ore extraction fluid requirements
- Certain planet acid requirements will override regular bedrock ore extraction requirements
- Gas, brine, and Tekto oil blocks now drop empty versions of themselves when mined
- Demeter is affixed
- No more volcanos
- Disabled Exploration Module in Project Red
- Replaced Rails of War with Zora no Densha
- Increased P2P packet rate from 50 to 1024!
- Increased the spawn rate of all ores, and made them bigger in size
   


[Full Changelog](https://github.com/Nuclear-Tech-New-Horizons/NTNH/compare/2.9.0...2.10.0)

## Download
[GitGub](https://github.com/Nuclear-Tech-New-Horizons/NTNH/releases/tag/2.10.0)
