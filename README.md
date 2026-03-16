# TestDatapack

A Minecraft datapack featuring a **Parry System** and a **Custom Dimension** with unique biome generation.

## Features

### Parry System

A skill-based combat mechanic that allows players to parry incoming projectiles and attacks when wielding a sword.

- **Mechanics:**
  - Hold any sword type to activate parry ability
  - Click (use carrot on a stick) to execute a parry
  - 10-tick cooldown between parries for balance
  - 20-tick parry window to catch incoming projectiles
  - Visual feedback with end_rod particles

- **Supported Swords:**
  - Wooden Sword
  - Stone Sword
  - Iron Sword
  - Diamond Sword
  - Golden Sword
  - Netherite Sword

### Custom Dimension

A custom overworld-type dimension with unique world generation settings and biome:

- **Dimension:** `customdim:customdim`
- **Biome:** Blue Forest - features custom world generation parameters
- **Generator:** Noise-based terrain generation with fixed biome source

## Installation

1. Place the `TestDatapack` folder into your world's `datapacks` directory:
   ```
   .minecraft/saves/[YourWorld]/datapacks/TestDatapack/
   ```

2. Load or reload the datapack in your world using:
   ```
   /reload
   ```

3. Look for confirmation messages in chat indicating the datapack has loaded.

## Usage

### Using the Parry System

1. **Equip a Sword** - Hold any sword in your main hand
2. **Trigger Parry** - Right-click (use) with the sword equipped
3. **Parry Active** - You now have a 20-tick window to parry incoming projectiles
4. **Cooldown** - Wait 10 ticks before you can parry again

**Visual Feedback:** End rod particles will appear at your position when you successfully parry.

### Accessing the Custom Dimension

Use the `/execute` command to teleport to the custom dimension, or create a portal using dimension travel mechanics.

## Technical Details

### Scoreboards

The datapack manages several scoreboard objectives:

| Objective | Type | Description |
|-----------|------|-------------|
| `parry.clicks` | minecraft.used:carrot_on_a_stick | Tracks parry click attempts |
| `parry.cooldown` | dummy | Manages parry ability cooldown timer |
| `parry.window` | dummy | Active parry detection window |
| `temp_arrows` | dummy | Temporary arrow tracking |
| `vel_x`, `vel_y`, `vel_z` | dummy | Velocity calculations |
| `multiplier` | dummy | Damage/effect multipliers |

### File Structure

```
TestDatapack/
├── pack.mcmeta              # Pack metadata
└── data/
    ├── customdim/           # Custom dimension namespace
    │   ├── dimension/
    │   │   └── customdim.json
    │   └── worldgen/
    │       ├── biome/
    │       │   └── blue_forest.json
    │       └── noise_settings/
    │           └── settings.json
    └── parry/               # Parry system namespace
        ├── function/
        │   ├── init.mcfunction              # Initialization
        │   ├── load.mcfunction              # Load tag
        │   ├── tick.mcfunction              # Main tick loop
        │   ├── player_parry.mcfunction      # Player parry detection
        │   ├── execute_parry.mcfunction     # Parry execution
        │   ├── parry_window_tick.mcfunction # Parry window handler
        │   └── reflect_projectile.mcfunction # Projectile reflection
        └── predicate/
            └── holding_sword.json           # Sword detection predicate
```

## Pack Information

- **Pack Format:** 94.1 (1.21.2+)
- **Description:** Simple Parry and Custom Dimension Datapack

## Support & Development

The datapack is designed for Minecraft 1.21.2 and later. Compatibility with other versions may vary depending on changes to command syntax and features.

---

*Created for the VOid world*
