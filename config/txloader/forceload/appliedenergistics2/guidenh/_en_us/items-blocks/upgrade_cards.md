---
navigation:
  parent: /items-blocks-index.md
  title: Upgrade Cards
  icon: speed_card
  position: 410
categories:
- tools
item_ids:
- appliedenergistics2:item.ItemMultiMaterial:25
- appliedenergistics2:item.ItemMultiMaterial:28
- appliedenergistics2:item.ItemMultiMaterial:26
- appliedenergistics2:item.ItemMultiMaterial:27
- appliedenergistics2:item.ItemMultiMaterial:68
- appliedenergistics2:item.ItemMultiMaterial:29
- appliedenergistics2:item.ItemMultiMaterial:30
- appliedenergistics2:item.ItemMultiMaterial:31
- appliedenergistics2:item.ItemMultiMaterial:53
- appliedenergistics2:item.ItemMultiMaterial:69
- appliedenergistics2:item.ItemMultiMaterial:64
- appliedenergistics2:item.ItemMultiMaterial:54
- appliedenergistics2:item.ItemMultiMaterial:55
- appliedenergistics2:item.ItemMultiMaterial:56
- appliedenergistics2:item.ItemMultiMaterial:63
- appliedenergistics2:item.ItemMultiMaterial:65
- appliedenergistics2:item.ItemMultiMaterial:66
- appliedenergistics2:item.ItemMultiMaterial:67
---

# Upgrade Cards
<Column>
  <Row>
    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:26" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:27" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:68" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:29" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:30" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:56" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:67" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:31" scale="2" />
  </Row>

  <Row>
    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:53" scale="2" />   
   
    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:69" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:54" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:55" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:64" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:63" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:65" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:66" scale="2" />
  </Row>
</Column>
Upgrade cards change the behavior of AE2 devices and machines, increasing their speed, improving their
filter capacity, enabling redstone control, etc.

## Card Components

<Row>
  <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:25" scale="2" />

  <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:28" scale="2" />
</Row>

Upgrade cards are crafted using either a Basic Card or an Advanced Card as the base.

<Row>
  <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:25" />

  <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:28" />
</Row>

## Redstone Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:26" scale="2" />

Redstone Cards add redstone control to a device, including a toggle in its GUI for switching between redstone modes.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:26" />

## Capacity Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:27" scale="2" />

Capacity Cards increase the number of filter slots in Import Buses, Export Buses, Storage Buses, and Formation Planes.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:27" />

## Overflow Void Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:68" scale="2" />

Overflow Void Cards can be applied to [Storage Cells](storage_cells.md) in a <ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />.
They delete incoming items when the cell is full. Make sure to [partition](cell_workbench.md) your cells first.
When combined with an Equal Distribution Card, an item is voided as soon as its own partition is full, even if other partitions still have room.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:68" />

## Fuzzy Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:29" scale="2" />

Fuzzy Cards let filtered devices and tools match by durability and/or ignore item NBT. That allows you to export
all iron axes regardless of durability or enchantments, or export only damaged diamond swords instead of fully repaired ones.

Below is an example of how fuzzy durability comparison modes work. The left side shows the bus configuration, and the top row shows the compared item.

| 25%                    | 10% Damaged Pickaxe | 30% Damaged Pickaxe | 80% Damaged Pickaxe | Full Repair Pickaxe |
| :--------------------: | :-----------------: | :-----------------: | :-----------------: | :-----------------: |
| Nearly Broken Pickaxe  | ✔                   | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            |
| Fully Repaired Pickaxe | \*\*\*\*            | ✔                   | ✔                   | ✔                   |

---

| 50%                    | 10% Damaged Pickaxe | 30% Damaged Pickaxe | 80% Damaged Pickaxe | Full Repair Pickaxe |
| :--------------------: | :-----------------: | :-----------------: | :-----------------: | :-----------------: |
| Nearly Broken Pickaxe  | ✔                   | ✔                   | \*\*\*\*            | \*\*\*\*            |
| Fully Repaired Pickaxe | \*\*\*\*            | \*\*\*\*            | ✔                   | ✔                   |

---

| 75%                    | 10% Damaged Pickaxe | 30% Damaged Pickaxe | 80% Damaged Pickaxe | Full Repair Pickaxe |
| :--------------------: | :-----------------: | :-----------------: | :-----------------: | :-----------------: |
| Nearly Broken Pickaxe  | ✔                   | ✔                   | \*\*\*\*            | \*\*\*\*            |
| Fully Repaired Pickaxe | \*\*\*\*            |                     | ✔                   | ✔                   |

---

| 99%                    | 10% Damaged Pickaxe | 30% Damaged Pickaxe | 80% Damaged Pickaxe | Full Repair Pickaxe |
| :--------------------: | :-----------------: | :-----------------: | :-----------------: | :-----------------: |
| Nearly Broken Pickaxe  | ✔                   | ✔                   | ✔                   | \*\*\*\*            |
| Fully Repaired Pickaxe | \*\*\*\*            | \*\*\*\*            | \*\*\*\*            | ✔                   |

---

| Ignore                 | 10% Damaged Pickaxe | 30% Damaged Pickaxe | 80% Damaged Pickaxe | Full Repair Pickaxe |
| :--------------------: | :-----------------: | :-----------------: | :-----------------: | :-----------------: |
| Nearly Broken Pickaxe  | ✔                   | ✔                   | ✔                   | **✔**               |
| Fully Repaired Pickaxe | **✔**               | **✔**               | **✔**               | ✔                   |

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:29" />

## Acceleration Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:30" scale="2" />

Acceleration Cards speed things up. They let Import and Export Buses move more items per operation, and make Inscribers
and Molecular Assemblers work faster.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:30" />

## Hyper-Acceleration Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:56" scale="2" />

Hyper-Acceleration Cards are a faster version of normal Acceleration Cards, but they can only be used in the ME-IO Port,
ME Import/Export Buses, and ME Fluid Import/Export Buses.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:56" />

## Superluminal Acceleration Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:67" scale="2" />

The Superluminal Acceleration Card is the fastest AE card for moving items or fluids, but it can only be used in the
ME-IO Port and ME Import/Export Buses.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:67" />

## Inverter Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:31" scale="2" />

Inverter Cards switch a device or tool filter from whitelist mode to blacklist mode.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:31" />

## Crafting Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:53" scale="2" />

Crafting Cards let the device send requests to your [autocrafting](../ae2-mechanics/autocrafting.md)
system for the items it needs.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:53" />

## Equal Distribution Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:69" scale="2" />

Equal Distribution Cards can be applied to [Storage Cells](storage_cells.md) in a <ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />.
They divide the cell into equal partitions based on how the card is [partitioned](cell_workbench.md), which prevents a single item type from filling the whole cell.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:69" />

## Pattern Capacity Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:54" scale="2" />

Each Pattern Capacity Card provides an additional 9 pattern slots to the interface, up to a maximum of 3 cards per interface.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:54" />

## Ore Dictionary Filter Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:55" scale="2" />

Allows filtering by Ore Dictionary entry and supports regular expression matching.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:55" />

## Sticky Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:64" scale="2" />

Any items, fluids, or essentia partitioned onto this cell may only be stored in cells or Storage Buses that also have Sticky Cards, and nowhere else in the network.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:64" />

## Advanced Blocking Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:63" scale="2" />

Advanced Blocking Cards extend blocking to the entire connected ME network instead of only adjacent inventories. When enabled, the interface prevents recipe ingredients from being inserted if the target network already contains the relevant items or fluids.

In Default mode, blocking is triggered only when recipe-relevant items or fluids are present in the network (excluding catalysts such as lenses, circuits, or molds).

In Loose mode, blocking is triggered by the presence of any item or fluid in the network.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:63" />

## Locking Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:65" scale="2" />

This card has 4 modes:

*   Mode 1: Never locks crafting
*   Mode 2: Locks crafting until a redstone pulse is received
*   Mode 3: Locks crafting when a redstone signal is present
*   Mode 4: Locks crafting when no redstone signal is present

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:65" />

## Fake Crafting Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:66" scale="2" />

If an Interface is equipped with this card, it immediately completes the **crafting job** after submitting it, without waiting for the result to return. This only works if the submitted job's final output is the intended product.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:66" />
