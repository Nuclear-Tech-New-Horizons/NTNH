---
navigation:
  title: "Cable Loss"
  icon: gregtech:gt.metatool.01:26
  parent: power-index.md
  position: -5
---

# Cable Loss

**Cable loss** is the extra power cost that may occur while power is transmitted through [wires and cables](cable.md). It is a core mechanic of the GT [local power network](enet.md). Early in the game, because machine voltages are low, controlling cable loss is very important. As voltage tiers rise, cable loss becomes less important.

# Loss Rate

Each [wire and cable](cable.md) has a cable loss rate parameter (shown in the tooltip as "loss/m/amp: x V"). Let that loss rate be $$\rho$$ and wire length be $$L$$. Then the actual input voltage after a packet passes through the wire is:

$$U_{\text{input}} = U_{\text{output}} - \rho L_{\text{wire}}$$

The power lost to the wire is:

$$P_{\text{cable loss}} = I \rho L_{\text{wire}}$$

So cable loss is proportional to loss rate, current, and wire length. If wire length, loss rate, and transmitted power stay the same, then raising transmission voltage lowers current and therefore indirectly lowers cable loss. **Every tier increase in transmission voltage reduces cable loss to one quarter**.

Example: any Tin Cable has a loss rate of 1 V/m. If 32V 2A power travels through 2 m of Tin Cable, it becomes 30V 2A at the destination, and the cable loss along the way is 4 EU/t.

The section [Providing Power Reliably](enet.md#providing-power-reliably) only considers the zero-loss case. With cable loss present, first calculate the actual packet voltage the consumer receives, then apply the rest of the logic unchanged.

When cable loss reduces voltage, you can compensate for the lost power by increasing input current. However, current cannot exceed either the wire's maximum current or the consumer's maximum input current. If increasing current is still not enough, you need lower-loss wire, higher-current wire, or a shorter transmission path.
