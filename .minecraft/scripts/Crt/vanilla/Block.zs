//Origins_Eternity
//2021.6.29
//Block

import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

var block1 as IItemStack[] = [
<galacticraftcore:basic_block_core:5>,
<galacticraftcore:basic_block_moon>,
<galacticraftplanets:mars>,
<galacticraftplanets:venus:7>,
<immersiveengineering:ore>,
<mekanism:oreblock:1>,
<galaxyspace:ioblocks:3>,
<galaxyspace:barnarda_c_ores:7>,
<mekanism:oreblock:2>,
<galacticraftplanets:venus:11>,
<galacticraftplanets:mars:1>,
<galacticraftcore:basic_block_moon:1>,
<galacticraftcore:basic_block_core:6>,
<galacticraftplanets:venus:6>,
<galacticraftplanets:asteroids_block:3>,
<galacticraftcore:basic_block_core:7>,
<immersiveengineering:ore:2>,
<galaxyspace:proxima_b_blocks:6>,
<galaxyspace:barnarda_c_ores:8>,
<galaxyspace:marsores:5>,
<galaxyspace:haumeablocks:3>,
<galaxyspace:europablocks:5>,
<galaxyspace:barnarda_c_ores:9>
];
for items in block1{	
	items.asBlock().definition.setHarvestLevel("pickaxe", 2);
}

var block2 as IItemStack[] = [
<galacticraftplanets:asteroids_block:5>,
<galacticraftplanets:mars:3>,
<minecraft:iron_ore>,
<minecraft:gold_ore>,
<immersiveengineering:ore:3>,
<immersiveengineering:ore:5>,
<galaxyspace:gsores:2>,
<galaxyspace:mirandablocks:3>,
<galaxyspace:ganymedeblocks:3>,
<galaxyspace:ceresblocks:3>,
<galaxyspace:mercuryblocks:4>,
<galaxyspace:barnarda_c_ores:1>,
<immersiveengineering:ore:4>,
<galaxyspace:gsores:1>,
<galaxyspace:mercuryblocks:3>,
<galaxyspace:mirandablocks:8>,
<galaxyspace:barnarda_c_ores:12>,
<galaxyspace:mercuryblocks:5>,
<galaxyspace:ganymedeblocks:2>,
<galaxyspace:marsores:1>,
<galaxyspace:proxima_b_blocks:5>,
<galaxyspace:barnarda_c_ores:2>
];
for items in block2{	
	items.asBlock().definition.setHarvestLevel("pickaxe", 3);
}

var block3 = [

<minecraft:stone:1>,
<minecraft:stone:2>,
<pyrotech:cobblestone:2>,
<minecraft:stone:3>,
<minecraft:stone:4>,
<pyrotech:cobblestone:1>,
<traverse:blue_rock>,
<traverse:red_rock>

] as IItemStack[];
for items in block3{	
	items.asBlock().definition.setHarvestLevel("pickaxe", 1);
}
	
var block4 as IItemStack[] = [
<taiga:dilithium_ore>,
<taiga:abyssum_ore>,
<taiga:eezo_ore>,
<taiga:osram_ore>,
<taiga:tiberium_ore>
];
for items in block4{	
	items.asBlock().definition.setHarvestLevel("pickaxe", 5);
}

var block5 = [

<taiga:valyrium_ore>,
<taiga:uru_ore>,
<taiga:obsidiorite_block>,
<mekanism:oreblock>,

] as IItemStack[];
for items in block5
	{	
	items.asBlock().definition.setHarvestLevel("pickaxe", 7);
	}

var block6 = [

<minecraft:diamond_ore>,
<galaxyspace:marsores>,
<galaxyspace:titanblocks:5>,
<galaxyspace:mirandablocks:5>,
<galaxyspace:proxima_b_blocks:10>,
<galaxyspace:barnarda_c_ores:5>

] as IItemStack[];
for items in block6
	{	
	items.asBlock().definition.setHarvestLevel("pickaxe", 10);
	}

//2022.1.21

var block7 = [

<minecraft:obsidian>,
<taiga:basalt_block>

] as IItemStack[];
for items in block7
	{	
	items.asBlock().definition.setHarvestLevel("pickaxe", 4);
	}

//2022.1.29
var block8 = [

<traverse:fir_planks>,
<immersiveengineering:treated_wood>,
<minecraft:planks:*>,
<twilightforest:twilight_oak_planks>,
<twilightforest:canopy_planks>,
<twilightforest:mangrove_planks>,
<twilightforest:dark_planks>,
<twilightforest:time_planks>,
<twilightforest:trans_planks>,
<twilightforest:mine_planks>,
<twilightforest:sort_planks>

] as IItemStack[];
for items in block8{	
	items.asBlock().definition.setHarvestLevel("axe", 1);
}

<taiga:palladium_ore>.asBlock().definition.setHarvestLevel("pickaxe", 6);
<taiga:prometheum_ore>.asBlock().definition.setHarvestLevel("pickaxe", 6);
<taiga:vibranium_ore>.asBlock().definition.setHarvestLevel("pickaxe", 8);

