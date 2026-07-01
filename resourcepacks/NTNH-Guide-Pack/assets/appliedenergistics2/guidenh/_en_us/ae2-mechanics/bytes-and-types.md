---
navigation:
  parent: /ae2-mechanics-index.md
  title: Bytes and Types
  icon: appliedenergistics2:item.ItemExtremeStorageCell.Universe
---

# Bytes and Types

<Column>
  <Row>
    <ItemImage id="appliedenergistics2:item.ItemBasicStorageCell.1k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemBasicStorageCell.4k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemBasicStorageCell.16k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemBasicStorageCell.64k" scale="4" />
  </Row>

  <Row>
    <ItemImage id="appliedenergistics2:item.ItemAdvancedStorageCell.256k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemAdvancedStorageCell.1024k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemAdvancedStorageCell.4096k" scale="4" />

    <ItemImage id="appliedenergistics2:item.ItemAdvancedStorageCell.16384k" scale="4" />
  </Row>
</Column>

[Storage Cells](../items-blocks/storage_cells.md) are defined by both *bytes* and *types*. Bytes, like in
your actual computer, are a measure of the total amount of "stuff" in a storage cell. Types are a measure of how many different,
well, *types* of things are stored in a cell. Each type represents a unique item, so 4,096 cobblestone is 1 type but 16 different
swords with different enchantments are 16 types.

Each storage cell can store a fixed amount
of data. Each type consumes a number of bytes upfront (which varies with the cell
size), and each item consumes one bit of storage, so eight items consume one
byte, and a full stack of 64 consumes 8 bytes, regardless of how the item
would stack outside an ME network. For instance, 64 identical saddles don't
take up more space than 64 stone.

Again, each item is 1 bit, so 8 items equals 1 byte. For fluid cells, this is 2,048 mB per byte.

Many people complain about the limited number of types a cell can hold, but they are a ***necessary limitation***.
Cells store their data in an NBT tag on the item itself, which makes them rather stable. However, this means putting too much
data on a cell can cause too much data to be sent to a player, causing an effect similar to "Book Banning" in vanilla minecraft.
Additionally, having too many different types in your system increases the load on sorting and item handling. However, this
limitation does not end up being very restrictive. One <ItemLink id="appliedenergistics2:tile.BlockDrive" /> bay full of cells is 630 types which is actually
quite a lot as long as you don't store loads of unique unstackable items.

For this reason, types exist to "firmly discourage" you from dumping the hundreds of randomly damaged armor and tools from
a mob farm directly into your ME system. Each armor piece with unique damage and enchantments has to be stored as a separate entry,
causing bloat. it is recommended to filter them out of the item stream before they touch your system.

Gunning straight for top tier storage cells is generally not the best idea,
since you use more resources but don't get any extra type storage. This means that all sizes of cell are still useful even
lategame, as they have tradeoffs.

Below is a table comparing the different tiers of storage cells, how much they store, and
a rough estimate of their cost.

## Storage Cell Contents Vs Cost

| Cell | Bytes | Types | Bytes Per Type |
| --- | ---: | ---: | ---: |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.1k" scale="4" />        |      1,024 | 63 |       8 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.4k" scale="4" />        |      4,096 | 63 |      32 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.16k" scale="4" />       |     16,384 | 63 |     128 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.64k" scale="4" />       |     65,536 | 63 |     512 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.256k" scale="4" />   |    262,144 | 63 |   2,048 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.1024k" scale="4" />  |  1,048,576 | 63 |   8,192 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.4096k" scale="4" />  |  4,194,304 | 63 |  32,768 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.16384k" scale="4" /> | 16,777,216 | 63 | 131,072 |

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

## Storage Capacity with Varying Type Count

The upfront cost of types is such that a cell holding 1 type can hold 2x as much as a cell with all 63 types in use.

| Cell | Total Capacity of Cell With 1 Type In Use | Total Capacity of Cell With 63 Types In Use |
| --- | ---: | ---: |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.1k" scale="4" />            |       8,128 |      4,160 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.4k" scale="4" />            |      32,512 |     16,640 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.16k" scale="4" />           |     130,048 |     66,560 |
| <ItemLink id="appliedenergistics2:item.ItemBasicStorageCell.64k" scale="4" />           |     520,192 |    266,240 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.256k" scale="4" />       |   2,080,768 |  1,064,960 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.1024k" scale="4" />      |   8,323,072 |  4,259,840 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.4096k" scale="4" />      |  33,292,288 | 17,039,360 |
| <ItemLink id="appliedenergistics2:item.ItemAdvancedStorageCell.16384k" scale="4" />     | 133,169,152 | 68,157,440 |

![A Cell With 1 Type](../assets/1_type_cell.png)

![A Cell With 63 Types](../assets/63_type_cell.png)