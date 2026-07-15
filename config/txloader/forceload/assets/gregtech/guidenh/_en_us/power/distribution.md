---
navigation:
  title: "Power Distribution"
  icon: gregtech:gt.blockmachines:15300
  parent: power-index.md
  position: -7
---

# Power Distribution

By combining voltage conversion, current limiting, and energy storage, multiple [local power networks](enet.md) can be tied together. Devices with these functions are often the bridge between different local power networks: they act as both consumer blocks and transmitter blocks, taking power in from one network through their internal EU buffer and outputting power to another network.

# Transformers

> [!WARNING]
> Switching transformer mode while it is powered causes it to explode immediately.

Transformers change voltage to reduce transmission losses, drive higher-tier machines, and more. Because a transformer is only converting power between voltages, changes in voltage are usually accompanied by changes in current.

**Singleblock transformers** can raise or lower voltage by one tier, while current changes by a factor of 4. They have 1 high-voltage face and 5 low-voltage faces. While holding <ItemLink id="gregtech:gt.metatool.01:14" showIcon="left" />, <kbd>Right-click</kbd> to toggle between step-up mode and step-down mode. The high-voltage face is marked with a circle, the low-voltage faces with squares, and the colors match the tier color shown in the tooltip. In the default step-down mode, the high-voltage face is input and the low-voltage faces are output; in step-up mode, the direction is reversed.

- Maximum input voltage: the standard voltage of the tier corresponding to the input face.
- Output voltage: the standard voltage of the tier corresponding to the output face.
- Maximum current: the tooltip's amperage value is the maximum current of the low-voltage faces; the high-voltage face supports one quarter of that amperage.

The **Energy Distributor** is another singleblock device that converts extremely high current at low voltage into high voltage.

The **Active Transformer** (<ItemLink id="gregtech:gt.blockmachines:15300" showIcon="left" />) is a multiblock transformer. It uses Energy Hatches and Dynamo Hatches as its power I/O. TecTech machines with power transmission enabled can also serve as active transformers.

# Cable Diodes

**Cable diodes** restrict current direction, allowing packets to travel only from the input side to the output side. They also contain a small internal EU buffer, so they provide a limited amount of voltage smoothing.

Cable diodes come in different tiers and current limits. The tooltip shows their maximum allowed voltage and maximum through-current. Exceed either value and the diode burns out.

# Battery Buffers

Battery Buffers are the most common storage devices at low voltage, and they require batteries of the matching tier:

- Maximum input voltage: the nominal voltage of the corresponding tier.
- Maximum input current: 2A x number of batteries.
- Output voltage: the nominal voltage of the corresponding tier.
- Maximum output current: 1A x number of batteries.

Storage devices can input and output power at the same time. Because Battery Buffers have different input and output current limits, they can also be used as an indirect way to limit current. For more storage options, see power storage and transport.
