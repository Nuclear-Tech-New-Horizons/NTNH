---
navigation:
  parent: /ae2-mechanics-index.md
  title: Subnetworks
  icon: appliedenergistics2:item.ItemMultiPart:140
---

# Subnetworks

<GameScene width="600" height="400" zoom={4} rotateX={25} rotateY={-45} centerY={-15} centerZ={4.25}>
    <ImportStructure src="../assets/structures/subnet_demonstration.snbt" />

    <DiamondAnnotation pos="1.5 2.5 9.5" color="#00ff00">
            Transports the assembler outputs into the barrel.
    </DiamondAnnotation>

    <DiamondAnnotation pos="1.5 2.5 8.5" color="#00ff00">
            Transports the top Super Tank's fluids into the bottom one.
    </DiamondAnnotation>

    <DiamondAnnotation pos="1.5 2.5 7.5" color="#00ff00">
            Redstone P2P subnet, transmitting the redstone block \
            power into the redstone lamp.
    </DiamondAnnotation>

    <DiamondAnnotation pos="1.5 2.5 6.5" color="#00ff00">
            Transports the barrel's contents into a item void cell.
    </DiamondAnnotation>

    <DiamondAnnotation pos="1.5 2.5 5.5" color="#00ff00">
            Subnet using the Interface-Storage Bus interaction to \
            act as a local sub-storage that the main network can \
            access.
    </DiamondAnnotation>

    <DiamondAnnotation pos="2.5 0.5 3.5" color="#00ff00">
            EBF autocrafting subnet that transports a pattern's contents \
            into the EBF's inputs, then outputting back to the main network \
            from the same interface that the patterns came through.
    </DiamondAnnotation>
</GameScene>

"Subnetwork" is a rather loosely-defined term, but one might say that a subnetwork is any [network](../ae2-mechanics/me-network-connections.md) that supports your
main network or does some small task. Early on, they are typically small enough to not require controllers, however that changes very quickly with the introduction of multiblocks into your AE2 system.

Their main 3 uses tend to be:

* To restrict what [devices](../ae2-mechanics/devices.md) have access to what storage (for example, you don't want your ore processing subnet to dump its products into your main network, but you still want to see them from main).
* To save channels on your main network, like having an interface with patterns output to an interface connected to several storage buses on several machines, using 1 channel (from main network) instead of putting an interface on several machines, using several channels. 
* To save on dense cables and space, packaging up to 32 main network channels into a single channel on a [P2P](./p2p_tunnels.md) carrier sub-network for efficient channel transport over long distances.

Very important in making a subnet is keeping track of the [network connections](../ae2-mechanics/me-network-connections.md).
Often, people put together some jumble of interfaces and busses and stuff and expect it to be a subnet when
all the devices are still connected to the main network through various fullblock devices.

> [!NOTE]
> Cables with different colors have nothing to do with making a subnetwork other than that they won't connect to each other.

Some use cases for subnets are:

* <Color id="BLUE"> Abstraction</Color>. Manage all the details of a complex crafting operation from your subnetwork, so from the perspective
  of your main net, the entire factory "looks like" one machine.
* <Color id="GREEN"> Parallelism</Color>. Replace a slow machine with 10 copies of the slow machine. From the perspective of your main net, nothing's changed, and you aren't even using any more channels.
* <Color id="YELLOW"> Multiblock patterning</Color>. Send all your ingredients to the same input buses/hatches with ease on a subnet.

Some examples include:

* An import bus and storage bus set up to transfer items or fluids from one container to another like an item or fluid pipe.
* An annihilation plane and storage bus, so that the only place the annihilation plane can put what it breaks is the storage bus, allowing you to filter the plane.
* An interface and formation plane, so that whatever is inserted into the interface gets pushed to the formation plane and placed/dropped in the world.
* A specialized storage system accessible from the main network via the special storage-bus-on-interface interaction, in order to store the output of a farm without endlessly overflowing your main storage.
* And so on

Very useful for making subnetworks is the <ItemLink id="appliedenergistics2:item.ItemMultiPart:140" showIcon="left" />. It transfers power between networks without
connecting them, allowing you to power subnets without needing to put energy acceptors and power cables everywhere.