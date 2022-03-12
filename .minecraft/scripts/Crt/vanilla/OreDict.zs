#priority 99999
//Lacz
//2020.10.16
//OreDict

import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

<ore:steel>.add(<immersiveengineering:metal:8>);
<ore:steel>.add(<mekanism:ingot:4>);

<ore:oreGold>.add(<pyrotech:generated_pile_slag_gold>);

var shears =[
    <pyrotech:clay_shears>,
    <pyrotech:stone_shears>,
    <pyrotech:bone_shears>,
    <pyrotech:flint_shears>,
    <pyrotech:gold_shears>,
    <pyrotech:diamond_shears>,
    <pyrotech:obsidian_shears>,
    <minecraft:shears>
] as IItemStack[];
for i in shears{
    <ore:shears>.add(i);
}

var metal_block = [
    <minecraft:gold_block>,
    <minecraft:iron_block>,
    <minecraft:emerald_block>,
    <minecraft:diamond_block>,
    <minecraft:quartz_block>,
    <tconstruct:metal>,
    <tconstruct:metal:1>,
    <tconstruct:metal:2>,
    <tconstruct:metal:3>,
    <tconstruct:metal:4>,
    <tconstruct:metal:5>,
    <tconstruct:metal:6>,
    <plustic:alumiteblock>,
    <plustic:invarblock>,
    <twilightforest:knightmetal_block>,
    <twilightforest:block_storage>,
    <twilightforest:block_storage:1>,
    <refinedstorage:quartz_enriched_iron_block>,
    <draconicevolution:draconium_block>,
    <draconicevolution:draconic_block>,
    <galacticraftcore:basic_block_core:9>,
    <galacticraftcore:basic_block_core:10>,
    <galacticraftcore:basic_block_core:11>,
    <galacticraftcore:basic_block_core:12>,
    <galacticraftcore:basic_block_core:13>,
    <galacticraftplanets:asteroids_block:7>,
    <galacticraftplanets:mars:8>,
    <immersiveengineering:storage:*>,
    <mekanism:basicblock>,
    <mekanism:basicblock:1>,
    <mekanism:basicblock:2>,
    <mekanism:basicblock:4>,
    <mekanism:basicblock:5>,
    <mekanism:basicblock:12>,
    <mekanism:basicblock:13>,
    <projecte:fuel_block:*>
] as IItemStack[];
for j in metal_block
    {
    <ore:metal_block>.add(j);
    }

<ore:fiery>.add(<twilightforest:fiery_blood>);
<ore:fiery>.add(<twilightforest:fiery_tears>);

//Origins_Eternity
//2021.7.26

<ore:sandpile>.add(<pyrotech:rock:5>);
<ore:sandpile>.add(<pyrotech:rock:9>);

//2021.8.15
<ore:oreTungsten>.add(<contenttweaker:tungsten_ore>);

//2021.8.23
<ore:itemSilicon>.remove(<galacticraftcore:basic_item:2>);

//2021.1.11

var wand =[

<betterbuilderswands:wandiron>,
<betterbuilderswands:wandstone>,
<betterbuilderswands:wanddiamond>,
<betterbuilderswands:wandunbreakable>

] as IItemStack[];
for i in wand{
    <ore:constructionWand>.add(i);
}

//2021.1.22
<ore:oreChromium>.add(<contenttweaker:chromium_ore>);

//2021.1.29
<ore:mushroom>.add(<minecraft:red_mushroom>);
<ore:mushroom>.add(<minecraft:brown_mushroom>);

//2022.2.8
<ore:listAllsugar>.add(<contenttweaker:sugar>);