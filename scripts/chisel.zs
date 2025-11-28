
recipes.remove(<chisel:autoChisel>);
recipes.removeShaped(<chisel:chisel>, [[null, <ore:ingotIron>], [<ore:stickWood>, null]]);
recipes.addShapeless(<chisel:upgrade>, [<chisel:upgrade:3>]);
recipes.addShapeless(<chisel:upgrade:3>, [<chisel:upgrade:1>]);
recipes.addShapeless(<chisel:upgrade:1>, [<chisel:upgrade:2>]);
recipes.addShapeless(<chisel:upgrade:2>, [<chisel:upgrade>]);
recipes.addShaped(<chisel:autoChisel>, [[<hbm:item.plate_steel>, <chisel:chisel>, <hbm:item.plate_steel>], [null, <hbm:item.plate_steel>, null], [null, <hbm:tile.block_steel>, null]]);
recipes.addShaped(<chisel:chisel>, [[null, <hbm:item.plate_iron>], [<ore:stickWood>, null]]);
<ore:limestone>.addAll(<ore:oreLimestone>);
