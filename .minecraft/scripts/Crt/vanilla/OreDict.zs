#priority 99999
//Lacz
//2020.10.16
//OreDict
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

<ore:steel>.add(<immersiveengineering:metal:8>);
<ore:steel>.add(<mekanism:ingot:4>);

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
for i in shears {
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

//2022.3.12
<ore:string>.add(<pyrotech:material:14>);

//2022.5.2
<ore:carbon>.addAll(<ore:coal>);
<ore:carbon>.addAll(<ore:charcoal>);

<ore:chest>.add(<immersiveengineering:wooden_device0>);
<ore:grout>.add(<tconstruct:soil>);
<ore:blockSlakedlime>.add(<contenttweaker:slakedlime_block>);
<ore:tnt>.add(<minecraft:tnt>);

var flowers =[

<minecraft:red_flower:*>,
<minecraft:yellow_flower>,
<minecraft:double_plant:*>

] as IItemStack[];
for i in flowers {
    <ore:flower>.add(i);
}

var tools = [

<ore:artisansAthame>,
<ore:artisansBeaker>,
<ore:artisansBurner>,
<ore:artisansCarver>,
<ore:artisansChisel>,
<ore:artisansCompass>,
<ore:artisansCutters>,
<ore:artisansCuttingBoard>,
<ore:artisansDriver>,
<ore:artisansFile>,
<ore:artisansFramingHammer>,
<ore:artisansGemCutter>,
<ore:artisansGrimoire>,
<ore:artisansGroover>,
<ore:artisansHammer>,
<ore:artisansHandsaw>,
<ore:artisansHatchet>,
<ore:artisansKnife>,
<ore:artisansLens>,
<ore:artisansNeedle>,
<ore:artisansPan>,
<ore:artisansPencil>,
<ore:artisansPliers>,
<ore:artisansPunch>,
<ore:artisansQuill>,
<ore:artisansShears>,
<ore:artisansSifter>,
<ore:artisansSolderer>,
<ore:artisansSpanner>,
<ore:artisansTrowel>,
<ore:artisansTSquare>,
<ore:constructionWand>

] as IOreDictEntry[];
for tool in tools {
<ore:artisansTool>.addAll(tool);
}

var toolslows = [

<ore:artisansHammer>,
<ore:artisansTSquare>,
<ore:artisansCarver>,
<ore:constructionWand>

] as IOreDictEntry[];
for toolslow in toolslows {
<ore:artisansToolslow>.addAll(toolslow);
}

var vacuumbags = [

<adpother:diamond_vacuum_bag>,
<adpother:iron_vacuum_bag>,
<adpother:gold_vacuum_bag>

] as IItemStack[];
for bag in vacuumbags {
<ore:vacuumbag>.add(bag);
}

var respirators = [

<adpother:diamond_respirator>,
<adpother:iron_respirator>,
<adpother:gold_respirator>

] as IItemStack[];
for r in respirators {
<ore:respirator>.add(r);
}

var foods = loadedMods["xlfoodmod"].items;
for food in foods {
<ore:xlfood>.add(food);
}

var banfoods = [

<xlfoodmod:top_bun>,
<xlfoodmod:dough>,
<xlfoodmod:potato_bread>,
<xlfoodmod:rice_bread>,
<xlfoodmod:baguette>,
<xlfoodmod:bottom_bun>

] as IItemStack[];
for banfood in banfoods {
<ore:xlfood>.remove(banfood);
}

var botflowers = [

<ore:mysticFlowerWhite>,
<ore:mysticFlowerLightGray>,
<ore:mysticFlowerOrange>,
<ore:mysticFlowerCyan>,
<ore:mysticFlowerMagenta>,
<ore:mysticFlowerPurple>,
<ore:mysticFlowerLightBlue>,
<ore:mysticFlowerBlue>,
<ore:mysticFlowerYellow>,
<ore:mysticFlowerBrown>,
<ore:mysticFlowerLime>,
<ore:mysticFlowerGreen>,
<ore:mysticFlowerPink>,
<ore:mysticFlowerRed>,
<ore:mysticFlowerGray>,
<ore:mysticFlowerBlack>

] as IOreDictEntry[];
for botflower in botflowers {
<ore:flower>.addAll(botflower);
}

<ore:bed>.add(<minecraft:bed:*>);

var oneblocks = [

<ore:oreCopper>,
<ore:oreTin>,
<ore:oreAluminium>,
<ore:oreLead>,

] as IOreDictEntry[];
for oneblock in oneblocks {
<ore:blockOne>.addAll(oneblock);
}

var twoblocks = [

<ore:oreGold>,
<ore:oreIron>,
<ore:oreSilver>,
<ore:oreUranium>,

] as IOreDictEntry[];
for twoblock in twoblocks {
<ore:blockTwo>.addAll(twoblock);
}

var threeblocks = [

<ore:stoneAndesite>,
<ore:stone>,
<ore:stoneGranite>,
<ore:stoneDiorite>,
<ore:oreCoal>

] as IOreDictEntry[];
for threeblock in threeblocks {
<ore:blockThree>.addAll(threeblock);
}

var fourblocks = [

<ore:oreDilithium>,
<ore:oreAbyssum>,
<ore:oreEezo>,
<ore:oreOsram>,
<ore:oreTiberium>

] as IOreDictEntry[];
for fourblock in fourblocks {
<ore:blockFour>.addAll(fourblock);
}

var fiveblocks = [

<ore:oreUru>,
<ore:oreValyrium>,
<ore:blockObsidiorit>,
<ore:oreOsmium>

] as IOreDictEntry[];
for fiveblock in fiveblocks {
<ore:blockFive>.addAll(fiveblock);
}

var sixblocks = [

<ore:oreDiamond>

] as IOreDictEntry[];
for sixblock in sixblocks {
<ore:blockSix>.addAll(sixblock);
}

var sevenblocks = [

<ore:obsidian>,
<ore:blockBasalt>

] as IOreDictEntry[];
for sevenblock in sevenblocks {
<ore:blockSeven>.addAll(sevenblock);
}

var eightblocks = [

<ore:orePalladium>,
<ore:orePrometheum>

] as IOreDictEntry[];
for eightblock in eightblocks {
<ore:blockEight>.addAll(eightblock);
}

var nineblocks = [

<ore:oreVibranium>

] as IOreDictEntry[];
for nineblock in nineblocks {
<ore:blockNine>.addAll(nineblock);
}

var stones = [

<ore:stone>,
<ore:cobblestone>

] as IOreDictEntry[];
for stone in stones {
<ore:erstone>.addAll(stone);
}

var diamondores = [

<ore:oreDiamond>,
<ore:diamond>

] as IOreDictEntry[];
for diamondore in diamondores {
<ore:eroreDiamond>.addAll(diamondore);
}

<ore:ballClay>.add(<minecraft:clay_ball>);

var cobblestones = [

<ore:cobblestoneGranite>,
<ore:cobblestoneAndesite>,
<ore:cobblestoneLimestone>,
<ore:cobblestoneDiorite>

] as IOreDictEntry[];

var erstones = [

<ore:erstoneGranite>,
<ore:erstoneAndesite>,
<ore:erstoneLimestone>,
<ore:erstoneDiorite>

] as IOreDictEntry[];
for i, erstone in erstones {
var cobblestone = cobblestones[i];
erstone.addAll(cobblestone);
}

for cstone in cobblestones {
<ore:cstone>.addAll(cstone);
}

for item in <ore:cstone>.items {
<ore:erstone>.remove(item);
}