// --- Dirt ---
// Remove ex nihilo seeds; keep stones and vanilla seeds
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_grass>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_sugar_cane>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_carrot>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_potato>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_oak>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_acacia>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_spruce>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:dirt>, <exnihilo:seed_birch>);

mods.exnihilo.Sieve.addRecipe(<minecraft:dirt>, <AgriCraft:seedPotato>, 64);
mods.exnihilo.Sieve.addRecipe(<minecraft:dirt>, <AgriCraft:seedCarrot>, 64);
mods.exnihilo.Sieve.addRecipe(<minecraft:dirt>, <AgriCraft:seedSugarcane>, 32);
mods.exnihilo.Sieve.addRecipe(<minecraft:dirt>, <AgriCraft:seedCactus>, 32);

// --- Sand ---
mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>, <exnihilo:seed_cactus>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>, <exnihilo:exnihilo.iron_crushed>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>, <exnihilo:exnihilo.gold_crushed>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>, <exnihilo:exnihilo.copper_crushed>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>, <exnihilo:exnihilo.lead_crushed>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>, <exnihilo:exnihilo.nickel_crushed>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:sand>, <exnihilo:exnihilo.aluminum_crushed>);

mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <hbm:item.bedrock_ore_fragment:2600>, 8);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <hbm:item.bedrock_ore_fragment:7900>, 12);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <hbm:item.bedrock_ore_fragment:2900>, 16);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <hbm:item.bedrock_ore_fragment:8200>, 18);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <hbm:item.bedrock_ore_fragment:2800>, 20);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>, <hbm:item.bedrock_ore_fragment:1300>, 24);

// --- Gravel ---
// Remove broken ores; keep flint, coal, lapis, diamond, emerald
mods.exnihilo.Sieve.removeRecipe(<minecraft:gravel>, <exnihilo:exnihilo.iron_broken>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:gravel>, <exnihilo:exnihilo.gold_broken>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:gravel>, <exnihilo:exnihilo.copper_broken>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:gravel>, <exnihilo:exnihilo.lead_broken>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:gravel>, <exnihilo:exnihilo.nickel_broken>);
mods.exnihilo.Sieve.removeRecipe(<minecraft:gravel>, <exnihilo:exnihilo.aluminum_broken>);

mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <hbm:item.bedrock_ore_fragment:2600>, 8);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <hbm:item.bedrock_ore_fragment:7900>, 12);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <hbm:item.bedrock_ore_fragment:2900>, 16);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <hbm:item.bedrock_ore_fragment:2800>, 20);
mods.exnihilo.Sieve.addRecipe(<minecraft:gravel>, <hbm:item.bedrock_ore_fragment:1300>, 24);

// --- Dust ---
// Remove blaze powder & ex nihilo powders; keep dye, redstone, gunpowder, glowstone, AE2
mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>, <minecraft:blaze_powder>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>, <exnihilo:exnihilo.iron_powdered>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>, <exnihilo:exnihilo.gold_powdered>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>, <exnihilo:exnihilo.copper_powdered>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>, <exnihilo:exnihilo.lead_powdered>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>, <exnihilo:exnihilo.nickel_powdered>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:dust>, <exnihilo:exnihilo.aluminum_powdered>);

mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <hbm:item.bedrock_ore_fragment:2600>, 8);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <hbm:item.bedrock_ore_fragment:7900>, 12);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <hbm:item.bedrock_ore_fragment:2900>, 16);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <hbm:item.bedrock_ore_fragment:8200>, 18);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <hbm:item.bedrock_ore_fragment:2800>, 20);
mods.exnihilo.Sieve.addRecipe(<exnihilo:dust>, <hbm:item.bedrock_ore_fragment:1300>, 24);

// --- Nether Gravel ---
mods.exnihilo.Sieve.removeRecipe(<exnihilo:exnihilo.gravel_nether>, <exnihilo:exnihilo.nether_iron_broken>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:exnihilo.gravel_nether>, <exnihilo:exnihilo.nether_gold_broken>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:exnihilo.gravel_nether>, <exnihilo:exnihilo.nether_copper_broken>);
mods.exnihilo.Sieve.removeRecipe(<exnihilo:exnihilo.gravel_nether>, <exnihilo:exnihilo.nether_nickel_broken>);

mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_nether>, <hbm:item.bedrock_ore_fragment:2600>, 8);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_nether>, <hbm:item.powder_gold>, 12);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_nether>, <hbm:item.bedrock_ore_fragment:2900>, 16);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_nether>, <hbm:item.bedrock_ore_fragment:2800>, 20);

// --- Ender Gravel ---
mods.exnihilo.Sieve.removeRecipe(<exnihilo:exnihilo.gravel_ender>, <exnihilo:exnihilo.ender_lead_broken>);

mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_ender>, <HardcoreEnderExpansion:stardust>, 4);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_ender>, <HardcoreEnderExpansion:end_powder>, 8);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_ender>, <hbm:tile.ore_tikite>, 80);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_ender>, <hbm:item.powder_cobalt_tiny>, 24);
mods.exnihilo.Sieve.addRecipe(<exnihilo:exnihilo.gravel_ender>, <hbm:item.powder_niobium_tiny>, 24);
