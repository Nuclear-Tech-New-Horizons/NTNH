---
navigation:
  title: "Multiblock Machines"
  icon: structurelib:item.structurelib.constructableTrigger
  parent: /index.md
  position: 9
categories:
  - Machines
---

# Multiblock Machines

**Multiblock machines** are machines built from multiple blocks. Their size ranges from compact <ItemLink id="gregtech:gt.blockmachines:1169" showIcon="left" />s to enormous <ItemLink id="gregtech:gt.blockmachines:15411" showIcon="left" />s. GregTech multiblocks always have a **controller block**, usually serve a specific purpose, and are always faster or more efficient than the corresponding [singleblock machine](../singleblock/index.md), if one exists. Unlike [singleblock machines](../singleblock/index.md), which can only [overclock](../tierskipping-overcloking-parallels/overclocking.md), multiblocks can also use **[tier skipping](../tierskipping-overcloking-parallels/tierskipping.md)** and **[parallels](../tierskipping-overcloking-parallels/parallels.md)**.

Although most multiblocks have unique casings and structures, their item, fluid, and power I/O is almost universal through **functional hatches**. You can use <ItemLink id="structurelib:item.structurelib.constructableTrigger" showIcon="left" /> to preview and quickly build multiblock structures.

# Categories

## Steam Machines

There are only seven steam multiblocks:
<ItemLink id="gregtech:gt.blockmachines:31041" showIcon="left" />,
<ItemLink id="gregtech:gt.blockmachines:31078" showIcon="left" />,
<ItemLink id="gregtech:gt.blockmachines:31080" showIcon="left" />,
<ItemLink id="gregtech:gt.blockmachines:31082" showIcon="left" />,
<ItemLink id="gregtech:gt.blockmachines:31083" showIcon="left" />,
<ItemLink id="gregtech:gt.blockmachines:31084" showIcon="left" />, and
<ItemLink id="gregtech:gt.blockmachines:31086" showIcon="left" />.
They can run Centrifuge, Mixer, and Ore Washing Plant recipes that steam singleblocks cannot.

- Use **Steam Hatches** to accept steam, with 64,000 L of buffer per hatch.
- Do not require maintenance.
- Run steam recipes at a fixed 125% speed and 62.5% steam cost.
- Have a fixed maximum of 8 parallels.

## Electric Machines

Electric multiblocks come in many forms and use **Energy Hatches** to receive power. They require maintenance, but you can upgrade them by replacing their Energy Hatches with higher-tier ones.

# Structure

## Controller Block

GregTech multiblocks always have a controller block, and the front face of the controller determines the orientation of the whole structure.

- <ItemLink id="gregtech:gt.metatool.01:16" showIcon="left" /><kbd>Right-click</kbd> the front face -> rotate the structure.
- <ItemLink id="gregtech:gt.metatool.01:16" showIcon="left" /><kbd>Right-click</kbd> another face (using the GT 3x3 wrench rules) -> change the controller facing.
- <ItemLink id="gregtech:gt.metatool.01:16" showIcon="left" /> <kbd>Shift</kbd> + <kbd>Right-click</kbd> -> mirror the structure.

Some controllers can face up or down. A few machines, such as <ItemLink id="gregtech:gt.blockmachines:1126" showIcon="left" />, can only face horizontally.

## Previewing and Building

Use <ItemLink id="structurelib:item.structurelib.constructableTrigger" showIcon="left" />:

- <kbd>Right-click</kbd> the controller -> preview the hologram.
- <kbd>Shift</kbd> + hold <kbd>Right-click</kbd> on the controller -> automatically place matching blocks from your inventory.
- <kbd>Right-click</kbd> in the air -> configure the subchannel.

## Hatches

Most multiblocks use common functional hatches for I/O. Hatches come in tiers (ULV to UHV+), and each tier provides different capacity or throughput.

| Hatch Type | Purpose |
|------------|---------|
| Input Bus / Output Bus | Items |
| Input Hatch / Output Hatch | Fluids |
| Energy Hatch / Dynamo Hatch | Power |
| Steam Hatch | Steam (steam multiblocks only) |
| Maintenance Hatch | Fix maintenance problems |
| Muffler Hatch | Vent pollution |

As long as the structure still meets its minimum casing count, you can usually place as many hatches as you want, though Maintenance Hatches are usually limited to one. Cheap hatches can often replace expensive structure blocks.

## Sharing

GregTech multiblocks generally allow **wallsharing**: two machines can share structure blocks and hatches on the same wall.

- **Maintenance Hatches**, **Input Buses**, **Input Hatches**, and **Muffler Hatches** can be shared.
- Be careful when sharing **Output Buses** or **Output Hatches**, because overflow can void outputs.
- Be careful when sharing **Energy Hatches** as well: usually one Energy Hatch should not be shared by more than two machines, and Energy Hatches used for dual-hatch tier skipping should not be shared.

## Structure Checks

Multiblocks do not continuously re-check whether their structure is complete:

- When the controller is first placed -> the structure is checked after 100 ticks.
- When a nearby block updates -> a 50-tick countdown starts, and each new update resets that countdown.
- When you press the "Update Structure Check" button in the GUI -> the structure is checked after 1 tick.

Breaking and restoring the structure inside that delay window enables **hot-swapping**. A Matter Manipulator (MK I or above) can finish such hot-swaps within 1 tick.

# Graphical User Interface

<kbd>Right-click</kbd> the controller block to open the GUI. Most machines use the standard GregTech GUI. Some late-game machines from ZPM onward use the TecTech-style GUI.

## GregTech-Style GUI

The right-side buttons provide the core toggles:

| Button | Function |
|--------|----------|
| Power panel | Opens parallel configuration and powerfail event settings |
| Update structure check | Forces a structure check |
| Power switch | Turns the machine on or off; if turned off, the current recipe is allowed to finish |

The middle-left area provides at least four configuration toggles, though not every machine allows all of them:

- **Void Mode**: void nothing / items only / fluids only / both.
- **Input Separation**: prevents items from different Input Buses from being used in the same recipe.
- **Batch Mode**: combines repeated copies of the same recipe to reduce recipe checks and TPS cost.
- **Lock Recipe**: prevents the machine from running other recipes.

Tool shortcuts (<kbd>Right-click</kbd> the controller, consumes durability):

- <ItemLink id="gregtech:gt.metatool.01:16" showIcon="left" /> -> rotate the structure.
- <ItemLink id="gregtech:gt.metatool.01:22" showIcon="left" /> -> toggle input separation / switch some machine modes.
- <ItemLink id="gregtech:gt.metatool.01:26" showIcon="left" /> -> toggle batch mode.
- <ItemLink id="gregtech:gt.metatool.01:14" showIcon="left" /> -> power on/off.
- <ItemLink id="gregtech:gt.metatool.01:12" showIcon="left" /> -> mute/unmute.

## TecTech-Style GUI

Only a few ZPM-and-later machines use it, such as <ItemLink id="gregtech:gt.blockmachines:15300" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:15311" showIcon="left" />, and <ItemLink id="gregtech:gt.blockmachines:14003" showIcon="left" />.

Its defining feature is the indicator light system:
- Flashing blue: parameter too low.
- Green: normal.
- Flashing orange: parameter too high.
- The light for a key parameter can usually be left-clicked to change the setting.

TecTech machines **always void on overflow**, so the safe-void button has no practical effect. Parameter storage cards can copy the settings from one TecTech machine to another.

# Maintenance

## Maintenance Problems

Only multiblocks whose structure requires <ItemLink id="gregtech:gt.blockmachines:90" showIcon="left" /> need maintenance. When the controller is placed, all six maintenance problems are present by default and must be fixed before the machine can run.

| Problem | Tool |
|---------|------|
| "A pipe is loose." | Wrench |
| "Some screws are loose." | Screwdriver |
| "Something is stuck." | Soft Mallet |
| "Plates are bent." | Hard Hammer |
| "Something does not belong here." | Crowbar |
| "The circuit has shorted." | Soldering Iron (costs 10k EU + 1 soldering material) |

**How they appear**: every 1000 ticks of continuous runtime, there is a 1/6000 chance to generate one random maintenance problem. On average, that is about one problem every 83.3 hours.

**Penalty**: each maintenance problem increases power usage by 10%. If all six are present, the machine shuts down. Some machines have special penalties, such as <ItemLink id="gregtech:gt.blockmachines:32013" showIcon="left" />, which immediately drops its kinetic energy to zero when a maintenance problem appears.

## Repair Methods

| Stage | Method |
|-------|--------|
| LV | <kbd>Right-click</kbd> the Maintenance Hatch with a Toolbox containing all required tools and solder |
| MV | Repair it with FAL-84 Reinforced Duct Tape |
| HV | Wand Focus: Maintenance (consumes vis) |
| IV | Drone Downlink Module plus Drone Centre for bulk management |
| LuV | Auto Maintenance Hatch (consumes materials) |
| UV | Debug Maintenance Hatch (free automatic maintenance) |

You can pre-maintain a Maintenance Hatch once. After the machine reads that state, it clears the hatch's active maintenance state and then stores one extra buffered maintenance state. Later, when a maintenance problem appears, the hatch automatically consumes one buffered maintenance state to fix it.

# Recipe Detection

When a multiblock is powered on, it scans all of its hatches to look for a matching recipe. The key concept here is the **input group**: materials that are not in the same input group will never be combined into one recipe.

## Input Separation

When input separation is enabled, each Input Bus together with all Input Hatches and the controller's inventory slots forms an independent input group. This is very useful for preventing materials in different buses from accidentally mixing into an unintended recipe.

## Recipe Priority

Recipe checks across different input groups follow a controllable priority order.
1. **Pattern input hatches/buses** (<ItemLink id="gregtech:gt.blockmachines:2715" showIcon="left" /> and <ItemLink id="gregtech:gt.blockmachines:2714" showIcon="left" />) take priority over normal hatches.
2. Normal input hatches and buses that have been **painted**. Following the order shown in the <ItemLink id="gregtech:gt.metaitem.01:32468" showIcon="left" /> GUI, priority decreases from black to white.
3. Input Buses take priority over Input Hatches.
4. Physical position: front to back, top to bottom, left to right.

> [!TIP]
> Painting hatches is one way to control recipe execution order.

# Recipe Execution

## Tier Skipping

See **[Tier Skipping](../tierskipping-overcloking-parallels/tierskipping.md)**.

Using two Energy Hatches of the same tier to provide 4A lets the machine reach the nominal power expected by its voltage tier and run recipes one tier higher. This is called **dual-hatch tier skipping**. The first time you will likely use it is with <ItemLink id="gregtech:gt.blockmachines:1000" showIcon="left" />.

From IV onward, some machines can no longer tier skip, such as <ItemLink id="gregtech:gt.blockmachines:810" showIcon="left" />.

## Parallels

See **[Parallels](../tierskipping-overcloking-parallels/parallels.md)**.

Parallels are the machine's ability to process multiple copies of the same recipe during the same time interval. [Singleblock machines](../singleblock/index.md) cannot do this.

In general, every $$4^n$$ of maximum parallels is roughly equivalent to $$n$$ perfect overclocks in practice. Parallels only apply to the same recipe.

## Overclocking

See **[Overclocking](../tierskipping-overcloking-parallels/overclocking.md)**.

Besides standard 4/2 imperfect overclocks, some multiblocks also support 4/4 perfect overclocks, and some use special overclock rules. Multiblocks can also overclock past 1 tick (1tOC).

Calculation order: parallels first, then overclocks (perfect first, imperfect second).

## Batch Mode

Batch mode combines repeated copies of the same recipe into one large recipe. It **does not provide a time discount and does not add parallels**. Its only purpose is to reduce recipe-check frequency and lower TPS cost.

When batch mode is enabled, the machine tries to stretch recipe duration to 128 ticks. This does not change output per unit time. Steam multiblocks cannot use batch mode.

# Failures

Unlike [singleblock machines](../singleblock/index.md), when a multiblock fails it **fully aborts the recipe and does not return the inputs**.

| Failure | Fix |
|---------|-----|
| "Structure is incomplete." | Check for missing structure blocks |
| "Missing Muffler Hatch, Maintenance Hatch, or similar." | Add the required hatch |
| "Shut down due to machine damage." | Fix all maintenance problems |
| "Recipe requires more power." | Check the number of Energy Hatches and available amperage |
| "Recipe requires higher voltage to start." | Check whether the voltage tier is high enough |
| "Not enough room for item/fluid output." | Add more Output Buses or Output Hatches |
| "Shut down due to lack of energy." | Check the power supply |

When a failure happens, you can use `/powerfails clear` to remove powerfail warning icons in the dimension, or `/sp invite <playerID>` to share powerfail information.

# Explosions

As with [singleblock machines](../singleblock/index.md#explosions), any **energized hatch with an internal EU buffer** on a multiblock can explode in rain or snow. Controller blocks, structure blocks, and hatches that do not buffer power will not explode in rain or snow. Overvolting an Energy Hatch can also cause an explosion.
