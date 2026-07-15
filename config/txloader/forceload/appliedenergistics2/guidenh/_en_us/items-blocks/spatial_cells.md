---
navigation:
  parent: /items-blocks-index.md
  title: Spatial Storage Cells
  icon: appliedenergistics2:item.ItemSpatialStorageCell.2Cubed
categories:
- tools
item_ids:
- appliedenergistics2:item.ItemSpatialStorageCell.2Cubed
- appliedenergistics2:item.ItemSpatialStorageCell.16Cubed
- appliedenergistics2:item.ItemSpatialStorageCell.128Cubed
---

<Row>
<ItemImage id="appliedenergistics2:item.ItemSpatialStorageCell.2Cubed" scale="4"/>

<ItemImage id="appliedenergistics2:item.ItemSpatialStorageCell.16Cubed" scale="4"/>

<ItemImage id="appliedenergistics2:item.ItemSpatialStorageCell.128Cubed" scale="4"/>
</Row>

Spatial Storage Cells are the storage medium used by the [Spatial IO system](../ae2-mechanics/spatial-io.md). When the system runs, the volume of the selected area must be less than or equal to the capacity of the Spatial Storage Cell being used. There are three tiers of Spatial Storage Cell, with capacities of 2, 16, and 128 cubic meters.

Internally, a Spatial Storage Cell is effectively a separate dimension. A Spatial Pylon setup works by swapping the entire selected region with an equally sized region inside the cell. The first time you use a new Spatial Storage Cell, it creates a dimension matching its internal size. In practice, you can think of each fresh Spatial Storage Cell as being filled with air blocks. The first spatial transfer swaps that air-filled region back out into the world.

<Color id="RED">Once a Spatial Storage Cell has been used, you cannot reset, reformat, or resize it. If you want a different size, craft a new cell.</Color>
