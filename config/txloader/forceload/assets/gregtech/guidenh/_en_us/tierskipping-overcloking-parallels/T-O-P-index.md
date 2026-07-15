---
navigation:
  title: "Tier Skipping, Overclocking, and Parallels"
  icon: OpenComputers:item:27
  parent: /index.md
---

# Tier Skipping, Overclocking, and Parallels


The behavior of multiblock machines is determined by the following core concepts: **[tier skipping](tierskipping.md)**, **[overclocking](overclocking.md)**, **[parallels](parallels.md)**, and the **rated power** and **voltage tier** discussed on this page.

**[Tier skipping](tierskipping.md)** is the ability of a multiblock to use lower-tier Energy Hatches to run recipes with a higher base recipe power, usually by installing two Energy Hatches of the same tier.

**[Overclocking](overclocking.md)** means increasing rated power so the machine can complete a recipe in less time. In most cases this uses 4/2 imperfect overclocks, though some machines support 4/4 perfect overclocks.

**[Parallels](parallels.md)** are the ability of a multiblock machine to process multiple copies of the same recipe in the same time interval.

# Recipes and Power

Every recipe has a **base recipe power**, meaning the power shown in NEI before overclocking and before any discount is applied. Many multiblocks, such as <ItemLink id="gregtech:gt.blockmachines:1000" showIcon="left" /> and <ItemLink id="gregtech:gt.blockmachines:687" showIcon="left" />, can apply special power discounts to recipes. The power after discounts but before overclocking is called the **actual recipe power**. When tooltips mention "recipe tier", they refer to base recipe power, not actual recipe power.

# Rated Power

**Rated power** is the maximum power the machine can consume while running. It is the primary input for **[overclocking](overclocking.md)** and **[parallels](parallels.md)**. It determines both whether the machine can run a recipe and how it runs that recipe. Rated power and voltage tier are properties of the machine itself and are independent of the energy-packet transport rules in the local power network.

## Conditions Required to Start a Recipe

The machine can only start a recipe if **rated power >= actual recipe power** and **voltage tier >= base recipe power**.

- Rated power too low -> the controller reports "Recipe requires more power."
- Voltage tier too low -> the controller reports "Recipe requires higher voltage to start."

## Singleblock Machines

Singleblock machines usually have rated power equal to 1A x standard voltage. Exceptions include the Thermal Centrifuge at 2A,and the Arc Furnace at 3A,and the singleblock Mass Fabricator consumed current varies according to different voltage levels from 8A to lower 1A.

## Multiblock Machines

Multiblocks calculate rated power differently depending on whether they use one Energy Hatch or several. A standard Energy Hatch has rated power equal to 2A x standard voltage. A Multi-Amp or Laser Hatch has rated power equal to its amperage x standard voltage.

- **Only one Energy Hatch installed**: most machines have rated power = 1A x standard voltage, which is half of the Energy Hatch's rated power. Some machines that support Multi-Amp or Laser Hatches directly use the hatch's full rated power.
- **Multiple Energy Hatches installed**: rated power is the sum of the rated power of all Energy Hatches.

With only one Energy Hatch installed, the machine's voltage tier is often one tier above its rated power, a 4x gap. That means the machine still lacks enough rated power to run recipes at that higher voltage tier. To make up for that missing rated power, you place more same-tier Energy Hatches, which is **[tier skipping](tierskipping.md)**. Installing two standard same-tier Energy Hatches makes rated power equal to voltage tier; this is called **dual-hatch tier skipping**.

# Voltage Tier

**Voltage tier** is the highest base recipe power the machine is allowed to run. It only affects whether a recipe is allowed to start, together with rated power. Voltage tier has nothing to do with **[overclocking](overclocking.md)**.

## Singleblock Machines

Their voltage tier is the same as their rated power.

## Multiblock Machines

There are four different voltage-tier behaviors for multiblocks:

| Behavior | Description | Typical Machines |
|----------|-------------|------------------|
| **One-tier boost** | 4A x average Energy Hatch voltage. This is the default behavior for most machines. | Electric Blast Furnace and most others |
| **Cannot boost** | 1A x Energy Hatch voltage | <ItemLink id="gregtech:gt.blockmachines:810" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:13532" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:32018" showIcon="left" /> |
| **One-tier reduction** | 1/4 A x Energy Hatch voltage | Circuit Assembler mode of <ItemLink id="gregtech:gt.blockmachines:12735" showIcon="left" /> |
| **Unrestricted** | Tooltip says "as long as enough energy is provided, this machine can run recipes of any tier" | <ItemLink id="gregtech:gt.blockmachines:12730" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:1004" showIcon="left" /> |

