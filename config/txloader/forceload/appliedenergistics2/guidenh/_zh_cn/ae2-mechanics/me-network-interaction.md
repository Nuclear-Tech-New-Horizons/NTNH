---
navigation:
  parent: /ae2-mechanics-index.md
  title: 网络交互
  icon: appliedenergistics2:item.ItemMultiPart:16
---

# 网络交互

# 独立的ME网络
在AE2原版的定义中，一个ME网络是由通过可以传递频道的[线缆](./channels.md)与设备连接的设备组。理论上讲讲，一根线缆就可以是一个网络。设备与线缆在一个ME网络内的特征是它们都从同一组控制器获取[频道](./channels.md)。

由上文可以推导出来，不经由线缆与设备相互连接的网络互相不传递频道，则可被视为两个独立的ME网络。

* 很自然的，在物理上相隔甚远并且没有经过[无线接入器](../items-blocks/wireless_connectors.md)或[量子环](./quantum-bridge.md)连接的两个网络是独立的。
* 两个仅由<ItemLink id="appliedenergistics2:item.ItemMultiPart:140" showIcon="Left"/>或<ItemLink id="appliedenergistics2:item.ItemMultiPart:120" showIcon="Left"/>连接的ME网络也被视为两个独立的网络，因为石英纤维只传导能量而不传导频道、线缆锚则既不传导能量也不传导频道，仅用作分隔两根相邻的线缆（不同颜色的线缆不会相互连接，具体特性查看[线缆](./channels.md)）。

# 网络之间的交互
网络除了相互独立，还可以产生相互联系，这种联系可以非常多样化与灵活，是绝大多数AE自动化系统的基础。广义上，只要两个独立的ME网络发生了互相的影响，就可以视作网络交互，[P2P](./p2p_tunnels.md)中利用MEP2P通道传递频道就是一种网络交互。ME网络之间的交互基本依赖于[接口](../items-blocks/interface.md)与[存储总线](../items-blocks/storage_bus.md)。二者的特性给了网络交互中不同网络不同的地位。

## 一般的读取交互

通常来说，两个ME网络有以下结构。

<GameScene zoom="4" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-basic_interacton.snbt" />
</GameScene>

由于接口与存储总线的特性，蓝色网络通常是被访问方，白色网络通常是访问方。这种情况下，蓝色网络将被白色网络视为一个大型的“容器”，白色网络可以向蓝色网络[读取或写入](./import-export-storage.md)内容。

## 嵌套交互
上文中的结构可以套娃，构成层层嵌套的形式，但需要注意这种形式适用范围较窄，不当的使用将会造成极大的硬件资源消耗！

<GameScene zoom="3" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-nesting_interacton.snbt" />
</GameScene>

## 网络互读
当两个网络通过存储总线可以互相读取内容时，就代表这两个ME网络互读了，互读有时是一种技术性调整方案以满足某些特殊需求，但绝大多数情况下互读只会造成资源存储的混乱，并且会严重影响游戏性能。

<GameScene zoom="3" width="400" rotateY={0} rotateX={0}>
  <ImportStructure src="../assets/structures/network_interaction-network_read.snbt" />
</GameScene>
