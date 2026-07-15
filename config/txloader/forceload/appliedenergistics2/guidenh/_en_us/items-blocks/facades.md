---
navigation:
  parent: /items-blocks-index.md
  title: Facades
  icon: facade
  icon_nbt: '{item: "minecraft:stone"}'
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:facade
---

# Facades

Facades can be used to make your base look cleaner. They can cover both sizes of cable and can be made from many kinds of blocks.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/facades_1.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

They can cover all sides of a cable, but still allow [subparts](../ae2-mechanics/cables-subparts.md) and cable connections to protrude through them.

<GameScene zoom="6"  interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_2.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Used well, they can improve your base aesthetics or let you build blocks with different textures on each side.

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/facades_3.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Hiding Facades

Facades are hidden while you are holding a <a href="network_tool.md">Network Tool</a> in either hand.

You can interact with the blocks behind hidden facades without removing the facades first.

## Recipe

Place the block whose texture you want in the middle of 4 <ItemLink id="cable_anchor" />s.

![Facade Recipe](../assets/diagrams/facade_recipe.png)
