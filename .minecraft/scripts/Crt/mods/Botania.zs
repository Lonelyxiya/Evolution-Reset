import crafttweaker.item.IItemStack;

var botbanlist = [
    <botania:rfgenerator>,
    <botania:lens:18>,
    <botania:felpumpkin>,
    <botania:teruterubozu>,
    <botania:spawnerclaw>,
    <botania:bellows>,
    <botania:pylon>
] as IItemStack[];
for i in botbanlist{
    mods.jei.JEI.removeAndHide(i);
}

var Apothecary as IItemStack[] = [
    <botania:specialflower>.withTag({type: "puredaisy"}),
    <botania:specialflower>.withTag({type: "endoflame"}),
    <botania:specialflower>.withTag({type: "gourmaryllis"})
];
for j in Apothecary{
    mods.botania.Apothecary.removeRecipe(j);
}

recipes.remove(<botania:pool>);

recipes.remove(<botania:pylon:*>);
recipes.addShaped(<botania:pylon:1>, 
[[null, <botania:manaresource:18>, null],
[<botania:manaresource:18>, <draconicevolution:energy_crystal>, <botania:manaresource:18>],
[null, <minecraft:ender_eye>, null]]);

recipes.addShaped(<botania:pylon:2>, 
[[null, <botania:manaresource:8>, null],
[<botania:manaresource:7>, <minecraft:nether_star>, <botania:manaresource:7>],
[null, <botania:manaresource:8>, null]]);

recipes.remove(<botania:altar>);
recipes.remove(<botania:brewery>);