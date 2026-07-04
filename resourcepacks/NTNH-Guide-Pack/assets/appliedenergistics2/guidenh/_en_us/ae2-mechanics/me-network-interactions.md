---
navigation:
  parent: /ae2-mechanics-index.md
  title: Network Interactions
  icon: appliedenergistics2:item.ItemMultiPart:16
---

# Network Interactions

As defined, an ME Network is a group of devices connected by [cables](./channels.md) and devices capable of transmitting channels. Theoretically speaking, even just a single cable can be a network. 

The defining characteristic of devices and cables within an ME Network is that they all draw [channels](./channels.md) from the same set of controllers.

Therefore, one can conclude that networks which are not interconnected via cables and devices do not transmit channels to each other, and can thus be considered as two independent ME Networks.

* Naturally, two networks that are physically far apart and not connected via [Wireless Connectors](../items-blocks/wireless_connectors.md) or a [Quantum Ring](./quantum-bridge.md) are independent.
* Two ME Networks connected solely by <ItemLink id="appliedenergistics2:item.ItemMultiPart:140" showIcon="left"/> or <ItemLink id="appliedenergistics2:item.ItemMultiPart:120" showIcon="left"/> are also considered two independent networks. This is because Quartz Fiber only transmits power, not channels, and Cable Anchors transmit neither power nor channels, serving only to separate two adjacent cables (cables of different colors will not connect to each other; for specific characteristics, see [Channels](./channels.md)).

# Interaction Between Networks
Networks can not only be independent of each other but can also be interconnected. This connection can be highly diverse and flexible, forming the foundation of the vast majority of AE2 automation systems. Broadly speaking, as long as two independent ME Networks affect each other, it can be considered a network interaction. Transmitting channels using ME P2P Tunnels as detailed in [P2P](./p2p_tunnels.md) is one form of network interaction.

> See also: [Subnetworks](./subnetworks.md)

Interaction between ME Networks essentially relies on [ME Interface](../items-blocks/interface.md)s and [ME Storage Bus](../items-blocks/storage_bus.md)es. The characteristics of the two give different networks different statuses during network interaction.

## Typical Read Interaction

Generally, two ME Networks have the following structure.

<GameScene zoom="4" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-basic_interacton.snbt" />
</GameScene>

Due to the characteristics of the Interface and the Storage Bus, the blue network is usually the accessed party, and the white network is usually the accessing party. In this case, the blue network will be treated by the white network as a large "container", and the white network can [read or write](./import-export-storage.md) contents to/from the blue network.

## Nested Interaction
The structure above can be nested, forming a layer-by-layer arrangement. However, please note that the applicable scope of this arrangement is quite narrow, and improper use will cause massive hardware resource consumption!

<GameScene zoom="3" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-nesting_interacton.snbt" />
</GameScene>

## Mutual Reading
When two networks can read each other's contents through Storage Buses, it means the two ME Networks are mutually reading. Mutual reading is sometimes a technical workaround to satisfy certain special requirements, but in the vast majority of cases, mutual reading will only cause chaos in resource storage and severely impact game performance.

<GameScene zoom="3" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-network_read.snbt" />
</GameScene>