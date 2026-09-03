---
navigation:
  title: Channels
  parent: /ae2-mechanics-index.md
  icon: appliedenergistics2:item.ItemMultiPart:56
---

# Channels

## What Are Channels?

Channels are a resource consumed by devices in an AE2 [ME Network](me-network-connections.md). An ME network uses channels to support [devices](devices.md) that provide networked storage and other network services. The number of channels available on cables is limited: each cable can only carry so many channels. When you connect a channel-using device to the network by cable, that device occupies one channel on the cable. Once the cable runs out of channels, newly added devices can no longer connect to the ME network.

<GameScene zoom="4" background="transparent" width="300" rotateX={20} rotateY={-75}>
  <ImportStructure src="../assets/structures/channels-channel_count.snbt" />
  <LineAnnotation
  points="0.35 0.65 5; 0.35 0.65 4.5;0.35 1.5 4.5"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.35 0.5 5; 0.35 0.5 3.5;0.35 1.5 3.5"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.35 0.35 5; 0.35 0.35 2.5;0.35 1.5 2.5"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.65 0.35 5; 0.65 0.35 4.65;2.5 0.35 4.65"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.65 0.65 5; 0.65 0.65 4.65;1.5 0.65 4.65"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.65 0.35 5; 0.65 0.35 4.35;2.5 0.35 4.35"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.65 0.65 5; 0.65 0.65 4.35;1.5 0.65 4.35"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.5 0.5 5; 0.5 0.5 4.5;2.5 0.5 4.5"
  color="#00ff00"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.5 0.55 5;0.5 0.55 4.6"
  color="#ff0000"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
 <LineAnnotation
  points="0.5 0.55 4.4;0.5 0.55 4"
  color="#ff0000"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.5 0.55 3.6;0.5 0.55 3.2"
  color="#ff0000"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.5 0.55 2.8;0.5 0.55 2.4"
  color="#ff0000"
  thickness="1"
  alwaysOnTop={true}>
  </LineAnnotation>
  <LineAnnotation
  points="0.5 0.55 2;0.5 0.55 0.5"
  color="#ff0000"
  thickness="1"
  alwaysOnTop={true}>
  All 8 channels in the cable have been used, so the Drive does not get one. 
  </LineAnnotation>
  <DiamondAnnotation pos="0.5 0.55 2" color="#ff0000">
    All 8 channels in the cable have been used, so the Drive does not get one. 
  </DiamondAnnotation>
</GameScene>

Normal cables can carry 8 channels, while dense cables can carry 32 channels. An easy way to observe channel usage is to use [Smart Cables](../items-blocks/cables.md#smart-cables), which show channel usage with their textures and lighting.


# Channel Routing

In an ME network with an <ItemLink id="appliedenergistics2:tile.BlockController" showIcon="left" />, channels are routed in three steps:

1. The channel takes the shortest path from the adjacent device to the nearest normal cable, whether that is Glass Cable, Covered Cable, or Smart Cable.
2. It then continues along that normal cable to the nearest dense cable.
3. It finally travels along that dense cable to the ME Controller.

If the shortest path is already full, some devices may fail to receive the channels they need.

You can use cable coloring, <ItemLink id="appliedenergistics2:item.ItemMultiPart:140" showIcon="left"/>, and <ItemImage id="appliedenergistics2:item.ItemMultiPart:120" yOffset="2" /><ItemLink id="appliedenergistics2:item.ItemMultiPart:120"/> to force channels to travel along the path you want. Color does not affect channel priority. It only prevents cables of different colors from connecting to each other, which helps control channel routing.

> [!NOTE]
> Uncolored (Fluix) cables can connect to cables of any color.

For example, in the following setup the cables form a loop. Because channels always try to use the shortest path, some Drives end up losing channels and going offline.

<GameScene zoom="2" background="transparent" width="200" rotateX={90} rotateY={-90}>
    <ImportStructure src="../assets/structures/channels-channel_loop1.snbt" />
</GameScene>

This can be fixed by carefully constraining channel paths with cable colors, Quartz Fiber, and Cable Anchors. Network structures should be tree-like, with as few loops and ambiguous mesh paths as possible.

<GameScene zoom="2" background="transparent" width="200" rotateX={90} rotateY={-90}>
    <ImportStructure src="../assets/structures/channels-channel_loop2.snbt" />
</GameScene>


# Network Design

As described above, ME networks should be designed as branching trees. Use dense cables as the main trunk carrying channels out of the controller, then split off normal cables from the dense line to feed devices. Each normal cable group should serve no more than 8 devices. If you need more, split off another normal cable branch from the dense cable.

The following is an example of a <Color id="RED">poorly structured</Color> network. It is full of loops: the cables form loops, and direct channel transmission between devices also creates loops. The result is a network that is hard to read, hard to analyze, and likely to leave some components offline because they do not receive channels.

<GameScene zoom="4" background="transparent" width="400" rotateX={30} rotateY={100}>
    <ImportStructure src="../assets/structures/channels-bad_design.snbt" />
</GameScene>

Here is an example of a <Color id="GREEN">well-structured</Color> network:
<GameScene zoom="2" background="transparent" width="400" rotateY={-115} rotateX={30}>
    <ImportStructure src="../assets/structures/channels-good_design.snbt" />
    <BoxAnnotation min="11 0 8" max="13 1 5" color="#00ff1a" thickness="1">
      Use different cable colors to separate sections so they are easier to identify and less likely to connect accidentally.
    </BoxAnnotation>
    <BoxAnnotation min="5 0 4" max="3 4 6" color="#00ff1a" thickness="1">
      This normal cable carries exactly 8 channels for 8 Interfaces. There is no channel shortage and no waste here, because Molecular Assemblers themselves do not use channels.
    </BoxAnnotation>
</GameScene>

# Ad-Hoc Networks

A network without an <ItemLink id="appliedenergistics2:tile.BlockController" showIcon="left" /> is an ad-hoc network. It can support at most 8 channel-using devices. If you exceed 8 devices, the entire network fails instead of only the extra devices going offline. At that point, you must either remove some devices or add an ME Controller.

Unlike a normal controller-based network, Smart Cables in an ad-hoc network show the total number of channels in use across the whole network, not the number passing through that specific cable.

In practice, every device in an ad-hoc network occupies one channel on every cable in the entire network. That is completely different from how an ME Controller allocates channels by shortest path. In other words, all used channels are spread evenly across the entire ad-hoc network, and there is no real notion of a routed channel path.

<FloatingImage src="../../assets/images/channels_normal_network.png"  wrap="top-bottom" align="left"  width="300" title="Normal Network" >
  <ImageAnnotation>
  Normal Network
  </ImageAnnotation>
</FloatingImage>
<FloatingImage src="../../assets/images/channels_ad-hoc_network.png"  wrap="top-bottom" align="left"  width="300" title="Ad-Hoc Network" >
  <ImageAnnotation>
  Ad-Hoc Network
  </ImageAnnotation>
</FloatingImage>
