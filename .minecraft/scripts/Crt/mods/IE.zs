//Lacz
//2020.10.16
//immersiveengineering

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;

recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5>*2,
[[<ore:blockSteel>, <immersiveengineering:material:9>, <ore:blockSteel>],
[<minecraft:piston>, <pyrotech:cog_obsidian>, <minecraft:piston>],
[<ore:blockSteel>, <immersiveengineering:material:9>, <ore:blockSteel>]]);

recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>*8,
[[<minecraft:iron_block>, <immersiveengineering:connector:13>, <minecraft:iron_block>],
[<immersiveengineering:connector:13>, <mekanism:basicblock:12>, <immersiveengineering:connector:13>],
[<minecraft:iron_block>, <immersiveengineering:connector:13>, <minecraft:iron_block>]]);

recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4>*4,
[[<minecraft:iron_block>, <immersiveengineering:material:8>, <minecraft:iron_block>],
[<ore:blockCopper>, <ore:blockCopper>, <ore:blockCopper>],
[<minecraft:iron_block>, <immersiveengineering:material:8>, <minecraft:iron_block>]]);

recipes.remove(<immersiveengineering:stone_decoration:8>);
recipes.addShaped(<immersiveengineering:stone_decoration:8>*2,
[[null, <ore:blockGlass>, null],
[<ore:plateIron>, <ore:dyeGreen>, <ore:plateIron>],
[null, <ore:blockGlass>, null]]);

recipes.addShapeless(<immersiveengineering:metal:39>, [<minecraft:iron_ingot>, <immersiveengineering:tool>.transformDamage(1)]);

recipes.remove(<immersiveengineering:wooden_device0>);
recipes.addShaped(<immersiveengineering:wooden_device0>,
[[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
[<ore:plankTreatedWood>, <ore:chest>, <ore:plankTreatedWood>],
[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]);

//2021.09.05
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*18, <pyrotech:generated_pile_slag_iron>, 1600);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*18, <pyrotech:generated_pile_slag_gold>, 1600);
mods.immersiveengineering.BlastFurnace.addRecipe(<immersiveengineering:metal:20>*18, <pyrotech:generated_pile_slag_copper>, 1600);
mods.immersiveengineering.AlloySmelter.addRecipe(<pyrotech:material:16>*10, <minecraft:gunpowder>, <minecraft:stonebrick>*2, 1600);
mods.immersiveengineering.AlloySmelter.addRecipe(<pyrotech:material:5>*5, <pyrotech:material:4>, <pyrotech:material:4>, 1600);

//2021.09.10
var slags as IItemStack[] = [
	<pyrotech:generated_pile_slag_aluminum>,
	<pyrotech:generated_pile_slag_ardite>,
	<pyrotech:generated_pile_slag_cobalt>,
	<pyrotech:generated_pile_slag_copper>,
	<pyrotech:generated_pile_slag_gold>,
	<pyrotech:generated_pile_slag_iron>,
	<pyrotech:generated_pile_slag_lead>,
	<pyrotech:generated_pile_slag_nickel>,
	<pyrotech:generated_pile_slag_osmium>,
	<pyrotech:generated_pile_slag_silver>,
	<pyrotech:generated_pile_slag_tin>,
	<pyrotech:generated_pile_slag_uranium>,
	<pyrotech:generated_pile_slag_tungsten>,
	<pyrotech:generated_pile_slag_dilithium>,
	<pyrotech:generated_pile_slag_abyssum>,
	<pyrotech:generated_pile_slag_eezo>,
	<pyrotech:generated_pile_slag_osram>,
	<pyrotech:generated_pile_slag_palladium>,
	<pyrotech:generated_pile_slag_prometheum>,
	<pyrotech:generated_pile_slag_valyrium>,
	<pyrotech:generated_pile_slag_uru>,
	<pyrotech:generated_pile_slag_tiberium>,
    <pyrotech:generated_pile_slag_tungsten>,
    <pyrotech:generated_pile_slag_chromium>	
];
var ingots as IItemStack[] = [
	<immersiveengineering:metal:1>,
	<tconstruct:ingots:1>,
	<tconstruct:ingots>,
	<immersiveengineering:metal>,
	<minecraft:gold_ingot>,
	<minecraft:iron_ingot>,
	<immersiveengineering:metal:2>,
	<immersiveengineering:metal:4>,
	<mekanism:ingot:1>,
	<immersiveengineering:metal:3>,
	<mekanism:ingot:6>,
	<immersiveengineering:metal:5>,
	<contenttweaker:tungsten_ingot>,
	<taiga:dilithium_ingot>,
	<taiga:abyssum_ingot>,
	<taiga:eezo_ingot>,
	<taiga:osram_ingot>,
	<taiga:palladium_ingot>,
	<taiga:prometheum_ingot>,
	<taiga:valyrium_ingot>,
	<taiga:uru_ingot>,
	<taiga:tiberium_ingot>,
    <contenttweaker:tungsten_ingot>,
	<contenttweaker:chromium_ingot>
];
for i, slag in slags {
	var ingot = ingots[i];
	mods.immersiveengineering.ArcFurnace.addRecipe(ingot*3, slag, null, 160, 1024);
}


//Origins_Eternity
//2021.8.2
recipes.remove(<immersiveengineering:material:8>);

//2021.8.16
var tool = [

<immersiveengineering:pickaxe_steel>,
<immersiveengineering:shovel_steel>,
<immersiveengineering:axe_steel>,
<immersiveengineering:sword_steel>

] as IItemStack[];
for items in tool
	{
	items.maxDamage = 1;
	recipes.remove(items);
	mods.jei.JEI.removeAndHide(items);
	}

//2021.8.27

var block = [

<immersiveengineering:metal:36>,
<immersiveengineering:metal:37>,
<immersiveengineering:metal:39>,
<immersiveengineering:metal:40>,
<immersiveengineering:metal:30>,
<immersiveengineering:metal:32>,
<immersiveengineering:metal:31>,
<immersiveengineering:metal:38>,
<immersiveengineering:metal:35>,
<immersiveengineering:metal:33>,
<immersiveengineering:metal:34>,

] as IItemStack[];
for items in block
    {
recipes.remove(items);
    }
	
var brick = [

<immersiveengineering:stone_decoration:1>,
<immersiveengineering:stone_decoration>,
<immersiveengineering:stone_decoration:10>,

] as IItemStack[];
for items in brick
    {
recipes.remove(items);
    }

//Origins_Eternity

//2021.12.14

mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:tungsten_carbide_ingot>, <ore:ingotTungsten>, <pyrotech:generated_pile_slag_tungsten>, 160, 1024, [<ore:dustCoke>], "Alloying");





