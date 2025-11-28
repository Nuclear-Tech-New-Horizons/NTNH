recipes.remove(<opensecurity:opensecurity.DataBlock>);
recipes.remove(<opensecurity:alarm>);
recipes.remove(<opensecurity:rfidwriter>);
recipes.remove(<opensecurity:rfidreader>);
recipes.remove(<opensecurity:magreader>);

recipes.addShaped(<opensecurity:opensecurity.DataBlock>, [[null, <ore:oc:dataCard1>, null], [<hbm:item.circuit:3>, null, <ore:oc:circuitChip2>], [null, <ore:oc:cable>, null]]);
recipes.addShaped(<opensecurity:alarm>, [[null, <ore:dustRedstone>, null], [<hbm:item.circuit:3>, <minecraft:noteblock>, <ore:oc:cable>], [null, <ore:oc:circuitChip2>, null]]);
recipes.addShaped(<opensecurity:rfidwriter>, [[<ore:oc:circuitChip2>, <ore:oc:ram1>, <ore:oc:circuitChip2>], [<ore:oc:materialTransistor>, <ore:oc:materialCU>, <ore:oc:materialTransistor>], [<hbm:item.circuit:3>, <ore:oc:cable>, null]]);
recipes.addShaped(<opensecurity:rfidreader>, [[null, <ore:dustRedstone>, null], [<hbm:item.circuit:3>, <opensecurity:opensecurity.rfidReaderCard>, <ore:oc:circuitChip2>], [null, <ore:oc:cable>, null]]);
recipes.addShaped(<opensecurity:magreader>, [[<ore:oc:circuitChip2>, null, <ore:oc:circuitChip2>], [<ore:oc:materialTransistor>, null, <ore:oc:materialTransistor>], [<hbm:item.circuit:3>, <ore:oc:cable>, null]]);
