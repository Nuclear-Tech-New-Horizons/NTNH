recipes.remove(<StorageDrawers:halfDrawers4>);
recipes.remove(<StorageDrawers:halfDrawers2>);
recipes.remove(<StorageDrawers:fullDrawers4>);
recipes.remove(<StorageDrawers:fullDrawers2>);
recipes.remove(<StorageDrawers:fullDrawers1>);
recipes.remove(<StorageDrawers:controllerSlave>);
recipes.remove(<StorageDrawers:compDrawers>);
recipes.remove(<StorageDrawers:controller>);

recipes.removeShaped(<StorageDrawers:compDrawers>, [[<minecraft:piston>, <hbm:tile.mass_storage>, <ore:craftingPiston>]]);

recipes.addShaped(<StorageDrawers:halfDrawers4> * 4, [[<hbm:tile.mass_storage:3>, <ore:slabWood>, <hbm:tile.mass_storage:3>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<hbm:tile.mass_storage:3>, <ore:slabWood>, <hbm:tile.mass_storage:3>]]);
recipes.addShaped(<StorageDrawers:halfDrawers2> * 2, [[<ore:slabWood>, <hbm:tile.mass_storage:3>, <ore:slabWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:slabWood>, <hbm:tile.mass_storage:3>, <ore:slabWood>]]);
recipes.addShaped(<StorageDrawers:controllerSlave>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <StorageDrawers:trim>, <ore:plateSteel>], [null, <ore:plateSteel>, null]]);
recipes.addShaped(<StorageDrawers:controller>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <ore:drawerBasic>, <ore:plateSteel>], [null, <ore:plateSteel>, null]]);
recipes.addShaped(<StorageDrawers:compDrawers>, [[<ore:craftingPiston>, <ore:drawerBasic>, <ore:craftingPiston>]]);
recipes.addShaped(<StorageDrawers:fullDrawers4> * 4, [[<hbm:tile.mass_storage:3>, <ore:plankWood>, <hbm:tile.mass_storage:3>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<hbm:tile.mass_storage:3>, <ore:plankWood>, <hbm:tile.mass_storage:3>]]);
recipes.addShaped(<StorageDrawers:fullDrawers2> * 2, [[<ore:plankWood>, <hbm:tile.mass_storage:3>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <hbm:tile.mass_storage:3>, <ore:plankWood>]]);
recipes.addShaped(<StorageDrawers:fullDrawers1>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [null, <hbm:tile.mass_storage:3>, null], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
