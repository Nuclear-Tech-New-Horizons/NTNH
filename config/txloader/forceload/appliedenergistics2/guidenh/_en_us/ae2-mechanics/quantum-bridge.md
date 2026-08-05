---
navigation:
  parent: /ae2-mechanics-index.md
  title: Quantum Ring
  icon: appliedenergistics2:tile.BlockQuantumLinkChamber
item_ids:
- appliedenergistics2:tile.BlockQuantumRing
- appliedenergistics2:tile.BlockQuantumLinkChamber
---
# Quantum Ring

The Quantum Ring is the vanilla AE2 solution for wirelessly transmitting channels. It not only supports wireless channel transmission, but can also connect across dimensions. Its energy consumption is relatively high for an AE2 component, which may put a strain on your power grid during the voltage tier when you first unlock the AE system, so please calculate your power needs in advance. 

As a reference, each pair of Quantum Rings consumes about 1000 EU/t.

# Quantum Entangled Singularity
A <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:48" showIcon="left" /> is created by splitting a <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:47" showIcon="left" />. They possess unique NBT data that can be used to connect a pair of Quantum Rings. 

As a result, Quantum Entangled Singularities taken directly from Creative mode have no effect because they lack valid paired NBT data.

To obtain Quantum Entangled Singularities, you must first switch a <ItemLink id="appliedenergistics2:tile.BlockCondenser" showIcon="left" /> to Singularity output mode and fill a <ItemLink id="appliedenergistics2:item.ItemMultiMaterial:38" showIcon="left" />. After obtaining a singularity, drop it on the ground along with an Ender Pearl Dust and trigger an explosion nearby. The explosion will generate a mutually paired set of Quantum Entangled Singularities. You can rename them using an anvil to distinguish between different Quantum Ring systems and avoid confusion.

Note that explosives will still cause damage and terrain destruction, so please stay away from important areas. If you do not want to destroy a large area of terrain, AE2 also provides the <ItemLink id="appliedenergistics2:tile.BlockTinyTNT" showIcon="left" /> to create entangled singularities. It only destroys a very small area of terrain and deals no damage.

# Multiblock Structure
The Quantum Ring is a multiblock structure composed of <ItemLink id="appliedenergistics2:tile.BlockQuantumRing" showIcon="left" /> and <ItemLink id="appliedenergistics2:tile.BlockQuantumLinkChamber" showIcon="left" />. An operational Quantum Ring transmission system consists of a pair of these multiblock structures. Once the structures are formed, you can connect the two Quantum Rings by providing sufficient energy to each and placing one of a paired set of Quantum Entangled Singularities into each Quantum Link Chamber.

Typically, one of the Quantum Rings in a pair is located far away. To keep the system running, you must chunk-load the chunks where both Quantum Rings are located and maintain the power supply on both sides simultaneously. Formed and successfully linked Quantum Rings can draw power directly from the ME Network, but to mitigate fluctuations in chunk loading and energy supply caused by multiplayer servers or other reasons, be sure to provide a dedicated, independent power supply for the remote Quantum Ring. You can use an <ItemLink id="appliedenergistics2:tile.BlockEnergyCell" showIcon="left" />, <ItemLink id="appliedenergistics2:tile.BlockDenseEnergyCell" showIcon="left" />, or <ItemLink id="appliedenergistics2:tile.BlockCreativeEnergyCell" showIcon="left" />. You can also connect a small GT generator directly, but its power output must be large enough to sustain the Quantum Ring's startup sequence until it successfully boots up and switches to drawing power from the ME Network.

For the Quantum Ring, only the center block on each side can connect to [cables](../items-blocks/cables.md). A pair of Quantum Rings can transmit a maximum of 32 channels.

<GameScene zoom="3" width="600">
  <ImportStructure src="../assets/structures/quantum-bridge.snbt" />
</GameScene>