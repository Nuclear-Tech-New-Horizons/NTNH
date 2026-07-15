---
navigation:
  title: "Wires and Cables"
  icon: gregtech:gt.blockmachines:1248
  parent: power-index.md
  position: -3
---

# Wires and Cables

**Wires and cables** are the medium used to connect transmitter blocks and consumer blocks inside a [local power network](enet.md). They do not store power themselves.

Wires have three core parameters, all shown in the tooltip.

# Maximum Voltage and Maximum Current

**Maximum voltage** depends only on the wire material. Wires come in 1x, 2x, 4x, 8x, 12x, and 16x variants, which multiply the material's base maximum current.

- A wire whose maximum voltage is too low cannot transmit higher-voltage energy packets. If either voltage or current exceeds its limit, the wire burns up.
- A wire whose maximum voltage is high enough can safely transmit lower-voltage packets.

Current is additive: the current carried by a given wire segment is the sum of all current flowing through it. Whether a wire segment burns depends on the highest packet voltage among all packets flowing through it.

# Cable Loss Rate

When power is transmitted through wires, current stays the same everywhere along the path, but voltage may fall because of [cable loss](cable-loss.md).

- Cable loss rate does not depend on wire thickness or current. It depends only on the material and on whether the wire is insulated (wire vs cable). Insulated cables often have only half the loss of the corresponding bare wire.
- Some wires have zero loss and therefore behave as superconductors, such as 1x Redstone Alloy Cable, 1x MV Superconductor Wire, and 1x Infinity Wire.

# Replacing and Painting

While holding one kind of wire or cable, <kbd>Shift</kbd> + <kbd>Left-click</kbd> another placed wire or cable to replace it directly. The connection directions and covers are preserved. After replacement, any old wire-to-device connections are broken and must be reconnected.

You can use spray cans to color wires. This is useful for telling apart wires carrying different voltages in different local power networks.
