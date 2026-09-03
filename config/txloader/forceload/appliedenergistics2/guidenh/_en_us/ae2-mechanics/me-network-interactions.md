---
navigation:
  parent: /ae2-mechanics-index.md
  title: Network Interactions
  icon: appliedenergistics2:item.ItemMultiPart:16
---

# Network Interactions

# Independent ME Networks
In vanilla AE2, an ME Network is a group of devices connected by [cables](./channels.md) and other channel-carrying parts. In theory, even a single cable can be a network.

The defining trait of one ME Network is that all of its cables and devices draw [channels](./channels.md) from the same set of controllers.

From this, you can infer that networks which are not connected to each other through cables or channel-carrying devices do not transmit channels to each other, and can therefore be treated as independent ME Networks.

* Naturally, two networks that are physically far apart and not connected via [Wireless Connectors](../items-blocks/wireless_connectors.md) or a [Quantum Ring](./quantum-bridge.md) are independent.
* Two ME Networks connected only by <ItemLink id="appliedenergistics2:item.ItemMultiPart:140" showIcon="left"/> or <ItemLink id="appliedenergistics2:item.ItemMultiPart:120" showIcon="left"/> are also treated as independent networks. Quartz Fiber transmits power but not channels, while Cable Anchors transmit neither power nor channels and are only used to separate adjacent cables. Cables of different colors also do not connect to each other; see [Channels](./channels.md) for details.

# Interaction Between Networks
Networks are not only independent. They can also interact with each other, and these interactions can be very flexible. They are the basis of most AE2 automation systems. Broadly speaking, as long as two independent ME Networks affect each other, that can be considered network interaction. Using an ME P2P tunnel to transmit channels in [P2P](./p2p_tunnels.md) is one example.

> See also: [Subnetworks](./subnetworks.md)

Interaction between ME Networks mainly depends on [Interfaces](../items-blocks/interface.md) and [Storage Buses](../items-blocks/storage_bus.md), whose behavior gives different networks different roles.

## Typical Read Interaction

Two ME Networks usually have a structure like this:

<GameScene zoom="4" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-basic_interacton.snbt" />
</GameScene>

Because of how Interfaces and Storage Buses work, the blue network is usually the side being accessed, while the white network is usually the side doing the accessing. In this setup, the blue network is treated by the white network as a large "container", and the white network can [read from or write to](./import-export-storage.md) it.

## Nested Interaction
The structure above can be nested into multiple layers. However, this arrangement has a narrow range of practical use cases, and careless use can consume a very large amount of hardware resources.

<GameScene zoom="3" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-nesting_interacton.snbt" />
</GameScene>

## Mutual Reading
If two networks can read each other's contents through Storage Buses, then those two ME Networks are mutually reading from one another. In some cases this is a technical workaround for a special need, but in most cases it only causes storage confusion and can severely hurt game performance.

<GameScene zoom="3" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-network_read.snbt" />
</GameScene>
