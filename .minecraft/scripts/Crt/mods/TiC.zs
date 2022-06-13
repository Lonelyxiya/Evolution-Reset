#priority 1000
//Lacz
//2020.10.16
//Tic

import mods.tconstruct.Drying;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller:0>, 
[[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
[<tconstruct:materials:0>, <minecraft:furnace>, <tconstruct:materials:0>], 
[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]]);

mods.mekanism.enrichment.addRecipe(<tconstruct:materials:16>*9, <tconstruct:metal:6>);
recipes.remove(<tconstruct:stone_stick>);

function tic2Dying(output as IItemStack, input as IIngredient, time as int){
    mods.tconstruct.Drying.removeRecipe(output);
    mods.tconstruct.Drying.addRecipe(output, input, time);
}
tic2Dying(<tconstruct:dried_clay>, <minecraft:clay>, 180*20);
tic2Dying(<tconstruct:materials:2>, <minecraft:clay_ball>, 60*20);
tic2Dying(<tconstruct:edible:23>, <minecraft:fish:3>, 120*20);
tic2Dying(<tconstruct:edible:22>, <minecraft:fish:2>, 120*20);
tic2Dying(<tconstruct:edible:21>, <minecraft:fish:1>, 120*20);
tic2Dying(<tconstruct:edible:20>, <minecraft:fish>, 120*20);
tic2Dying(<tconstruct:edible:15>, <minecraft:rabbit>, 120*20);
tic2Dying(<tconstruct:edible:14>, <minecraft:mutton>, 120*20);
tic2Dying(<tconstruct:edible:13>, <minecraft:porkchop>, 120*20);
tic2Dying(<tconstruct:edible:12>, <minecraft:chicken>, 120*20);
tic2Dying(<tconstruct:edible:11>, <minecraft:beef>, 120*20);
tic2Dying(<tconstruct:edible:10>, <minecraft:rotten_flesh>, 150*20);

//Origins_Eternity
//2021.3.27

recipes.remove(<tconstruct:soil>);

furnace.remove(<tconstruct:materials>);
furnace.addRecipe(<tconstruct:materials>, <contenttweaker:searedbrick_unfired>);

//Origins_Eternity
//2021.3.28
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShaped(<tconstruct:tooltables:3>,
[[<ore:slabWood>, <tconstruct:pattern>, <ore:slabWood>],
[<pyrotech:material:20>, <pyrotech:worktable_stone>, <pyrotech:material:20>],
[<pyrotech:material:20>, null, <pyrotech:material:20>]]);

//2021.7.27
recipes.remove(<tconstruct:smeltery_io>);
recipes.addShaped(<tconstruct:smeltery_io>, 
[[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
[<tconstruct:materials:0>, <pyrotech:tar_drain:1>, <tconstruct:materials:0>], 
[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]]);

recipes.remove(<tconstruct:seared_tank>);
recipes.addShaped(<tconstruct:seared_tank>, 
[[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
[<tconstruct:materials:0>, <pyrotech:brick_tank>, <tconstruct:materials:0>], 
[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]]);

recipes.remove(<tconstruct:faucet>);
recipes.addShaped(<tconstruct:faucet>, 
[[null, null, null],
[<tconstruct:materials:0>, <pyrotech:faucet_brick>, <tconstruct:materials:0>], 
[null, <tconstruct:materials:0>, null]]);

//2021.8.23
recipes.remove(<tconstruct:tooltables:4>);
recipes.addShaped(<tconstruct:tooltables:4>,
[[<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>],
[<pyrotech:material:20>, <pyrotech:crate_stone>, <pyrotech:material:20>],
[<pyrotech:material:20>, <pyrotech:material:20>, <pyrotech:material:20>]]);

//2021.12.25
recipes.remove(<plustic:centrifuge>);
recipes.addShaped(<plustic:centrifuge>,
[[<ore:blockClassColorless>, <ore:ingotIron>, <ore:blockClassColorless>],
[<ore:ingotIron>, <tconstruct:shovel>.withTag({Material: "iron"}), <ore:ingotIron>],
[<ore:blockClassColorless>, <ore:ingotIron>, <ore:blockClassColorless>]]);