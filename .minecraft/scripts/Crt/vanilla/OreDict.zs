#ignoreBracketErrors
#priority 99999
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

<ore:mushroom>.add(<minecraft:red_mushroom>);
<ore:mushroom>.add(<minecraft:brown_mushroom>);
<ore:string>.add(<pyrotech:material:14>);
<ore:carbon>.addAll(<ore:coal>);
<ore:carbon>.addAll(<ore:charcoal>);
<ore:chest>.add(<immersiveengineering:wooden_device0>);
<ore:grout>.add(<tconstruct:soil>);
<ore:blockSlakedlime>.add(<ercore:slakedlime_block>);
<ore:tnt>.add(<minecraft:tnt>);
<ore:steel>.add(<immersiveengineering:metal:8>);
<ore:steel>.add(<mekanism:ingot:4>);
<ore:oreSulfur>.add(<ercore:sulphur_ore>);
<ore:whitesand>.add(<minecraft:sand>);
<ore:whitesand>.add(<biomesoplenty:white_sand>);
<ore:gravel>.add(<biomesoplenty:dried_sand>);
<ore:radsand>.add(<minecraft:sand:1>);
<ore:skull>.add(<minecraft:skull:*>);
<ore:torch>.add(<advancedrocketry:unlittorch>);
<ore:ergravel>.addAll(<ore:gravel>);
<ore:ergravel>.add(<minecraft:flint>);
<ore:blockSeven>.addAll(<ore:oreSulfur>);
<ore:blockBasalt>.add(<advancedrocketry:basalt>);
<ore:fiery>.add(<twilightforest:fiery_blood>);
<ore:fiery>.add(<twilightforest:fiery_tears>);
<ore:oreTitanium>.add(<ercore:rutile_ore>);
<ore:sandpile>.add(<pyrotech:rock:5>);
<ore:sandpile>.add(<pyrotech:rock:9>);
<ore:ballClay>.add(<minecraft:clay_ball>);
<ore:oreTungsten>.add(<ercore:tungsten_ore>);
<ore:oreCopper>.add(<ercore:copper_ore>);
<ore:oreTin>.add(<ercore:tin_ore>);
<ore:oreIridium>.add(<ercore:iridium_ore>);
<ore:blockFour>.add(<biomesoplenty:hard_ice>);
<ore:erstone>.add(<biomesoplenty:grass>);
<ore:erstone>.add(<biomesoplenty:grass:1>);

var dirts =[
<biomesoplenty:dirt:8>,
<biomesoplenty:dirt>,
<biomesoplenty:dirt:9>,
<biomesoplenty:dirt:1>,
<biomesoplenty:dirt:10>,
<biomesoplenty:dirt:2>
] as IItemStack[];

for d in dirts {
    <ore:dirt>.add(d);
}

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
<ore:blockThree>.remove(<minecraft:stone>);

var fourblocks = [
<ore:oreDilithium>,
<ore:oreAbyssum>,
<ore:oreEezo>,
<ore:oreOsram>,
<ore:oreTiberium>,
<ore:obsidian>,
<ore:oreTitanium>
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
<ore:oreDiamond>,
<ore:blockDiamond>
] as IOreDictEntry[];

for sixblock in sixblocks {
    <ore:blockSix>.addAll(sixblock);
}

var sevenblocks = [
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
<ore:oreVibranium>,
<ore:oreTungsten>
] as IOreDictEntry[];

for nineblock in nineblocks {
    <ore:blockNine>.addAll(nineblock);
}

var tenblocks = [
<ore:oreIridium>
] as IOreDictEntry[];

for tenblock in tenblocks {
    <ore:blockTen>.addAll(tenblock);
}

var stones = [
<ore:stone>,
<ore:cobblestone>,
<ore:blockMossy>
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

var cobblestones = [
<ore:cobblestoneGranite>,
<ore:cobblestoneAndesite>,
<ore:cobblestoneLimestone>,
<ore:cobblestoneDiorite>,
<ore:stoneGranite>,
<ore:stoneAndesite>,
<ore:stoneLimestone>,
<ore:stoneDiorite>
] as IOreDictEntry[];

var erstones = [
<ore:erstoneGranite>,
<ore:erstoneAndesite>,
<ore:erstoneLimestone>,
<ore:erstoneDiorite>,
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

var rocketparts =[
<advancedrocketry:fueltank>,
<advancedrocketry:bipropellantfueltank>,
<advancedrocketry:oxidizerfueltank>
] as IItemStack[];

for i in rocketparts {
    <ore:rocketparts>.add(i);
}

var tool = [
<minecraft:stone_axe>,
<minecraft:iron_axe>,
<minecraft:golden_axe>,
<minecraft:diamond_axe>,
<minecraft:stone_shovel>,
<minecraft:iron_shovel>,
<minecraft:golden_shovel>,
<minecraft:diamond_shovel>,
<minecraft:stone_pickaxe>,
<minecraft:iron_pickaxe>,
<minecraft:golden_pickaxe>,
<minecraft:diamond_pickaxe>,
<minecraft:stone_sword>,
<minecraft:iron_sword>,
<minecraft:golden_sword>,
<minecraft:diamond_sword>,
<minecraft:stone_hoe>,
<minecraft:iron_hoe>,
<minecraft:golden_hoe>,
<minecraft:diamond_hoe>,
<minecraft:leather_chestplate>,
<minecraft:leather_leggings>,
<minecraft:leather_boots>,
<minecraft:iron_helmet>,
<minecraft:iron_chestplate>,
<minecraft:iron_leggings>,
<minecraft:iron_boots>,
<minecraft:golden_helmet>,
<minecraft:golden_chestplate>,
<minecraft:golden_leggings>,
<minecraft:golden_boots>,
<minecraft:diamond_helmet>,
<minecraft:diamond_chestplate>,
<minecraft:diamond_leggings>,
<minecraft:diamond_boots>,
<minecraft:chainmail_helmet>,
<minecraft:chainmail_chestplate>,
<minecraft:chainmail_leggings>,
<minecraft:chainmail_boots>,
<minecraft:furnace>,
<betternether:cincinnasite_axe>,
<betternether:cincinnasite_axe_diamond>,
<betternether:cincinnasite_pickaxe>,
<betternether:cincinnasite_pickaxe_diamond>,
<minecraft:sugar>,
<mekanism:cardboardbox>,
<mekanism:anchorupgrade>,
<draconicevolution:grinder>,
<draconicevolution:celestial_manipulator>,
<draconicevolution:draconium_capacitor:2>,
<draconicevolution:ender_energy_manipulator>,
<draconicevolution:creative_exchanger>,
<draconicevolution:info_tablet>,
<doggytalents:creative_collar>,
<doggytalents:creative_radar>,
<draconicevolution:creative_rf_source>,
<projecte:item.pe_tome>,
<conarm:gauntlet_mat_reach>,
<projecte:item.pe_rm_katar>,
<projecte:item.pe_rm_sword>,
<botania:terrapick>,
<refinedstorage:silicon>,
<twilightforest:fiery_sword>,
<twilightforest:fiery_pickaxe>,
<twilightforest:steeleaf_sword>,
<twilightforest:steeleaf_shovel>,
<twilightforest:steeleaf_pickaxe>,
<twilightforest:steeleaf_axe>,
<twilightforest:steeleaf_hoe>,
<twilightforest:knightmetal_sword>,
<twilightforest:knightmetal_pickaxe>,
<twilightforest:knightmetal_axe>,
<twilightforest:knightmetal_shield>,
<twilightforest:uncrafting_table>,
<tconstruct:stone_stick>,
<betternether:cincinnasite_forge>,
<betternether:cincinnasite_forge>,
<toughasnails:campfire>
] as IItemStack[];

for items in tool {	
    <ore:banitems>.add(items);
}

for ban in <ore:banitems>.items {
    ban.maxDamage = 1;
    recipes.remove(ban);
    mods.jei.JEI.hide(ban);
    mods.ltt.LootTable.removeGlobalItem(ban.definition.id);
}