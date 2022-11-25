import mods.multiblockstages.IEMultiBlockStages;

var mobsone = [
"minecraft:witch",
"minecraft:zombie",
"minecraft:zombie_villager",
"minecraft:husk",
"minecraft:slime",
"minecraft:zombie_horse",
"minecraft:skeleton_horse",
"tconstruct:blueslime",
"pyrotech:pyrotech.mud"
] as string[];

for mobone in mobsone {
    mods.MobStages.addStage("one", mobone);
    mods.MobStages.addReplacement(mobone, "minecraft:villager");
    mods.MobStages.addRange(mobone, 100);
    mods.MobStages.toggleSpawner(mobone, false);
}

var mobsthree = [
"minecraft:spider",
"minecraft:skeleton",
"minecraft:stray",
"mekanism:babyskeleton",
"minecraft:creeper",
"minecraft:enderman"
] as string[];

for mobthree in mobsthree {
    mods.MobStages.addStage("three", mobthree);
    mods.MobStages.addReplacement(mobthree, "minecraft:bat");
    mods.MobStages.addRange(mobthree, 100);
    mods.MobStages.toggleSpawner(mobthree, false);
}

IEMultiBlockStages.addStage("oreexacavator", "IE:Excavator");