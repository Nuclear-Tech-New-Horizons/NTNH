---
navigation:
  parent: /ae2-mechanics-index.md
  title: Import, Export, and Storage
  icon: appliedenergistics2:item.ItemMultiPart:240
item_ids:
- appliedenergistics2:item.ItemMultiPart:260
- ae2fc:part_fluid_export
- appliedenergistics2:item.ItemMultiPart:240
- ae2fc:part_fluid_import
- appliedenergistics2:item.ItemMultiPart:220
- ae2fc:part_fluid_storage_bus
---

{/* most of the content on this page should be moved to individual item pages (items-blocks directory); should be rewritten in the future*/}

# Import, Export, and Storage

> [!NOTE]
> Some links are broken due to their pages not being written at this time. Help support GTNH's development by contributing on the [GitHub](https://github.com/GTNewHorizons/GTNH-Guide-Pack)!

## "Import" and "Export", "Read" and "Write"

In AE, all uses of **import** and **export** are defined relative to the ME network itself. **Import** means bringing something into the ME network, while **export** means moving something out of the ME network into the outside world. For example, an ME Export Bus exports contents from the ME network into an external inventory.

The concepts of "Read" and "Write" also revolve around the ME network. Reading means the ME Network reads from other inventories, and writing means the ME Network writes to others, just like a computer would. The same applies to "Read-Only" and "Write-Only". For example, when a Storage Bus in a network is set to "Read-Only", the ME Network can only read the target of that Storage Bus and cannot place contents into it; "Write-Only" is the exact opposite.

# Buses
AE2 provides [cable](../items-blocks/cables.md) subparts to handle logistics between the ME network and the outside world.

## Import Buses and Export Buses
<ItemLink id="appliedenergistics2:item.ItemMultiPart:240" showIcon="left" />, <ItemLink id="ae2fc:part_fluid_import" showIcon="left" />, <ItemLink id="appliedenergistics2:item.ItemMultiPart:260" showIcon="left" />, and <ItemLink id="ae2fc:part_fluid_export" showIcon="left" /> can interact with items or fluids between AE storage and external containers.

Attaching them to a cable adjacent to a container allows for the exchange of items and fluids between the ME Network and the external container.

<GameScene zoom="4" width="300" rotateX="-10" rotateY="0">
    <ImportStructure src="../assets/structures/io_system-import_export.snbt" />
</GameScene>

In GTNH, ME Buses can interact with GregTech Input/Output Buses and Hatches under the following rules:
* ME Item Buses can <Color id="Red">only</Color> interact with items when attached to the front face of a GT Bus.
* ME Item Buses can <Color id="Red">only</Color> interact with items when attached to the front face of a GT Fluid Hatch.
* ME Fluid Buses can interact with fluids when attached to any face of a GT Fluid Hatch.

## Storage Buses
<ItemLink id="appliedenergistics2:item.ItemMultiPart:220" showIcon="left" /> and <ItemLink id="ae2fc:part_fluid_storage_bus" showIcon="left" /> can read items or fluids from attached containers into the ME network, acting like an "external hard drive" for your AE storage.

<GameScene zoom="4" width="300" rotateX="-10" rotateY="0">
    <ImportStructure src="../assets/structures/io_system-storage_bus.snbt" />
</GameScene>

The uses of Storage Buses go far beyond simply exposing external storage. In GTNH especially, they are a core part of automation.

## Other Buses
GTNH adds Essentia Buses to AE2 to support Thaumcraft 4. You can use the AE system to store and automate essentia.
See <ItemLink id="thaumicenergistics:part.base" showIcon="left" />, <ItemLink id="thaumicenergistics:part.base:3" showIcon="left" />, and <ItemLink id="thaumicenergistics:part.base:2" showIcon="left" /> for details.

# Priority
All Storage Buses can have their priority adjusted in the top-right corner of their UI. In an ME network, priority is an integer. Higher values make the logistics system prefer storing items or fluids there, while lower values make it prefer taking items or fluids from there first.

The following example can help clarify the concept. Suppose there are two chests in the network, each with a Storage Bus of a different priority attached, and they each contain one <ItemLink id="minecraft:stone" showIcon="left" />:
* When you import a Stone into the ME Network, AE will store it in the chest with the higher priority.
* When you take a Stone out of the ME Network, AE will extract it from the chest with the lower priority first.
* When you use [autocrafting](./autocrafting.md) for a request that requires Stone as a material, AE will use the Stone from the chest with the lower priority first.

In addition to Storage Buses, the priority of the <ItemLink id="appliedenergistics2:tile.BlockDrive" showIcon="left" /> can also be adjusted.

# Upgrade Cards
All ME Buses can accept [upgrade cards](./upgrade_card.md) to gain additional functional adjustments. Hovering your mouse over the card slots in the top right corner of a bus's UI will show which upgrade cards that bus supports, and the descriptions of the different upgrade cards also list the types of buses they apply to.
