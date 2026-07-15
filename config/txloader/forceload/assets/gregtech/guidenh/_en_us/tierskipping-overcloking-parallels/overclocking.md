---
navigation:
  title: "Overclocking"
  icon: gregtech:gt.blockmachines:15410
  parent: T-O-P-index.md
  position: -2
---

# Overclocking

**Overclocking** means increasing [rated power](index.md#rated-power) so the machine can complete recipes in less time. Whenever the machine's rated power exceeds (actual parallels x actual recipe power) by a sufficient factor, usually 4x, the machine gains one overclock and the recipe duration is reduced. Unlike **[tier skipping](tierskipping.md)**, overclocking can happen multiple times.

Overclocking has nothing to do with [voltage tier](index.md#voltage-tier). Using higher-tier Energy Hatches raises the rated power of a single hatch, allowing more overclocks; stacking multiple Energy Hatches can achieve a similar effect. The common case of installing two same-tier Energy Hatches is often called **dual-hatch overclocking**.

Before it starts overclocking, a multiblock first calculates and attempts **[parallels](parallels.md)**. Overclocking and batch mode are completely separate features.

# Types of Overclocking

## Imperfect Overclocking (4/2)

This is the default behavior. Each overclock multiplies power draw by 4 and cuts duration in half. Total energy doubles, so this is called **imperfect overclocking**. Most machines use this mode.

## Perfect Overclocking (4/4)

Each overclock multiplies rated power by 4, cuts duration to one quarter, and leaves total energy unchanged. This is called **perfect overclocking**. One example is <ItemLink id="gregtech:gt.blockmachines:1169" showIcon="left" />.

## Lossless Overclocking (2/2)

When rated power increases by 4x, actual power usage only increases by 2x and duration is halved. The singleblock Mass Fabricator is an example.

## Special Overclocking

Many machines do not fit cleanly into the categories above. For example:
- <ItemLink id="gregtech:gt.blockmachines:13532" showIcon="left" />: first uses imperfect overclocks up to the Energy Hatch tier, then uses laser overclocks based on amperage, where the $$n$$th step increases power by $$(4+0.3n)$$
- <ItemLink id="gregtech:gt.blockmachines:15410" showIcon="left" />: one overclock multiplies input energy by 4 and halves duration, which works out roughly like an 8/2 overclock

## Cannot Overclock

Special-purpose machines such as <ItemLink id="gregtech:gt.blockmachines:15331" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:9402" showIcon="left" />, and <ItemLink id="gregtech:gt.blockmachines:1006" showIcon="left" /> do not allow overclocking.

# Overclocking Low-Power Recipes

Any recipe whose actual power is below 32 EU/t is treated as 32 EU/t for overclock calculations. This means ULV recipes, 1 to 8 EU/t, are treated as LV power. ULV is not treated as a standard voltage tier and does not participate in overclocking or parallel calculations as its own tier.

# Calculating Recipe Duration

Recipe duration is measured in ticks, where one tick is 0.05 seconds. Overclocking is calculated using floating-point values, and the final duration is rounded down to an integer number of ticks. If rounding down would produce 0, it is forced to 1 tick. At that point, some multiblocks trigger **1tOC** ([overclocking after reaching 1 tick](parallels.md#overclocking-after-reaching-1-tick-1toc)).

Rounding always favors the player, so in some cases overclocking can make total energy efficiency exceed 100%.

Example - imperfect overclocking: $$10 \text{ tick} \to 5\text{ tick} \to 2\text{ tick} \to 1 \text{ tick} \to 1\text{ tick}$$

Example - perfect overclocking: $$40 \text{ tick} \to 10\text{ tick} \to 2\text{ tick} \to 1\text{ tick} \to 1\text{ tick}$$
