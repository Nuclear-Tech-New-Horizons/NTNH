---
navigation:
  title: "Parallels"
  icon: gregtech:gt.blockmachines:31041
  parent: T-O-P-index.md
  position: -3
---

# Parallels


**Parallels** are the ability of a multiblock machine to process multiple copies of the same recipe in the same time interval. Singleblock machines do not have this ability.

When a machine runs in parallel, its power draw becomes (actual parallels x actual recipe power), all input consumption and output production are multiplied by the actual number of parallels, and recipe time stays unchanged.

After parallels are applied, the multiblock then calculates and attempts **[overclocking](overclocking.md)**, assuming [rated power](index.md#rated-power) is still sufficient. Parallels and batch mode are completely separate features.

# Maximum Parallels

Multiblocks have a parallel configuration window, and the maximum parallels can be manually lowered.

- Machines without any special note default to 1 parallel, such as <ItemLink id="gregtech:gt.blockmachines:1000" showIcon="left" />
- <ItemLink id="gregtech:gt.blockmachines:12730" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:12731" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:12738" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:13366" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:13367" showIcon="left" />, and <ItemLink id="gregtech:gt.blockmachines:31150" showIcon="left" /> have a fixed maximum of 256 parallels
- Most machines calculate maximum parallels from voltage or from the tier of a structure component. When a tooltip says "each voltage tier provides $$x$$ parallels", that is calculated from the sum of the voltage inputs of all Energy Hatches, capped at 15 (MAX+)

Only <ItemLink id="gregtech:gt.blockmachines:1003" showIcon="left" /> and <ItemLink id="gregtech:gt.blockmachines:1132" showIcon="left" /> have cross-recipe parallels, meaning a single parallel batch can contain multiple distinct recipes.

In practice, the bottleneck on actual parallels is usually the machine's maximum parallel limit.

# Overclocking After Reaching 1 Tick (1tOC)

When overclocking would reduce actual recipe time below 1 tick, recipe duration is clamped to 1 tick and the extra overclocking is converted into an additional parallel multiplier. This is called **1tOC**.

$$\text{1tOC compensation factor} = \left\lceil\frac{1 \text{ tick}}{\text{actual duration (floating point)}}\right\rceil$$

This compensation factor increases the machine's maximum parallels by the corresponding multiplier. Because the result is rounded up, it always benefits the player.

Machines that do not support 1tOC:
- All singleblock machines
- <ItemLink id="gregtech:gt.blockmachines:13532" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:15410" showIcon="left" />, <ItemLink id="gregtech:gt.blockmachines:5001" showIcon="left" />

# Equivalence Between Parallels and Perfect Overclocks

**[Parallels](parallels.md)** can be treated as the equivalent of perfect overclocks. A machine with a maximum of $$n$$ parallels is effectively equivalent to having $$\log_4{n}$$ opportunities to convert imperfect overclocks into perfect ones, making the machine run at $$\sqrt{n}$$ times the speed.
