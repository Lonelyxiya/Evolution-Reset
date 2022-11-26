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
}

IEMultiBlockStages.addStage("oreexacavator", "IE:Excavator");