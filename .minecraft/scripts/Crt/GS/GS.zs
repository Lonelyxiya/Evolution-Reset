#modloaded armoreablemobs gamestages
//Lacz
//2021.09.02

import mods.multiblockstages.IEMultiBlockStages;

mods.MobStages.addStage("one", "minecraft:witch");
mods.MobStages.addStage("one", "minecraft:zombie");
mods.MobStages.addStage("one", "minecraft:zombie_villager");
mods.MobStages.addStage("one", "minecraft:husk");
mods.MobStages.addStage("one", "minecraft:zombie_horse");
mods.MobStages.addStage("one", "minecraft:skeleton_horse");

mods.TimeStages.addTimer("protect", "", "one" , 14400,"seconds");

mods.MobStages.addStage("two", "minecraft:spider");

mods.MobStages.addStage("three", "minecraft:skeleton");
mods.MobStages.addStage("three", "minecraft:stray");
mods.MobStages.addStage("three", "mekanism:babyskeleton");

mods.MobStages.addStage("four", "minecraft:creeper");
mods.MobStages.addStage("four", "minecraft:enderman");

IEMultiBlockStages.addStage("oreexacavator", "IE:Excavator", "你还不能完成多方块结构斗轮采掘机！");