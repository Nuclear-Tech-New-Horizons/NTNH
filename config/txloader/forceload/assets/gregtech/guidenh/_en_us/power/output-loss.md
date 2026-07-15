---
navigation:
  title: "Transmission Internal Resistance"
  icon: gregtech:gt.blockmachines:21
  parent: power-index.md
  position: -6
---

# Transmission Internal Resistance

All [transmitter blocks](enet.md) - including generators, [battery buffers](distribution.md#battery-buffers), [transformers](distribution.md#transformers), and similar blocks - have **internal resistance loss** when outputting EU. This loss is deducted directly from the internal EU buffer and does not affect output voltage or current.

> [!IMPORTANT]
> Internal resistance loss is not the same thing as a generator's fuel efficiency. It is a separate multiplicative loss on top of fuel efficiency.

# Mechanism

Any transmitter block always consumes $$8 \times 4^{\text{tier index}} \text{ V} + 2^{\text{tier index} - 1} \text{ EU}$$ from its internal EU buffer in order to produce one standard-voltage energy packet containing $$8 \times 4^{\text{tier index}} \text{ EU}$$.

This means any block transmitting at LV standard voltage only has a real efficiency of $$\frac{32}{33}$$, multiplicatively. For every voltage tier above that, the absolute efficiency loss is halved.

| Output Voltage | Output Packet | Internal Buffer Cost | Lost Energy | Actual Efficiency |
|----------------|---------------|----------------------|-------------|-------------------|
| LV (32 V) | 32 EU | 33 EU | 1 EU | 96.97% |
| MV (128 V) | 128 EU | 130 EU | 2 EU | 98.48% |
| HV (512 V) | 512 EU | 516 EU | 4 EU | 99.24% |
| EV (2,048 V) | 2,048 EU | 2,056 EU | 8 EU | 99.62% |
| IV (8,192 V) | 8,192 EU | 8,208 EU | 16 EU | 99.81% |

Because the loss is small and does not change output voltage, you usually do not need to care about it at high voltage.

Example: when a Basic Steam Turbine outputs 32 EU/t, its internal resistance loss is 1 EU/t, so its real steam cost should be calculated against 33 EU/t. When an Advanced Steam Turbine outputs 32 EU/t, the internal resistance loss is 0.5 EU/t, so it is more efficient.
