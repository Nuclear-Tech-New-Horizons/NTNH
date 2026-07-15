---
navigation:
  title: "Power"
  icon: gregtech:gt.metaitem.01:32518
  parent: /index.md
  position: 8
---

# Power

The GregTech power system uses EU (Energy Units). Its core is the [local power network](enet.md) (GT-Enet), around which power generation, transport, storage, consumption, and conversion are built.

- For power generation methods, see the generation overview.
- For network layout and transport advice, see power storage and transport.
- For machine tier skipping, overclocking, and parallels, see **[Tier Skipping, Overclocking, and Parallels](../tierskipping-overcloking-parallels/index.md)**.

# Voltage and Current

EU is transmitted as energy packets. The number of energy packets is always an integer.

## Voltage

Voltage describes how much EU each packet carries, measured in volts (V). $$1\text{ V} = 1\text{ EU}/\text{packet}$$.

Voltage describes the size of a single energy packet and determines generator and machine progression (see [voltage tiers](voltage-tiers.md)).

## Current

Current describes how many energy packets are transferred per unit time, measured in amperes (A). $$1\text{ A} = 1\text{ packet}/\text{tick}$$.

Because the number of energy packets transferred in a single tick is always an integer, instantaneous current is also always an integer. Average current is the average of instantaneous current, so it is often fractional.

## Power

Power is the product of voltage and current: $$P = UI$$. It describes how much energy is produced, transmitted, or consumed per unit time, measured in EU/t. $$1\text{ EU/t} = 1\text{ V} \times 1\text{ A}$$.

Energy is power multiplied by time (ticks), measured in EU.

The GT power system is close to real-world electrical behavior. Once you account for [cable loss](cable-loss.md) and [transmission internal resistance](output-loss.md), conservation of energy still holds.
