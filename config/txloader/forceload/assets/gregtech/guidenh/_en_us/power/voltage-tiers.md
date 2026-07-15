---
navigation:
  title: "Voltage Tiers"
  icon: gregtech:gt.metaitem.01:32598
  parent: power-index.md
  position: -1
---

# Voltage Tiers

GTNH divides progression into a series of voltage tiers. Advancing your voltage tier is one of the main ways the pack measures technological progress.

The table below shows the voltage range of each tier. The **standard voltage** is the upper bound of each tier. In most cases, every tier up multiplies standard voltage by 4. The standard voltage of a tier is usually $$2 \times 4^n \text{ V}$$, where $$n$$ is the **tier index**: ULV is 0, LV is 1, and so on.

| Tier Index | Abbrev. | Full Name | Voltage Range (V) | Standard Voltage (V) |
|------------|---------|-----------|-------------------|----------------------|
| 0 | ULV | Ultra Low Voltage | 1-8 | 8 |
| 1 | LV | Low Voltage | 9-32 | 32 |
| 2 | MV | Medium Voltage | 33-128 | 128 |
| 3 | HV | High Voltage | 129-512 | 512 |
| 4 | EV | Extreme Voltage | 513-2,048 | 2,048 |
| 5 | IV | Insane Voltage | 2,049-8,192 | 8,192 |
| 6 | LuV | Ludicrous Voltage | 8,193-32,768 | 32,768 |
| 7 | ZPM | Zero Point Module Voltage | 32,769-131,072 | 131,072 |
| 8 | UV | Ultimate Voltage | 131,073-524,288 | 524,288 |
| 9 | UHV | Highly Ultimate Voltage | 524,289-2,097,152 | 2,097,152 |
| 10 | UEV | Extremely Ultimate Voltage | 2,097,153-8,388,608 | 8,388,608 |
| 11 | UIV | Insanely Ultimate Voltage | 8,388,609-33,554,432 | 33,554,432 |
| 12 | UMV | Mega Ultimate Voltage | 33,554,433-134,217,728 | 134,217,728 |
| 13 | UXV | Extended Mega Ultimate Voltage | 134,217,729-536,870,912 | 536,870,912 |
| 14 | MAX | Maximum Voltage | 536,870,913-2,147,483,640 | - |

Tier index is often used in multiblock calculations such as coil heat and maximum parallels.
