#ignoreBracketErrors
import crafttweaker.item.IItemStack;

var items = [
<twilightforest:fiery_ingot>,
<twilightforest:block_storage:*>
] as IItemStack[];

for item in items {
    recipes.remove(item);
}

recipes.addShapeless(<immersiveengineering:metal:8>, [<mekanism:ingot:4>]);
recipes.addShapeless(<twilightforest:steeleaf_ingot>, [<projecte:item.pe_philosophers_stone>, <twilightforest:block_storage>, <twilightforest:block_storage>, <twilightforest:block_storage>, <twilightforest:block_storage>]);
recipes.addShapeless(<twilightforest:block_storage:1>, [<minecraft:iron_block>, <ore:fiery>]);