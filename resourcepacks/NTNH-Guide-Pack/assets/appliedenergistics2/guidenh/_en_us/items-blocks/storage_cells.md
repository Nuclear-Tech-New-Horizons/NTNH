---
navigation:
  parent: /items-blocks-index.md
  title: Storage Cells
  icon: appliedenergistics2:item.ItemBasicStorageCell.1k
categories:
- tools
item_ids:
- appliedenergistics2:item.ItemMultiMaterial:39
- appliedenergistics2:item.ItemMultiMaterial:61
- ae2fc:fluid_storage_housing
- ae2fc:fluid_storage_housing:2
- ae2fc:fluid_storage_housing:1
- ae2fc:fluid_storage_housing:3
- thaumicenergistics:storage.casing
- appliedenergistics2:item.ItemMultiMaterial:39
- ae2fc:fluid_storage_housing
- appliedenergistics2:item.ItemMultiMaterial:61
- ae2fc:fluid_storage_housing:1
- appliedenergistics2:item.ItemBasicStorageCell.1k
- appliedenergistics2:item.ItemBasicStorageCell.4k
- appliedenergistics2:item.ItemBasicStorageCell.16k
- appliedenergistics2:item.ItemBasicStorageCell.64k
- appliedenergistics2:item.ItemAdvancedStorageCell.256k
- appliedenergistics2:item.ItemAdvancedStorageCell.1024k
- appliedenergistics2:item.ItemAdvancedStorageCell.4096k
- appliedenergistics2:item.ItemAdvancedStorageCell.16384k
- appliedenergistics2:item.ItemExtremeStorageCell.Quantum
- appliedenergistics2:item.ItemExtremeStorageCell.Singularity
- appliedenergistics2:item.ItemExtremeStorageCell.Universe
- appliedenergistics2:item.ItemExtremeStorageCell.Container
- appliedenergistics2:item.ToolPortableCell
- appliedenergistics2:item.ItemVoidStorageCell
- appliedenergistics2:item.ItemMultiMaterial:35
- appliedenergistics2:item.ItemMultiMaterial:36
- appliedenergistics2:item.ItemMultiMaterial:37
- appliedenergistics2:item.ItemMultiMaterial:38
- appliedenergistics2:item.ItemMultiMaterial:57
- appliedenergistics2:item.ItemMultiMaterial:58
- appliedenergistics2:item.ItemMultiMaterial:59
- appliedenergistics2:item.ItemMultiMaterial:60
- ae2fc:fluid_storage1
- ae2fc:fluid_storage4
- ae2fc:fluid_storage16
- ae2fc:fluid_storage64
- ae2fc:fluid_storage256
- ae2fc:fluid_storage1024
- ae2fc:fluid_storage4096
- ae2fc:fluid_storage16384
- ae2fc:fluid_storage.quantum
- ae2fc:fluid_storage.singularity
- ae2fc:fluid_storage.Universe
- ae2fc:multi_fluid_storage1
- ae2fc:multi_fluid_storage4
- ae2fc:multi_fluid_storage16
- ae2fc:multi_fluid_storage64
- ae2fc:multi_fluid_storage256
- ae2fc:multi_fluid_storage1024
- ae2fc:multi_fluid_storage4096
- ae2fc:multi_fluid_storage16384
- ae2fc:portable_fluid_cell
- ae2fc:fluid_storage.void
- ae2fc:fluid_storage.infinity.water
- ae2fc:fluid_part
- ae2fc:fluid_part:1
- ae2fc:fluid_part:2
- ae2fc:fluid_part:3
- ae2fc:fluid_part:4
- ae2fc:fluid_part:5
- ae2fc:fluid_part:6
- ae2fc:fluid_part:7
- thaumicenergistics:storage.essentia
- thaumicenergistics:storage.essentia:1
- thaumicenergistics:storage.essentia:2
- thaumicenergistics:storage.essentia:3
- thaumicenergistics:storage.essentia:4
- thaumicenergistics:storage.essentia:5
- thaumicenergistics:storage.essentia:6
- thaumicenergistics:storage.essentia:7
- thaumicenergistics:storage.essentia:8
- thaumicenergistics:storage.essentia:9
- thaumicenergistics:storage.essentia:10
- thaumicenergistics:storage.component
- thaumicenergistics:storage.component:1
- thaumicenergistics:storage.component:2
- thaumicenergistics:storage.component:3
- thaumicenergistics:storage.component:5
- thaumicenergistics:storage.component:6
- thaumicenergistics:storage.component:7
- thaumicenergistics:storage.component:8
- appliedenergistics2:item.ItemCreativeStorageCell
- ae2fc:creative_fluid_storage
---

# Storage Cells

<Column>
  <Row>
    <ItemImage id="appliedenergistics2:item.ItemBasicStorageCell.1k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemAdvancedStorageCell.16384k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemExtremeStorageCell.Quantum" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemExtremeStorageCell.Singularity" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemExtremeStorageCell.Universe" scale="4" />
  </Row>

  <Row>
    <ItemImage id="ae2fc:fluid_storage1" scale="4" />

    <ItemImage id="ae2fc:fluid_storage16384" scale="4" />

    <ItemImage id="ae2fc:fluid_storage.quantum" scale="4" />

    <ItemImage id="ae2fc:fluid_storage.singularity" scale="4" />

    <ItemImage id="ae2fc:fluid_storage.Universe" scale="4" />
  </Row>
  
  <Row>
    <ItemImage id="thaumicenergistics:storage.essentia" scale="4" />

    <ItemImage id="thaumicenergistics:storage.essentia:8" scale="4" />

    <ItemImage id="thaumicenergistics:storage.essentia:9" scale="4" />

    <ItemImage id="thaumicenergistics:storage.essentia:10" scale="4" />

    <ItemImage id="thaumicenergistics:storage.essentia:4" scale="4" />
  </Row>
</Column>

Storage Cells are one of the primary methods of storage in Applied Energistics. They can be installed in <ItemLink id="appliedenergistics2:tile.BlockDrive" /> or <ItemLink id="appliedenergistics2:tile.BlockChest" />.

See [Bytes and Types](../ae2-mechanics/bytes-and-types.md) for an explanation of their capacities in bytes and types.

Storage components can be removed from the housing if the cell is empty by shift-right clicking with the cell in your hand.

## Storage Capacity with Varying Type Count

The [upfront cost of types](../ae2-mechanics/bytes-and-types.md) is such that a cell holding 1 type can hold 2x as much as a cell with all 63 types in use.

| Storage Cell | Total Capacity of Cell With 1 Type In Use | Total Capacity of Cell With Maximum Types In Use |
| --- | ---: | ---: |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.1k" scale="4" />            |       8,128 |      4,160 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.4k" scale="4" />            |      32,512 |     16,640 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.16k" scale="4" />           |     130,048 |     66,560 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.64k" scale="4" />           |     520,192 |    266,240 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.256k" scale="4" />       |   2,080,768 |  1,064,960 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.1024k" scale="4" />      |   8,323,072 |  4,259,840 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.4096k" scale="4" />      |  33,292,288 | 17,039,360 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.16384k" scale="4" />     | 133,169,152 | 68,157,440 |
| <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Container" scale="4" />   |     524,224 |          - |
| <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Quantum" scale="4" />     |       1.07G |          - |
| <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Singularity" scale="4" /> |       4.61E |          - |
| <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Universe" scale="4" />    |       4.61E |      4.61E |

---

| Fluid Storage Cell | Total Capacity (mB) with 1 Type in Use | Total Capacity (mB) with Maximum Types in Use |
| --- | ---: | ---: |
| <ItemLink id="ae2fc:fluid_storage1" scale="4" />            |      2,080,768 |      2,015,232 |
| <ItemLink id="ae2fc:fluid_storage4" scale="4" />            |      8,372,224 |      8,060,928 |
| <ItemLink id="ae2fc:fluid_storage16" scale="4" />           |     33,538,048 |     32,243,712 |
| <ItemLink id="ae2fc:fluid_storage64" scale="4" />           |    134,201,344 |    128,974,848 |
| <ItemLink id="ae2fc:fluid_storage256" scale="4" />          |    536,854,528 |    515,899,392 |
| <ItemLink id="ae2fc:fluid_storage1024" scale="4" />         |  2,147,467,264 |  2,063,597,568 |
| <ItemLink id="ae2fc:fluid_storage4096" scale="4" />         |  8,589,918,208 |  8,254,390,272 |
| <ItemLink id="ae2fc:fluid_storage16384" scale="4" />        | 34,359,721,984 | 33,017,561,088 |
| <ItemLink id="ae2fc:fluid_storage.quantum" scale="4" />     |           275G |              - |
| <ItemLink id="ae2fc:fluid_storage.singularity" scale="4" /> |          4.61E |              - |
| <ItemLink id="ae2fc:fluid_storage.Universe" scale="4" />    |          9.22E |          9.22E |

---

| Essentia Storage Cell | Types | Total Essentia Capacity (No Type Overhead) |
| --- | ---: | ---: |
| <ItemLink id="thaumicenergistics:storage.essentia" scale="4" />   | 12 |      2,048 |
| <ItemLink id="thaumicenergistics:storage.essentia:1" scale="4" /> | 12 |      8,192 |
| <ItemLink id="thaumicenergistics:storage.essentia:2" scale="4" /> | 12 |     32,768 |
| <ItemLink id="thaumicenergistics:storage.essentia:3" scale="4" /> | 12 |    131,072 |
| <ItemLink id="thaumicenergistics:storage.essentia:5" scale="4" /> | 24 |    524,288 |
| <ItemLink id="thaumicenergistics:storage.essentia:6" scale="4" /> | 36 |  2,097,152 |
| <ItemLink id="thaumicenergistics:storage.essentia:7" scale="4" /> | 48 |  8,388,608 |
| <ItemLink id="thaumicenergistics:storage.essentia:8" scale="4" /> | 60 | 33,554,432 |
| <ItemLink id="thaumicenergistics:storage.essentia:9" scale="4" /> |  1 |       268M |

## Partitioning

Cells can be filtered to only accept certain items, similar to how <ItemLink id="appliedenergistics2:item.ItemMultiPart:220" />ses can be filtered. This is
done in a <ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />.

Cells also support Cell Restrictior, allowing both the maximum byte capacity and type count to be limited below their normal values.

These settings are configured in a <ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />.

Items can be dragged into the slots from NEI even if you don't actually have any of that item.

## Upgrades
Storage cells support the following upgrades, inserted via a <ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />:

*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:29" /> (not available on fluid cells) lets the cell be partitioned by damage level and/or ignore item NBT
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:31" /> switches the filter from a whitelist to a blacklist
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:69" /> allocates the same amount of cell byte space to each type, so one type cannot fill up the entire cell
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:68" /> voids items inserted if the cell is full (or that specific type's allocated space in the case of an equal distribution card), useful for stopping farms from backing up. Be careful to partition this!
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:55" /> allows filtering using Ore Dictionary and supports regular expression matching
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:64" /> (Only functions when partitioning is enabled) designates a preferred storage location for specific items or fluids. Marked items and fluids will only be stored in cells containing a Sticky Card instead of other available storage on the network

# Housings

Most storage cells are assembled from a Storage Component and a corresponding Housing. Different capacities and storage types require different housings. Certain special storage cells are crafted directly and do not require housings.

*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:39" /> used for crafting 1k – 64k Item Storage Cells
<br> <RecipesFor id="appliedenergistics2:item.ItemBasicStorageCell.1k" output="appliedenergistics2:item.ItemBasicStorageCell.1k" />
<br> Housings by themselves are crafted like so:
<br> <RecipesFor id="appliedenergistics2:item.ItemMultiMaterial:39" limit="3" />

*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:61" /> used for crafting 256k – 16384k Item Storage Cells
<br> <RecipesFor id="appliedenergistics2:item.ItemAdvancedStorageCell.256k" output="appliedenergistics2:item.ItemAdvancedStorageCell.256k" />
<br> Housings by themselves are crafted like so:
<br> <RecipesFor id="appliedenergistics2:item.ItemMultiMaterial:61" />

*   <ItemLink id="ae2fc:fluid_storage_housing" /> used for crafting 1k – 64k Fluid Storage Cells
<br> <RecipesFor id="ae2fc:fluid_storage1" output="ae2fc:fluid_storage1"/>
<br> Housings by themselves are crafted like so:
<br> <RecipesFor id="ae2fc:fluid_storage_housing" handlerId="gt.recipe.assembler" />

*   <ItemLink id="ae2fc:fluid_storage_housing:1" /> used for crafting 256k – 16384k Fluid Storage Cells
<br> <RecipesFor id="ae2fc:fluid_storage256" output="ae2fc:fluid_storage256"/>
<br> Housings by themselves are crafted like so:
<br> <RecipesFor id="ae2fc:fluid_storage_housing:1" />

*   <ItemLink id="ae2fc:fluid_storage_housing:2" /> used for crafting 1k – 64k Multi-Fluid Storage Cells
<br> <RecipesFor id="ae2fc:multi_fluid_storage1" output="ae2fc:multi_fluid_storage1" />
<br> Housings by themselves are crafted like so:
<br> <RecipesFor id="ae2fc:fluid_storage_housing:2" />

*   <ItemLink id="ae2fc:fluid_storage_housing:3" /> used for crafting 256k – 16384k Multi-Fluid Storage Cells
<br> <RecipesFor id="ae2fc:multi_fluid_storage256" output="ae2fc:multi_fluid_storage256" />
<br> Housings by themselves are crafted like so:
<br> <RecipesFor id="ae2fc:fluid_storage_housing:3" />

*   <ItemLink id="thaumicenergistics:storage.casing" /> used for crafting Essentia Storage Cells
<br> <RecipesFor id="thaumicenergistics:storage.essentia" output="thaumicenergistics:storage.essentia" />
<br> Housings by themselves are crafted like so:
<br> <RecipesFor id="thaumicenergistics:storage.casing" />

# Storage Components

Storage Components are the core of ME Storage Cells and determine their storage capacity.

Each tier increases storage capacity by a factor of four and requires four components of the previous tier to craft. They can also be manufactured directly in a Circuit Assembler.

<Column>
  <Row>
    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:35" />

    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:37" />

    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:57" />

    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:59" />
  </Row>

  <Row>
    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:35" handlerId="gt.recipe.circuitassembler" />

    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:37" handlerId="gt.recipe.circuitassembler" />

    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:57" handlerId="gt.recipe.circuitassembler" />

    <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:59" handlerId="gt.recipe.circuitassembler" />
  </Row>
</Column>

# Item Storage Cells

Standard Item Storage Cells can hold up to 63 distinct types of items, and are available in all the standard capacities.

<Column>
  <Row>
    <Recipe id="appliedenergistics2:item.ItemBasicStorageCell.1k" handlerName="Shaped Crafting" />

    <Recipe id="appliedenergistics2:item.ItemBasicStorageCell.4k" handlerName="Shaped Crafting" />

    <Recipe id="appliedenergistics2:item.ItemBasicStorageCell.16k" handlerName="Shaped Crafting" />

    <Recipe id="appliedenergistics2:item.ItemBasicStorageCell.64k" handlerName="Shaped Crafting" />
  </Row>

  <Row>
    <Recipe id="appliedenergistics2:item.ItemAdvancedStorageCell.256k" handlerName="Shaped Crafting" />

    <Recipe id="appliedenergistics2:item.ItemAdvancedStorageCell.1024k" handlerName="Shaped Crafting" />

    <Recipe id="appliedenergistics2:item.ItemAdvancedStorageCell.4096k" handlerName="Shaped Crafting" />

    <Recipe id="appliedenergistics2:item.ItemAdvancedStorageCell.16384k" handlerName="Shaped Crafting" />
  </Row>
</Column>

## Special Item Storage Cells

*   <ItemLink id="appliedenergistics2:item.ItemVoidStorageCell" /> can destroy all items stored within it
<br><Recipe id="appliedenergistics2:item.ItemVoidStorageCell" />
*   <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Container" /> can store only a single item type and provides 65,536 bytes of storage capacity
<br><Recipe id="appliedenergistics2:item.ItemExtremeStorageCell.Container" />
*   <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Quantum" /> can store only a single item type and provides 134,217,727 bytes of storage capacity
<br><Recipe id="appliedenergistics2:item.ItemExtremeStorageCell.Quantum" />
*   <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Singularity" /> can store only a single item type and provides 576,460,752,303,423,487 bytes of storage capacity
<br><Recipe id="appliedenergistics2:item.ItemExtremeStorageCell.Singularity" />
*   <ItemLink id="appliedenergistics2:item.ItemExtremeStorageCell.Universe" /> can store up to 63 item types and provides 576,460,752,303,423,487 bytes of storage capacity
<br><Recipe id="appliedenergistics2:item.ItemExtremeStorageCell.Universe" />

## Portable Item Storage

These act as a tiny <ItemLink id="appliedenergistics2:tile.BlockChest" />in your pocket, or like a form of backpack.They can be charged in a <ItemLink id="appliedenergistics2:tile.BlockCharger" />

Unlike standard Storage Cells, they can store only 27 item types and have a total capacity of 512 bytes.

They support only the following upgrade cards:

*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:29" />
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:31" />
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:55" />
*   <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:64" /> 

<RecipesFor id="appliedenergistics2:item.ToolPortableCell" />

# Fluid Storage Components

Fluid Storage Components are the core of ME Fluid Storage Cells and determine their storage capacity.

Each tier increases capacity by a factor of four and requires four components of the previous tier to craft. They can also be manufactured directly in a Circuit Assembler.

# Fluid Storage Cells

Fluid storage cells can hold up to 5 distinct types of fluids, and are available in all the standard capacities.

Standard Fluid Storage Cells are divided into two categories:

Fluid Storage Cells can store only one fluid type.

Multi-Fluid Storage Cells can store up to five fluid types.

Both are available in all standard capacity tiers.

## Special Fluid Storage Cells

*   <ItemLink id="ae2fc:fluid_storage.void" /> can destroy all stored fluids
<br><Recipe id="ae2fc:fluid_storage.void" />
*   <ItemLink id="ae2fc:fluid_storage.infinity.water" /> can provide an unlimited supply of water, up to 4,503,599,627,370,495 mB of water
<br><Recipe id="ae2fc:fluid_storage.infinity.water" />
*   <ItemLink id="ae2fc:fluid_storage.quantum" /> can store only a single fluid type and provides 134,217,727 bytes of storage capacity
<br><Recipe id="ae2fc:fluid_storage.quantum" />
*   <ItemLink id="ae2fc:fluid_storage.singularity" /> can store only a single fluid type and provides 2,251,799,813,685,247 bytes of storage capacity
<br><Recipe id="ae2fc:fluid_storage.singularity" />
*   <ItemLink id="ae2fc:fluid_storage.Universe" /> can store multiple fluid types and provides 4,503,599,627,370,495 bytes of storage capacity
<br><Recipe id="ae2fc:fluid_storage.Universe" />

## Portable Fluid Storage Cell

Portable Fluid Storage Cells can store up to five fluid types and have a total capacity of 256 bytes.

They do not support any upgrade cards.

<RecipesFor id="ae2fc:portable_fluid_cell" />

# Essentia Storage Components

Essentia Storage Components are the core of ME Essentia Storage Cells and determine their storage capacity.

Each tier increases capacity by a factor of four and requires four components of the previous tier to craft. They can also be manufactured directly in a Circuit Assembler.

# Essentia Storage Cells

1k – 64k Essentia Storage Cells support 12 Essentia types

Starting at 256k, each tier increases the supported Essentia type count by 12

## Special Essentia Storage Cells

*   <ItemLink id="thaumicenergistics:storage.essentia:9" /> can store only a single Essentia type and provides 134,217,727 bytes of storage capacity
<br><Recipe id="thaumicenergistics:storage.essentia:9" />
*   <ItemLink id="thaumicenergistics:storage.essentia:10" /> can store only a single Essentia type and provides 2,305,843,009,213,693,951 bytes of storage capacity
<br><Recipe id="thaumicenergistics:storage.essentia:10" />
*   <ItemLink id="thaumicenergistics:storage.essentia:4" /> can provide infinite amounts of every Essentia type, up to 4,503,599,627,370,495 units per type
<br><Recipe id="thaumicenergistics:storage.essentia:4" />

# Creative Storage Cells

<Row>
  <ItemImage id="appliedenergistics2:item.ItemCreativeStorageCell" scale="2" />

  <ItemImage id="ae2fc:creative_fluid_storage" scale="2" />
</Row>

Creative cells **do not provide infinite storage**. Instead, they act as infinite sources and sinks of whatever
item or fluid you [partition](cell_workbench.md) them to.

they act as infinite sources(up to 4,503,599,627,370,495 units) and sinks of whatever item or fluid you partition them to.