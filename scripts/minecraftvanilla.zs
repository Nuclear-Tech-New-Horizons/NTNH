recipes.remove(<minecraft:stonebrick:1>);
recipes.remove(<minecraft:mossy_cobblestone>);
recipes.remove(<minecraft:chainmail_boots>);
recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:anvil>);
recipes.remove(<minecraft:flint_and_steel>);
recipes.removeShaped(<minecraft:cauldron>, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.removeShaped(<minecraft:hopper>, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:chest>, <ore:ingotIron>], [null, <ore:ingotIron>, null]]);


recipes.removeShaped(<minecraft:fire>, [[<ore:cobblestone>, null, null], [<ore:cobblestone>, null, null], [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]]);


recipes.addShapeless(<minecraft:mossy_cobblestone>, [<minecraft:cobblestone>, <minecraft:vine>]);
recipes.addShapeless(<minecraft:stonebrick:1>, [<minecraft:stonebrick>, <minecraft:vine>]);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:ingotSteel>, <minecraft:flint>]);
recipes.addShaped(<minecraft:hopper>, [[<hbm:item.plate_steel>, null, <hbm:item.plate_steel>], [<hbm:item.plate_steel>, <ore:chest>, <hbm:item.plate_steel>], [null, <hbm:item.plate_steel>, null]]);
recipes.addShaped(<minecraft:anvil>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<minecraft:cauldron>, [[<ore:plateLead>, null, <ore:plateLead>], [<ore:plateLead>, null, <ore:plateLead>], [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);
