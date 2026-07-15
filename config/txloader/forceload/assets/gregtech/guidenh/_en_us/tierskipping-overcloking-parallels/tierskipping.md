---
navigation:
  title: "Tier Skipping"
  icon: gregtech:gt.blockmachines:41
  parent: T-O-P-index.md
  position: -1
---

# Tier Skipping


**Tier skipping** is the ability of a multiblock machine to use lower-tier Energy Hatches to run recipes whose base recipe power belongs to a higher tier.

The [rated power](index.md#rated-power) and [voltage tier](index.md#voltage-tier) of a multiblock are determined by its Energy Hatches. With only one Energy Hatch installed, voltage tier is often one tier above rated power, a 4x gap, but rated power is still too low to run recipes at that higher voltage tier. To make up the missing rated power, you install more same-tier Energy Hatches. That is **tier skipping**. Tier skipping is different from **[overclocking](overclocking.md)**.

# Dual-Hatch Tier Skipping

Installing two standard Energy Hatches of the same tier raises rated power until it matches voltage tier. This is called **dual-hatch tier skipping**. Two standard same-tier Energy Hatches provide enough rated power and voltage tier together to run every recipe exactly one tier above.

Some multiblocks have unusual voltage-tier rules. See the "cannot boost" and "unrestricted" cases under [voltage tier](index.md#voltage-tier).

# Example: Electric Blast Furnace

Take <ItemLink id="gregtech:gt.blockmachines:1000" showIcon="left" /> as an example. When you first encounter it, you usually only have LV Energy Hatches, but smelting aluminum requires MV-tier power.

After installing two LV Energy Hatches:

- **[Voltage tier](index.md#voltage-tier)**: $$(32\text{V} + 32\text{V}) / 2 \times 4\text{A} = 128 \text{ EU/t}$$, which is above the base recipe power of all MV recipes. The aluminum recipe needs 120 EU/t.
- **[Rated power](index.md#rated-power)**: $$32\text{V} \times 2\text{A} + 32\text{V} \times 2\text{A} = 128 \text{ EU/t}$$

In this state, the Electric Blast Furnace becomes very sensitive to cable loss. Any extra current used to compensate for cable loss is effectively spent covering the machine's power requirement:

- An Energy Hatch can accept at most 2A from the local power network. If cable loss drops the voltage below 30V, the two Energy Hatches together no longer receive a full 120 EU/t and the machine may powerfail.
- Installing a third Energy Hatch does not raise voltage tier: $$(32+32+32)/3 \times 4\text{A} = 128 \text{ EU/t}$$. It only raises rated power to 192 EU/t, giving extra headroom to compensate for cable loss.
