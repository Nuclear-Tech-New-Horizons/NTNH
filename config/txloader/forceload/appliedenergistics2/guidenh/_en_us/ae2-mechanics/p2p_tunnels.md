---
navigation:
  title: P2P Tunnels
  parent: /ae2-mechanics-index.md
  icon: appliedenergistics2:item.ItemMultiPart:460

item_ids:
  - appliedenergistics2:item.ItemMultiPart:460
  - appliedenergistics2:item.ItemMultiPart:461
  - appliedenergistics2:item.ItemMultiPart:462
  - appliedenergistics2:item.ItemMultiPart:463
  - appliedenergistics2:item.ItemMultiPart:466
  - appliedenergistics2:item.ItemMultiPart:467
  - appliedenergistics2:item.ItemMultiPart:468
  - appliedenergistics2:item.ItemMultiPart:470
  - appliedenergistics2:item.ItemMultiPart:471
  - appliedenergistics2:item.ItemMultiPart:472
  - ae2fc:part_fluid_p2p_interface

quest_ids:
  - AAAAAAAAAAAAAAAAAAAAyw==
  - AAAAAAAAAAAAAAAAAAAFMw==
  - _bEWg1FHSmKu9MNhlbDlwA==
  - mk3rQ7LUQjC96FsFvDedKA==
---

# P2P Tunnels

<GameScene zoom="4" width="300" height="200" interactive={false} allowLayerSlider={false}>
  <ImportStructure src="../assets/structures/p2p_tunnels.snbt" />
  <IsometricCamera yaw="180" pitch="0" />
</GameScene>

P2P tunnels are a way to move things like items, fluids, redstone signals, power, light, and [channels](../ae2-mechanics/channels.md) around a network without them directly interacting with the network. In GTNH, you can also use it to parallelize patterns. There are many variants of P2P tunnel but each
only transports its specific type of thing. They essentially act like portals that directly connect
two block faces at range. They are not bi-directional, there are defined inputs and outputs.

![Portal](../assets/images/p2p_portal.png)

# <ItemLink id="appliedenergistics2:item.ItemMultiPart:460" showIcon="left"/>

The ME P2P Tunnel is a P2P Tunnel that transmits AE channels. It allows you to transmit up to 32 channels to all outputs (all outputs share the channels of the input). Unlike other P2P Tunnels, the ME P2P Tunnel itself needs to operate on an ME Network separate from the network being transmitted.

## Simple Use Case for ME P2P Tunnels

In this example, the yellow controller-less small independent AE network transfers the 32 channels from the left controller to the right. Here, each ME terminal uses one channel.
  <GameScene zoom="4"  width="400">
    <ImportStructure src="../assets/structures/p2p-me.snbt" />
    <IsometricCamera yaw="-60" pitch="30" />
  </GameScene>

## Scaled Use Case for ME P2P Tunnels
  
  In this example, the yellow independent ME network with a controller is dedicated to transmitting ME channels. P2P can be transmitted via cables or via Quantum Rings.

<GameScene zoom="3"  width="400">
  <ImportStructure src="../assets/structures/compact-p2p-me.snbt" />
  <IsometricCamera yaw="-60" pitch="30" />
</GameScene>
  
For another example (including its use with [Quantum Bridges](quantum_bridge.md)) see this MS Paint diagram I can't be bothered to touch up:

  ![P2P and quantum bridges](../assets/images/p2p_quantum_network.png)


## Types of P2P Tunnel and Attunement

There are many types of P2P tunnel. Only the ME P2P tunnel is directly craftable, the others are made by right-clicking other P2P tunnels with certain items:
- P2P Tunnel - ME: Right-click with any [ME Cable](../items-blocks/cables.md) to convert.
- P2P Tunnel - Redstone: Right-click with any redstone component to convert.
- P2P Tunnel - Item: Right-click with a chest to convert.
- P2P Tunnel - Fluid: Right-click with a bucket, water bottle, or any <ItemImage id="EnderIO:itemLiquidConduit:0" label="right"/> to convert.
- P2P Tunnel - RF: Right-click with any <ItemImage id="EnderIO:itemPowerConduit:0" label="right"/> to convert.
- P2P Tunnel - Light: Right-click with a torch or glowstone to convert.
- P2P Tunnel - OC: Right-click with an <ItemImage id="OpenComputers:cable" label="right"/> to convert.
- P2P Tunnel - Sound: Right-click with a Note Block to convert.
- P2P Tunnel - GT EU: Right-click with any GT Wire or GT Cable to convert.
- P2P Tunnel - ME Interface, <br><RecipesFor id="appliedenergistics2:item.ItemMultiPart:471" />
- P2P Tunnel - ME Dual Interface, <br><RecipesFor id="ae2fc:part_fluid_p2p_interface" />

The usage and characteristics of these P2P variants are basically the same as the ME P2P Tunnel, <Color id="YELLOW">but some tunnel types have quirks</Color>:

- Logistics-type P2P Tunnels will try their best to **evenly distribute** the input across all outputs.
- Item and Fluid P2P Tunnels do not have built-in push or pull. Simply connecting both ends with a P2P Tunnel will not transport contents; you must provide an pushing force at the input end (such as a hopper, electric pump, etc.) or a pulling force at the output end for the contents to be transferred.
- Fluid P2P Tunnels can transfer bidirectionally, but there can still only be one input.
- Using the GT EU P2P Tunnel indirectly extract a 5% voltage tax per amp of current from the output, much like modern Energy P2P Tunnels. For example, if the input is 8192V 16A, the corresponding output will be 7782V 16A.

## <ItemLink id="appliedenergistics2:item.ItemMultiPart:471" showIcon="left"/> and <ItemLink id="ae2fc:part_fluid_p2p_interface" showIcon="left"/>
These are two new P2P Tunnels added by GTNH. They are not used for transmission, but rather, like the Interface/Dual Interface, they are used to push pattern materials. Therefore, the usage marked in red in the scene below is invalid; patterns cannot be transmitted by the P2P Tunnel - Interface/Dual Interface to the output ends. Instead, they should be placed at the **input end**. Currently, both the input and output ends can push pattern materials to adjacent blocks. If a port directly faces a block that cannot accept materials, it will be ignored. Each panel has the basic functions of an [Interface](../items-blocks/interface.md) / [Dual Interface](../items-blocks/interface.md). The blocking mode of each P2P Tunnel - Interface/Dual Interface must be set individually one by one. Every P2P Tunnel - Interface/Dual Interface effectively contains the same patterns as the input end.

By using them, you only need to place the pattern in the input end to parallelize pattern materials, achieving physical parallelism. 

  <GameScene zoom="3" background="transparent" width="400" height="200">
    <ImportStructure src="../assets/structures/p2p-interface.snbt" />
    <TextAnnotation pos="0.5 2 5.5" color="#ff0000" text="Placing patterns in this interface will not work properly."/>
    <TextAnnotation pos="4.5 1.7 5" color="#00ff00" text="Place patterns in this input end to send materials to available ports." maxWidth="180"/>
  </GameScene>

# Nesting
However, you cannot use this to send infinite channels through a single cable. The channel for a ME P2P tunnel will not pass through another ME P2P tunnel, so you cannot recursively nest them. Observe how the outer layer of ME P2P tunnels on the red cables are offline. Note that this only applies to ME P2P tunnels, other P2P tunnel types can pass through a ME P2P tunnel, as seen by the Redstone P2P tunnels working fine.

<GameScene zoom="3" width="600" height="300" align="center" allowLayerSlider={false} >
    <ImportStructure src="../assets/structures/p2p-nesting.snbt" />
    <ImportPonder src="../assets/ponder/p2p-nesting.json" />
</GameScene>

# Linking

The ends of a P2P tunnel connection can be linked using a <ItemLink id="appliedenergistics2:item.ToolMemoryCard" showIcon="left"/>. The tunnel you shift-right-click will be the input and the tunnel you right-click will be the output. You can have multiple outputs, but with ME P2P tunnels, the channels flowing in the input will be split between the outputs, so you can't duplicate channels.

# Recipe

<RecipeFor id="appliedenergistics2:item.ItemMultiPart:460" />