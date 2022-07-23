//Lacz
//2020.10.16
//Mekanism

mods.mekanism.chemical.injection.addRecipe(<mekanism:oreblock>*32, <gas:sulfuricAcid>, <tconstruct:shard>.withTag({Material: "iridium"}));
mods.mekanism.combiner.addRecipe(<tconstruct:shard>.withTag({Material: "iridium"}), <tconstruct:shard>.withTag({Material: "osmium"}), <tconstruct:shard>.withTag({Material: "osmiridium"}));
mods.mekanism.enrichment.addRecipe(<environmentaltech:erodium>, <tconstruct:large_plate>.withTag({Material: "erodium"}));

//Origins_Eternal
//2022.1.18

mods.mekanism.sawmill.removeRecipe(<minecraft:jukebox>);
mods.mekanism.sawmill.addRecipe(<minecraft:jukebox>, <minecraft:planks> * 7, <minecraft:stick> * 3, 0.3);