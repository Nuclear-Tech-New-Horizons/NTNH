---
navigation:
  parent: /items-blocks-index.md
  title: 升级卡
  icon: speed_card
  position: 410
categories:
- tools
item_ids:
- appliedenergistics2:item.ItemMultiMaterial:25
- appliedenergistics2:item.ItemMultiMaterial:28
- appliedenergistics2:item.ItemMultiMaterial:26
- appliedenergistics2:item.ItemMultiMaterial:27
- appliedenergistics2:item.ItemMultiMaterial:68
- appliedenergistics2:item.ItemMultiMaterial:29
- appliedenergistics2:item.ItemMultiMaterial:30
- appliedenergistics2:item.ItemMultiMaterial:31
- appliedenergistics2:item.ItemMultiMaterial:53
- appliedenergistics2:item.ItemMultiMaterial:69
- appliedenergistics2:item.ItemMultiMaterial:64
- appliedenergistics2:item.ItemMultiMaterial:54
- appliedenergistics2:item.ItemMultiMaterial:55
- appliedenergistics2:item.ItemMultiMaterial:56
- appliedenergistics2:item.ItemMultiMaterial:63
- appliedenergistics2:item.ItemMultiMaterial:65
- appliedenergistics2:item.ItemMultiMaterial:66
- appliedenergistics2:item.ItemMultiMaterial:67
---

# 升级卡
<Column>
  <Row>
    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:26" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:27" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:68" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:29" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:30" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:56" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:67" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:31" scale="2" />
  </Row>

  <Row>
    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:53" scale="2" />   
   
    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:69" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:54" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:55" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:64" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:63" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:65" scale="2" />

    <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:66" scale="2" />
  </Row>
</Column>
升级卡会改变AE2设备和机器的行为，提高其速度、改善其过滤能力、启用红石控制等。

## 卡组件

<Row>
  <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:25" scale="2" />

  <ItemImage id="appliedenergistics2:item.ItemMultiMaterial:28" scale="2" />
</Row>

升级卡由基础卡或高级卡作为基底合成

<Row>
  <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:25" />

  <RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:28" />
</Row>

## 红石卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:26" scale="2" />

红石卡为设备添加红石控制功能，在其 GUI 中增加一个切换按钮，用于在不同红石条件之间切换。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:26" />

## 容量卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:27" scale="2" />

容量卡增加输入总线、输出总线、存储总线以及成型面板的过滤槽位数量。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:27" />

## 溢出销毁卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:68" scale="2" />

溢出销毁卡可应用于<ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />中的[存储元件](storage_cells.md)，当元件已满时会删除传入的物品。（请确保对你的元件进行[分区](cell_workbench.md)！）与均分卡结合使用时，如果元件中特定物品的分区已满，即使其他物品的分区仍有空间，该物品也会被销毁。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:68" />

## Fuzzy Card

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:29" scale="2" />

模糊卡允许拥有过滤功能的设备和工具按耐久度进行过滤和或忽略物品 NBT，使你可以导出所有铁斧（无论耐久度和附魔如何），或者仅导出已损坏的钻石剑（而不是完全修复的）。

以下是模糊耐久比较模式工作原理的示例，左侧是总线配置，顶部是被比较的物品

|      25%      |    10% 损坏的镐    |    30% 损坏的镐    |    80% 损坏的镐    |   完全修复的镐   |
| :-----------: | :---------------: | :---------------: | :---------------: | :-------------: |
|   近乎破损的镐   |        ✔         |      \*\*\*\*      |      \*\*\*\*      |    \*\*\*\*      |
|   完全修复的镐   |     \*\*\*\*      |        ✔         |        ✔         |       ✔        |

---

|      50%      |    10% 损坏的镐    |    30% 损坏的镐    |    80% 损坏的镐    |   完全修复的镐   |
| :-----------: | :---------------: | :---------------: | :---------------: | :-------------: |
|   近乎破损的镐   |        ✔         |        ✔         |      \*\*\*\*      |    \*\*\*\*      |
|   完全修复的镐   |     \*\*\*\*      |     \*\*\*\*      |        ✔         |       ✔        |

---

|      75%      |    10% 损坏的镐    |    30% 损坏的镐    |    80% 损坏的镐    |   完全修复的镐   |
| :-----------: | :---------------: | :---------------: | :---------------: | :-------------: |
|   近乎破损的镐   |        ✔         |        ✔         |      \*\*\*\*      |    \*\*\*\*      |
|   完全修复的镐   |     \*\*\*\*      |                   |        ✔         |       ✔        |

---

|      99%      |    10% 损坏的镐    |    30% 损坏的镐    |    80% 损坏的镐    |   完全修复的镐   |
| :-----------: | :---------------: | :---------------: | :---------------: | :-------------: |
|   近乎破损的镐   |        ✔         |        ✔         |        ✔         |    \*\*\*\*      |
|   完全修复的镐   |     \*\*\*\*      |     \*\*\*\*      |     \*\*\*\*      |       ✔        |

---

|     忽略      |    10% 损坏的镐    |    30% 损坏的镐    |    80% 损坏的镐    |   完全修复的镐   |
| :-----------: | :---------------: | :---------------: | :---------------: | :-------------: |
|   近乎破损的镐   |        ✔         |        ✔         |        ✔         |     **✔**       |
|   完全修复的镐   |     **✔**        |     **✔**        |     **✔**        |       ✔        |

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:29" />

## 加速卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:30" scale="2" />

加速卡让一切变得更快，使输入总线和输出总线每次操作移动更多物品，并使压印器和组装器工作得更快。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:30" />

## 超级加速卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:56" scale="2" />

超级加速卡是基础加速卡的更快版本，但仅适用于 ME-IO 端口、ME 输入/输出总线、ME 流体输入/输出总线。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:56" />

## 超光速加速卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:67" scale="2" />

超光速加速卡是可用于传输物品或流体的最快的 AE 卡，但仅适用于 ME-IO 端口、ME 输入/输出总线。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:67" />

## 反向卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:31" scale="2" />

反向卡将设备和工具中的过滤器从白名单切换为黑名单。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:31" />

## 合成卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:53" scale="2" />

合成卡使设备可以向你的[自动合成](../ae2-mechanics/autocrafting.md)系统发送合成请求，以获取所需的物品。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:53" />

## 均分卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:69" scale="2" />

均分卡可应用于<ItemLink id="appliedenergistics2:tile.BlockCellWorkbench" />中的[存储元件](storage_cells.md)，并根据卡片的[分区](cell_workbench.md)将元件划分为大小相等的分区。这可以防止单一物品类型完全填满元件。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:69" />

## 样板容量卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:54" scale="2" />

每张样板容量卡为接口额外提供 9 个样板槽位，每个接口最多可安装 3 张卡。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:54" />

## 矿词过滤卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:55" scale="2" />

允许使用矿词进行过滤，并支持正则表达式匹配。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:55" />

## 粘性卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:64" scale="2" />

在此元件上分区的任何物品、流体和要素只能存储在带有粘滞卡的元件或存储总线中，不会存储在网络中的其他地方。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:64" />

# 高级阻挡卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:63" scale="2" />

高级阻挡卡将阻挡范围扩展到整个连接的 ME 网络，而不仅仅是相邻的容器。启用后，如果目标网络包含相关物品或流体，接口将阻止导入配方原料。

在默认模式下，只有当网络中存在与配方相关的物品或流体（不包括催化剂，如透镜、电路或模具）时，才会触发阻挡。

在宽松模式下，只要网络中存在任何物品或流体，就会触发阻挡。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:63" />

## 锁定卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:65" scale="2" />

有 4 种模式：

*   模式 1：永不锁定合成
*   模式 2：锁定合成直到收到红石脉冲
*   模式 3：有红石信号时锁定合成
*   模式 4：无红石信号时锁定合成


<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:65" />

## 伪合成卡

<ItemImage id="appliedenergistics2:item.ItemMultiMaterial:66" scale="2" />

如果接口安装了此卡，它将在提交合成任务后立即完成任务，而不等待结果返回。此效果仅当所提交合成任务的最终输出正是预期产物时才生效。

<RecipeFor id="appliedenergistics2:item.ItemMultiMaterial:66" />
