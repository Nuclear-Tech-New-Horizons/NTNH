---
navigation:
  parent: /items-blocks-machines-index.md
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

Cards are crafted with either basic or advanced card bases

<Row>
  <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:25" />

  <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:28" />
</Row>

## Redstone Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:26" scale="2" />

Redstone cards add redstone control, adding a toggle button in the device's GUI to swap between various redstone conditions.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:26" />

## Capacity Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:27" scale="2" />

Capacity cards increase the amount of filter slots in import, export, and storage busses, and formation planes.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:27" />

## Overflow Void Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:68" scale="2" />

Overflow Void Card can be applied to [storage cells](storage_cells.md) in a <ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />
and will delete incoming items if the cell is full. (make sure to [partition](cell_workbench.md) your cells!) Combined with an equal distribution card,
items will be voided if that specific item's section of the cell is full, even if other items' sections are empty.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:68" />

## Fuzzy Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:29" scale="2" />

Fuzzy cards let devices and tools with filters filter by damage level and/or ignore item NBT, allowing you to export
all iron axes no matter the damage level and enchantments, or only export damaged diamond swords, not fully repaired ones.

Below is an example of how Fuzzy Damage comparison mods work, left side is the
bus config, top is the compared item.

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

Acceleration cards make stuff go faster, making import and export busses move more items per operation, and making inscribers.
and assemblers work faster.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:30" />

## Hyper-Acceleration Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:56" scale="2" />

Hyper-Acceleration cards are a faster version of the basic acceleration cards. but is only available on the ME-IO port, ME Input/Export Bus, ME fluid Input/Export Bus.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:56" />

## Superluminal Acceleration Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:67" scale="2" />

The Superluminal Acceleration card is the fastest AE card that you can use to transfer items or fluids. but is only available on the ME-IO port, ME Input/Export Bus.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:67" />

## Inverter Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:31" scale="2" />

Inverter cards swap filters in devices and tools from whitelist to blacklist.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:31" />

## Crafting Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:53" scale="2" />

Crafting cards let the device send crafting requests to your [autocrafting](../ae2-mechanics/autocrafting.md)
system to get the items it desires.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:53" />

## Equal Distribution Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:69" scale="2" />

Equal distribution cards can be applied to [storage cells](storage_cells.md) in a <ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" /> and
split the cell into equally-sized sections based on what the card is [partitioned](cell_workbench.md) to. This prevents one item type from completely
filling the cell.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:69" />

## Pattern Capacity Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:54" scale="2" />

Each Pattern Capacity Card provides an additional 9 pattern slots to the interface, up to a maximum of 3 cards per interface.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:54" />

## Ore Dictionary Filter Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:55" scale="2" />

Allows filtering using Ore Dictionary and supports regular expression matching.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:55" />

## Sticky Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:64" scale="2" />

Any items, fluids, and essentia partitioned on this cell may only be stored in cells or storage buses with Sticky Cards, and will not be stored elsewhere in the network.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:64" />

## Advanced Blocking Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:63" scale="2" />

Advanced Blocking Card extends blocking to the entire connected ME network instead of only adjacent inventories. When enabled, the interface will prevent importing recipe ingredients if the target network contains relevant items or fluids.

In Default mode, blocking is triggered only when recipe-relevant items or fluids are present in the network (excluding catalysts such as lenses, circuits, or molds).

In Loose mode, blocking is triggered by the presence of any item or fluid in the network.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:63" />

## Locking Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:65" scale="2" />

Has 4 modes:

*   Mode 1: Never locks crafting
*   Mode 2: Locks crafting until a redstone pulse is received
*   Mode 3: Locks crafting when a redstone signal is present
*   Mode 4: Locks crafting when no redstone signal is present

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:65" />

## Fake Crafting Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:66" scale="2" />

If an interface is equipped with this card, it will immediately complete the **crafting job** after submitting it, without waiting for the result. This effect only applies if the submitted job's final output is the intended product.

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:66" />
