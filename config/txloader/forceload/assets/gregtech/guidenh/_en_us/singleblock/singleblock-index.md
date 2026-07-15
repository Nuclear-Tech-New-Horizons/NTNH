---
navigation:
  title: "Singleblock Machines"
  icon: gregtech:gt.blockmachines:106
  parent: /index.md
  position: 10
---

# Singleblock Machines

Singleblock machines consist of only one block. Their uses are narrow, and they are always slower or less efficient than the equivalent [multiblock machine](../multiblocks/multiblocks-index.md), if one exists. They cannot be upgraded, except for high-pressure steam machines, so replacing them always means crafting a new machine. Even so, they are essential for early progression, and some remain useful through the entire game. By EV through IV, once most [multiblock machines](../multiblocks/multiblocks-index.md) become available, players gradually transition away from singleblocks.

# Machine Facing

Every singleblock machine, whether steam or electric, has two special faces and four ordinary faces. You can change its facing with <ItemLink id="gregtech:gt.metatool.01:16" showIcon="left" />, using the GregTech 3x3 wrench rules.

- **Front face**: the most visually distinctive face, and it can only point horizontally. It cannot input or output items, fluids, steam, or power at all.
  - Hold a wrench, then <kbd>Shift</kbd> + <kbd>Right-click</kbd> a side face to change the front face direction.
- **Output face**: the face with a small white-framed port on a black background.
  - For steam machines, this is the exhaust vent that releases spent steam pressure.
  - For electric machines, this is the item output face used to eject products.
  - Hold a wrench, then <kbd>Right-click</kbd> a side face to change the output face.
- **All other faces**: the remaining four faces are equivalent and can input or output items, fluids, steam, or power.

# Steam Machines

Singleblock steam machines run on steam and are used heavily during the steam age. Steam is produced by boilers. Every standard version has a corresponding high-pressure version made with steel.

Steam machines do not explode, are resistant to rain and snow, and can be placed outdoors safely.

## Categories

There are only six singleblock steam machines, each with a standard and a high-pressure version:

| Function | Standard | High Pressure |
|----------|----------|---------------|
| Furnace | <ItemLink id="gregtech:gt.blockmachines:103" showIcon="left" /> | <ItemLink id="gregtech:gt.blockmachines:104" showIcon="left" /> |
| Alloy Smelter | <ItemLink id="gregtech:gt.blockmachines:118" showIcon="left" /> | <ItemLink id="gregtech:gt.blockmachines:119" showIcon="left" /> |
| Compressor | <ItemLink id="gregtech:gt.blockmachines:115" showIcon="left" /> | <ItemLink id="gregtech:gt.blockmachines:116" showIcon="left" /> |
| Macerator | <ItemLink id="gregtech:gt.blockmachines:106" showIcon="left" /> | <ItemLink id="gregtech:gt.blockmachines:107" showIcon="left" /> |
| Extractor | <ItemLink id="gregtech:gt.blockmachines:109" showIcon="left" /> | <ItemLink id="gregtech:gt.blockmachines:110" showIcon="left" /> |
| Forge Hammer | <ItemLink id="gregtech:gt.blockmachines:112" showIcon="left" /> | <ItemLink id="gregtech:gt.blockmachines:113" showIcon="left" /> |

## Graphical User Interface

- **Steam gauge**: top left, showing the internal steam buffer. All steam machines have a 16,000 L internal buffer.
- **Storage slots**: the two bottom slots, with no special behavior.
- **Mute button**: top right. You can also toggle it by <kbd>Right-clicking</kbd> the machine with <ItemLink id="gregtech:gt.metatool.01:12" showIcon="left" />.

Steam machines do not support auto-output.

## Power

The machine accepts steam from the four faces that are neither the front face nor the exhaust face, filling its internal buffer. It runs LV-tier recipes at a ratio of 4 L steam = 1 EU, which is 50% efficiency. Bronze machines take twice the normal duration of an LV recipe.

| Machine Type | Steam Cost (L/t) | Duration |
|--------------|------------|----------|
| Steam machine | 2x | 2x |
| High-pressure steam machine | 4x | 1x |

The high-pressure version consumes steam at twice the rate and halves recipe duration, effectively performing one 2/2 lossless [overclock](../tierskipping-overcloking-parallels/overclocking.md).

You can pause or resume the machine by <kbd>Right-clicking</kbd> it with <ItemLink id="gregtech:gt.metatool.01:14" showIcon="left" />.

## Item Transport and Exhaust

The four faces other than the front and exhaust faces can input or output. Steam machines cannot eject items on their own, so you need hoppers or another transport system to extract products.

The exhaust vent is the output face of a steam machine. After each recipe completes, the machine must vent its exhaust through that face. If the vent is blocked, the machine cannot finish the recipe. Standing next to the vent when a recipe completes deals 3.5 hearts of damage to the player.

## Failures

- Exhaust vent blocked -> a failure icon appears, and the machine does not continue until the exhaust is released.
- Steam buffer empty -> a failure icon appears. If the steam buffer refills shortly afterward, the machine retries the recipe. If your steam supply is fundamentally insufficient, the machine may repeatedly fail, lose all progress, and waste steam.

# Electric Machines

> [!WARNING]
> Singleblock electric machines can explode. Read the [explosions](#explosions) section carefully.

Singleblock electric machines are the first must-craft machines at LV. They have specific uses, fixed voltage tiers, and must be fully replaced when upgraded.

## Graphical User Interface

The electric machine GUI is more complex than the steam one:

- **Item input/output slots**: the light-colored slots to the left and right of the progress bar.
- **Fluid input/output slots**: the dark slots beneath the item slots. You can interact with them directly while holding containers: <kbd>Left-click</kbd> fills or drains all matching fluid containers, while <kbd>Right-click</kbd> processes only one container.
- **Power slot**: accepts same-voltage tools or batteries. When the internal buffer is full enough it charges them; when the buffer is low it can draw from them. It can also be used as a normal storage slot.
- **Data slot**: only appears on special machines like scanners, printers, and copiers.
- **Integrated circuit slot**: bottom right. Scroll the <kbd>mouse wheel</kbd> or click to raise or lower the circuit number; <kbd>Shift</kbd> + <kbd>Left-click</kbd> opens the selector GUI; <kbd>Shift</kbd> + <kbd>Right-click</kbd> clears it.
- **Auto-output toggles**: the two buttons in the bottom left. Once enabled, the machine can eject items or fluids. Steam machines do not have this feature.
- **Mute button**: top right. You can also toggle it by <kbd>Right-clicking</kbd> the machine with <ItemLink id="gregtech:gt.metatool.01:12" showIcon="left" />.

## Power

Electric machines run on EU. They have a small internal EU buffer equal to 64 times the machine voltage in EU, which is the amount consumed by 1A at standard voltage over 3.2 seconds. For example, an LV machine stores 2,048 EU, while an HV machine stores 32,768 EU.

Machines continuously request energy packets from the local power network to fill their buffer. Their maximum input current is:

$$\text{Maximum Input Current} = \left\lfloor\frac{\text{Recipe Rated Power} \times 2}{\text{Machine Operating Voltage}}\right\rfloor + 1 \text{ A}$$

- Most singleblock machines: 2A maximum.
- Thermal Centrifuge: 4A maximum.
- Arc Furnace: 6A maximum.

You can pause or resume the machine by <kbd>Right-clicking</kbd> it with <ItemLink id="gregtech:gt.metatool.01:14" showIcon="left" />.

## Overclocking

Singleblock electric machines use 4/2 imperfect overclocks: each overclock multiplies power draw by 4 and halves recipe time, so total energy doubles. The singleblock Mass Fabricator is the only exception, using 2/2 lossless overclocks.

See **[Overclocking](../tierskipping-overcloking-parallels/overclocking.md)** for the full system.

## Logistics

All five faces other than the front face can output. The four faces that are neither the front nor the output face can input.

- **Auto-output**: enable the auto-output toggle in the GUI, and the output face can eject items or fluids.
- **Allow input from output face**: hold <ItemLink id="gregtech:gt.metatool.01:22" showIcon="left" /> and <kbd>Right-click</kbd> the front face or output face to toggle it.
- **Input filtering**: hold a screwdriver and <kbd>Shift</kbd> + <kbd>Right-click</kbd> the front face or output face to enable it. When enabled, input items are filtered by the recipe map.
- **Input stacking**: hold <ItemLink id="Forestry:solderingIron" showIcon="left" /> and <kbd>Shift</kbd> + <kbd>Right-click</kbd> the front face to enable it, allowing multiple item types in the same slot.

## Failures

When the internal EU buffer runs dry, the machine fails. Recipe progress is lost, but the input state is preserved. If the buffer refills shortly afterward, the machine retries the recipe. If the power supply itself is insufficient, the machine may repeatedly fail, lose progress, and waste EU.

## Explosions

Singleblock electric machines can explode in the following situations:

- **Overvoltage**: if they receive an energy packet above their own voltage, they explode immediately. For example, feeding MV packets into an LV machine.
- **Fire**: if the machine stores EU greater than 20% of capacity, it checks once every tick with a 1/1000 chance. If any side is on fire, the machine explodes.
- **Rain or snow**: if the machine stores EU, it also checks once every tick with a 1/1000 chance. During rain, it has a 1/10 chance to explode immediately and a 9/10 chance to catch fire; during thunderstorms, it has a 1/3 chance to explode immediately.
- An explosion releases all stored EU to every connected wire or adjacent machine as IV-tier power, which can cause chain explosions or overload nearby wires.
- Powered hatches on [multiblock machines](../multiblocks/multiblocks-index.md) can also catch fire or explode for the same reasons.
