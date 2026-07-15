---
navigation:
  title: "Power Generation and Consumption"
  icon: gregtech:gt.blockmachines:1120
  parent: power-index.md
  position: -2
---

# Power Generation and Consumption

# Generation

Generators are machines that convert resources into power, or under special conditions generate power seemingly from nothing.

**Singleblock generators** first store their output in an internal EU buffer (its size is shown in the tooltip), then output up to 1A at the standard voltage of their tier. Singleblock generators produce power on demand: they only consume fuel when there is enough room left in their internal EU buffer. You can feed them fuel without worrying about waste.

**Multiblock generators** have output determined by their exact configuration, while output voltage and current are limited by their Dynamo Hatches. Multiblock generators do not produce power on demand: any energy beyond the internal capacity of the Dynamo Hatches is voided.

# Consumption

> [!WARNING]
> Overvolting a consumer block causes an explosion.

Machines that receive and consume EU are collectively called machines. A machine can only accept energy packets whose voltage is not greater than its maximum input voltage, which is usually the standard voltage of its tier. Overvolting a machine causes it to explode immediately.

Machines can only run recipes whose power requirement is less than or equal to their own rated power. Recipe power is usually at most $$\frac{15}{16}\text{ A}$$ at the standard voltage of the corresponding tier. This special value is called the recipe's standard power.

**[Singleblock machines](../singleblock/index.md)** become available at LV. They first accept energy packets on demand into their internal EU buffer, then continuously consume EU while running recipes. The maximum input current is usually 2A, except for the Thermal Centrifuge at 4A and the Arc Furnace at 6A.

**[Multiblock machines](../multiblocks/multiblocks-index.md)** usually receive power through Energy Hatches. Standard Energy Hatches accept up to 2A. Multi-Amp Energy Hatches accept up to 1.25 times their rated amperage.

When a machine runs out of energy in its internal buffer, it stops executing the recipe and enters a **power failure**. Singleblock machines lose recipe progress but keep their input state; multiblocks lose both recipe progress and their inputs. Make sure you [provide power reliably](enet.md#providing-power-reliably).
