#modloaded orestages
//Lacz
//2022.01.24
import crafttweaker.item.IItemStack;

mods.orestages.OreStages.addReplacement("none", <mekanism:oreblock:1>, <immersiveengineering:ore>);
mods.orestages.OreStages.addReplacement("none", <mekanism:oreblock:2>, <libvulpes:ore0:5>);
mods.orestages.OreStages.addReplacement("none", <minecraft:crafting_table>, <minecraft:planks>);
mods.orestages.OreStages.addReplacement("none", <minecraft:furnace>, <minecraft:stone>);

for item in <ore:oreSilicon>.items {
mods.orestages.OreStages.addReplacement("none", item, <minecraft:quartz_block>);
}