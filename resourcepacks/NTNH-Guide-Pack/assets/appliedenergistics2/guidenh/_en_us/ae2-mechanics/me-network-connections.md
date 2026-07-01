---
navigation:
  parent: /ae2-mechanics-index.md
  title: Network Connections
  icon: appliedenergistics2:item.ItemMultiPart:16
quest_ids:
  - AAAAAAAAAAAAAAAAAAAFMQ==
  - tM8pT_W3RCqZNDAovERxFg==
---

# Network Connections

Within the same ME Network, devices in different areas can connect to each other in various ways, either wired or wireless.

## Wired Connections
* Devices within the same ME Network can connect via cables to transmit channels, or they can transmit channels through the devices themselves to adjacent cables and devices. A maximum of 8 channels can be transmitted through a device, equivalent to a standard cable.

* Channels can be transmitted for wired connections using **ME P2P Tunnels**. For more details, refer to [P2P](./p2p_tunnels.md).

* In GTNH, ME Hatches/Buses (<ItemLink id="gregtech:gt.blockmachines:2718" showIcon="left"/>, <ItemLink id="gregtech:gt.blockmachines:2717" showIcon="left"/>, <ItemLink id="gregtech:gt.blockmachines:2710" showIcon="left"/>, or <ItemLink id="gregtech:gt.blockmachines:2713" showIcon="left"/>, etc.) can be toggled into adjacent connection mode by right-clicking them with a <ItemLink id="gregtech:gt.metatool.01:26" showIcon="left"/>. This allows them to transmit channels to adjacent ME Hatches/Buses, AE devices, or cables, just like AE devices. This connection method also transmits a maximum of 8 channels.

## Wireless Connections
* GTNH's fork of AE2 for 1.7.10 provides the <ItemLink id="appliedenergistics2:tile.BlockWirelessConnector" showIcon="left"/> and the <ItemLink id="appliedenergistics2:tile.BlockWirelessHub" showIcon="left"/>. A pair can wirelessly transmit up to 32 channels but <Color id="RED">cannot connect across dimensions</Color>. They can be paired using the <ItemLink id="appliedenergistics2:item.ToolWirelessKit" showIcon="left"/>. The former is for 1-to-1 connections, while the latter can do 1-to-many connections like [P2P Tunnels](./p2p_tunnels.md). Wireless connectors can place a heavy burden on your power grid during the voltage tier when first establishing an ME network, so please calculate power consumption in advance. For specific information, refer to the quest book page "<QuestLink id="AAAAAAAAAAAAAAAAAAAFMQ==" />".

* Vanilla AE2 provides a way to connect networks wirelessly—the ME Quantum Network Bridge. Each pair can wirelessly transmit up to 32 channels and <Color id="GREEN">can connect across dimensions</Color>. For specific usage, refer to the [Quantum Bridge](./quantum-bridge.md) page.

* The <ItemLink id="RIO:tile.remote_interface" showIcon="left"/> is a block from the RemoteIO mod. The Remote Interface acts similarly to a <ItemLink id="ThaumicTinkerer:interface" showIcon="left" />; it can remotely proxy a block, gaining all the functions of the target block while proxying. Additionally, it <Color id="GREEN">can connect across dimensions</Color>. Its crafting cost has the highest tech requirements among cross-dimensional networking solutions, requiring the ability to craft <ItemLink id="dreamcraft:CircuitIV" showIcon="left"/> and <ItemLink id="gregtech:gt.metaitem.01:32654" showIcon="left"/>.
  * With a <ItemLink id="RIO:item.chip.location" showIcon="left"/> in hand (during crafting, the circuit board must be stamped as any circuit board), Shift+Right-click the ME Controller.
  * Place the Remote Interface at the destination, hold the Location Chip, and Right-click the interface block to load the target.
  * Right-click the Remote Interface with an <ItemLink id="RIO:item.chip.transfer:20" showIcon="left"/> in hand. After these operations, the Remote Interface can transmit channels.