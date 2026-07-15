---
navigation:
  title: "Local Power Network (Enet)"
  icon: tectech:item.em.EuMeterGT
  parent: power-index.md
  position: -4
---

# Local Power Network (GT-Enet)

The **local power network** (GT-Enet), built around [wires and cables](cable.md), is the main wired power transport system used throughout GTNH.

Within a local power network, energy packets move between the internal EU buffers of singleblock machines and Energy Hatches. This is separate from the rules machines use to spend energy while running recipes. The detailed behavior of the latter is covered in **[Tier Skipping, Overclocking, and Parallels](../tierskipping-overcloking-parallels/index.md)**.

# Network Structure

A local power network has three parts:

- **Transmitter blocks**: output energy packets from their EU buffer. Examples include singleblock generators, the output side of [transformers](distribution.md#transformers) or battery buffers, and Dynamo Hatches. The voltage of the packets they output is usually the standard voltage of their tier.
- **Wires** ([wires and cables](cable.md)): carry energy packets and may reduce their voltage through [cable loss](cable-loss.md). Wires do not store EU.
- **Consumer blocks**: receive energy packets into their EU buffer. Examples include singleblock machines, the input side of transformers or battery buffers, and Energy Hatches. The maximum packet voltage they accept is usually the standard voltage of their tier.

# Request-and-Push Behavior

In game terms, local power networks use a **request-and-push** system. Assuming the setup is safe:

- Power transfer is fundamentally a transfer **from the transmitter block's EU buffer directly into the consumer block's EU buffer**.
- A transmitter block checks consumers whose buffers are not full, then pushes energy packets from its own buffer into them as needed.
- Aside from the extra [transmission internal resistance](output-loss.md) paid when a transmitter converts buffered EU into packets, and the [cable loss](cable-loss.md) paid as each packet travels through wires, no power is wasted for no reason.

# Providing Power Safely

Unsafe setups have catastrophic consequences:

- If the input voltage of a consumer block exceeds its maximum input voltage, the consumer **explodes immediately**. Do not power an LV Arc Furnace with MV packets; instead, use more LV generators or step the voltage down with a [transformer](distribution.md#transformers).
- If a wire carries voltage above its maximum voltage or current above its maximum current, the wire **burns up** and is replaced by fire.

Current is additive: the current carried by a wire segment is the sum of all current flowing through it. The maximum current that can appear in a local power network cannot exceed the total maximum output current of all transmitter blocks in that network. Whether a wire burns depends on the highest packet voltage among all packets flowing through it.

# Providing Power Reliably

Transmitter blocks and consumer blocks each have their own maximum output current and maximum input current. Each tick, there is a limit to how many energy packets a transmitter can push or a consumer can accept.

The purpose of reliable power supply is simple: consumer blocks should always receive enough packets to keep their buffers full and avoid power failures.

Assuming the packet voltage received by the consumer is fixed, the average input current it needs is:

$$I_{\text{required input}} = \frac{P_{\text{recipe}}}{U_{\text{input}}}$$

The necessary conditions for reliable power are:

- The sum of the average input current required by all consumer blocks must not exceed the total maximum output current available from the transmitter blocks.
- The average input current required by each consumer block must not exceed that block's own maximum input current.

If power is insufficient, singleblock machines powerfail and lose progress, while multiblocks powerfail, lose progress, and permanently void their inputs. Make sure the power supply is sufficient.

# Useful Tools

Use a GT EU Meter or a portable scanner on any powered block or wire to display its electrical information.

Pay special attention to these two values:
- **Stored Energy**, which shows the internal EU buffer.
- **Max Input/Output**, which shows maximum input/output voltage and current.
