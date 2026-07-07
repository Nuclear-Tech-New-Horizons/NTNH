---
navigation:
  parent: /ae2-mechanics-index.md
  title: Spatial IO
  icon: appliedenergistics2:tile.BlockSpatialPylon
---

# Spatial IO

Spatial IO is a way to cut-and-paste physical volumes of space in your world. Through a multiblock structure composed of <ItemLink id="appliedenergistics2:tile.BlockSpatialPylon" showIcon="left"/> and <ItemLink id="appliedenergistics2:tile.BlockSpatialIOPort" showIcon="left"/>, it allows you to compress a defined volume of space into a Spatial Storage Cell, carry it with you, and release the stored contents anywhere. You can even move end portal frames!

Spatial Pylons can move blocks and entities, which means if you have the means to move storage cells across dimensions and automate the Spatial IO system, you can even use Spatial Pylons to teleport living entities, including players, across dimensions. However, do note that the energy cost of Spatial Pylons is quite significant. During periods when power generation is tight, its best to calculate the operation cost in advance.

# Spatial Pylon Multiblock Structure
The operation of Spatial IO requires a defined area, and the volume of this space must be less than or equal to the volume of the Spatial Storage Cell used.

The area of effect is defined by Spatial Pylon blocks. All Spatial Pylons must be in the same ME Network; using a subnetwork is recommended. Using 1\*1\*n (n>1) adjacent Spatial Pylon blocks can form a Spatial Pylon pillar. Multiple pillars will construct a 1-block thick square shell, and the space inside it is the area of effect for the Spatial IO system. In other words, the area of effect for Spatial IO is one block smaller than the bounds of the entire Spatial Pylon multiblock structure.

The construction of the Spatial IO multiblock system follows these rules:
  * Each Spatial Pylon pillar must be composed of at least 2 Spatial Pylon blocks, and the pillar must be a straight line.
  * All Spatial Pylon pillars must be in the same ME Network, and each pillar occupies 1 channel.
  
<GameScene zoom="2" rotateY={200} height="200"  >
    <ImportStructure src="../assets/structures/spatial_io-spatial_pylons_rule.snbt" />
    <BoxAnnotation min="3 0 0" max="5 1 1" color="#EE3333" thickness="1">
      This Spatial Pylon pillar is dark red, indicating it is unpowered. It might be difficult to distinguish the two in this scene, but it is much more obvious in-game.
    </BoxAnnotation>
</GameScene>

  * The area of effect is defined by the Spatial Pylon blocks with the maximum and minimum X, Y, and Z coordinates across the entire Spatial Pylon system.
  * The minimum defined area of effect is 1\*1\*1.
  * All Spatial Pylon pillars must be located on the square shell. There cannot be any active Spatial Pylon pillars within the area of effect inside the shell.
  * Valid Spatial Pylon textures will connect.
    * A dotted purple texture indicates an invalid Spatial Pylon structure.
    * Dark red Spatial Pylons indicate they are unpowered.
    * Bright red Spatial Pylons indicate a valid Spatial Pylon structure, but the multiblock structure has not formed a valid area of effect.
    * Bright purple Spatial Pylons indicate that the multiblock structure is fully formed.

<GameScene zoom="2"  width ="300" height="200" rotateY={225} >
    <ImportStructure src="../assets/structures/spatial_io-spatial_pylons_rule2.snbt" />
    <Block id="appliedenergistics2:tile.BlockCableBus" nbt='{__guidenh_encoded_keys_v1:[0:{v:{id:"appliedenergistics2:item.ItemMultiPart",Count:1b,Damage:36s},k:"def:6"},1:{v:{},k:"extra:6"}],id:"BlockCableBus",hasRedstone:2}' x="2" z="2"/>
    <BoxAnnotation min="5 0 0" max="0 5 5" color="#EE3333" thickness="1" alwaysOnTop={true}>
      The red box shows the bounds of the Spatial Pylon structure, and the area of effect is located inside the "shell".
    </BoxAnnotation>
    <BoxAnnotation min="4 1 1" max="1 4 4" color="#00ff00" thickness="1">
      The green box is the Spatial IO area of effect. Placing a new Spatial Pylon pillar connected to the same network within this area will result in an invalid Spatial Pylon multiblock structure.
    </BoxAnnotation>
</GameScene>

# Spatial IO Port
The <ItemLink id="appliedenergistics2:tile.BlockSpatialIOPort" showIcon="left"/> is the control terminal for Spatial IO operations. It displays the statistical information of the multiblock structure.

After building the entire system, if you want to execute a Spatial IO operation, place a Spatial Storage Cell in the input slot and send a redstone pulse to the Spatial IO Port; the Spatial IO system will then activate. Note that any blocks and entities within the area of effect, including yourself, will be stored inside the cell. If you have no way to escape, you will be trapped in the Spatial Storage Cell dimension - a dark, featureless space. You can use this to prank your friends!

# Energy Consumption
Each activation of the Spatial IO Port consumes the required energy all at once. The value is listed in the Spatial IO Port, so prepare enough [Energy Cells](../items-blocks/energy_cells.md) in advance.

The energy consumption for a single Spatial IO operation grows exponentially with the volume of the area of effect, and it is influenced by the energy efficiency coefficient. During periods when power generation is tight, improving power generation is a wise choice.

Simply put, energy efficiency is positively correlated with the number of Spatial Pylons constituting the multiblock structure, but the reduction effect of energy efficiency on power consumption decreases logarithmically. This means that achieving maximum reduction requires extremely high energy efficiency, which in turn requires more Spatial Pylon blocks. Considering the energy consumption alongside the crafting costs of the Energy Cells and Spatial Pylon blocks themselves, a balance is usually reached at around 50~60% efficiency.

# Complete Operational Structure
If you understand all the rules of the multiblock structure, you can see that the structure below is valid and operational.

<GameScene zoom="2" width="300" rotateY={200} >
    <ImportStructure src="../assets/structures/spatial_io-mess.snbt" />
    <BoxAnnotation min="7 0 8" max="0 5 0" color="#EE3333" thickness="1">
    </BoxAnnotation>
    <BoxAnnotation min="6 1 7" max="1 4 1" color="#00ff00" thickness="1">
    </BoxAnnotation>
</GameScene>

However, it is too messy and not concise enough. In practice, you can refer to the structural designs below:
<GameScene zoom="2" width="300" rotateY={200} >
    <ImportStructure src="../assets/structures/spatial_io-simple.snbt" />
    <BoxAnnotation min="9 0 0" max="5 4 4" color="#EE3333" thickness="1">
    </BoxAnnotation>
    <BoxAnnotation min="8 1 1" max="6 3 3" color="#00ff00" thickness="1">
    </BoxAnnotation>
    <BoxAnnotation min="4 0 0" max="0 4 4" color="#EE3333" thickness="1">
    </BoxAnnotation>
    <BoxAnnotation min="3 1 1" max="1 3 3" color="#00ff00" thickness="1">
    </BoxAnnotation>
</GameScene>

A structure with higher energy efficiency:

<GameScene zoom="2" width="300" rotateY={-135} >
    <ImportStructure src="../assets/structures/spatial_io-efficiency.snbt" />
    <BoxAnnotation min="6 0 6" max="0 5 0" color="#EE3333" thickness="1">
    </BoxAnnotation>
    <BoxAnnotation min="5 1 5" max="1 4 1" color="#00ff00" thickness="1">
    </BoxAnnotation>
</GameScene>

Now that everything is ready, let's activate Spatial IO!

<GameScene zoom="2" width="400" height="275" rotateY={30}>
    <ImportStructure src="../assets/structures/spatial_io-working.snbt" />
    <ImportPonder src="../assets/ponder/spatial_io-working.json" />
</GameScene>

# Spatial Storage Cell Dimension
The working principle of the Spatial Pylon is to swap the entire space within the selected area with a space of the same size inside the [Spatial Storage Cell](../items-blocks/spatial_cells.md). When a new Spatial Storage Cell is used for the first time, the cell creates a dimension that perfectly matches its volume specifications. In other words, you can think of every new Spatial Storage Cell as being filled with air blocks; the first time the Spatial Pylon is used for spatial exchange, it will swap out the correspondingly sized air volume from the storage cell.

<Color id="RED">Once a Spatial Storage Cell is used, you cannot reset, format, or adjust its size. If you wish to use a different size, you must craft a new cell.</Color>

<GameScene zoom="2" width="400" height="200" rotateY={200} offsetX={-120} offsetY={-60}  allowLayerSlider={false} gridButtonEnabled={false}>
    <ImportStructure src="../assets/structures/spatial_io-dimension.snbt" />
    <BoxAnnotation min="-3 2 -2" max="-6 5 1" color="#EE3333" thickness="1">
    Spatial Storage Cell Dimension
    </BoxAnnotation>
    <ImportPonder src="../assets/ponder/spatial_io-dimension.json" />
</GameScene>