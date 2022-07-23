//Origins_Eternal
//2021.7.27
//Tconstruct_Mot
import crafttweaker.item.IItemStack;

mods.tconstruct.Melting.addRecipe(<liquid:gold> * 144,<pyrotech:generated_pile_slag_gold>, 354);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 144,<pyrotech:generated_pile_slag_iron>, 511);
mods.tconstruct.Melting.addRecipe(<liquid:copper> * 144,<pyrotech:generated_pile_slag_copper>, 361);
mods.tconstruct.Melting.addRecipe(<liquid:tin> * 144,<pyrotech:generated_pile_slag_tin>, 77);
mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 144,<pyrotech:generated_pile_slag_aluminum>, 220);
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 144,<pyrotech:generated_pile_slag_silver>, 320);
mods.tconstruct.Melting.addRecipe(<liquid:uranium> * 144,<pyrotech:generated_pile_slag_uranium>, 377);
mods.tconstruct.Melting.addRecipe(<liquid:lead> * 144,<pyrotech:generated_pile_slag_lead>, 109);
mods.tconstruct.Melting.addRecipe(<liquid:ardite> * 144,<pyrotech:generated_pile_slag_ardite>, 333);
mods.tconstruct.Melting.addRecipe(<liquid:cobalt> * 144,<pyrotech:generated_pile_slag_cobalt>, 498);
mods.tconstruct.Melting.addRecipe(<liquid:dilithium_fluid> * 144,<pyrotech:generated_pile_slag_dilithium>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:abyssum_fluid> * 144,<pyrotech:generated_pile_slag_abyssum>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:eezo_fluid> * 144,<pyrotech:generated_pile_slag_eezo>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:osram_fluid> * 144,<pyrotech:generated_pile_slag_osram>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:palladium_fluid> * 144,<pyrotech:generated_pile_slag_palladium>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:prometheum_fluid> * 144,<pyrotech:generated_pile_slag_prometheum>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:valyrium_fluid> * 144,<pyrotech:generated_pile_slag_valyrium>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:uru_fluid> * 144,<pyrotech:generated_pile_slag_uru>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:tiberium_fluid> * 144,<pyrotech:generated_pile_slag_tiberium>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:vibranium_fluid> * 144,<pyrotech:generated_pile_slag_vibranium>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_fluid> * 144,<pyrotech:generated_pile_slag_tungsten>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:chromium> * 144,<pyrotech:generated_pile_slag_chromium>, 1000);

//2021.8.10
var iron = [

<minecraft:iron_axe>,
<minecraft:iron_pickaxe>,
<minecraft:iron_shovel>,
<minecraft:iron_sword>,
<minecraft:iron_hoe>,
<minecraft:iron_helmet>,
<minecraft:iron_chestplate>,
<minecraft:iron_leggings>,
<minecraft:iron_boots>,
<minecraft:iron_horse_armor>

] as IItemStack[];
for items in iron
    {
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, items);
    }

mods.tconstruct.Alloy.removeRecipe(<liquid:obsidian>);
mods.tconstruct.Melting.removeRecipe(<liquid:obsidian>);

//2021.8.11
mods.tconstruct.Melting.addRecipe(<liquid:obsidian_fluid> * 72,<pyrotech:material:33>, 1000);

//2021.8.14
mods.tconstruct.Alloy.addRecipe(<liquid:tungsten_steel_fluid> * 1, [<liquid:tungsten_fluid> * 1, <liquid:steel> * 3]);
mods.tconstruct.Alloy.removeRecipe(<liquid:fractum_fluid>);
mods.tconstruct.Alloy.addRecipe(<liquid:fractum_fluid> * 2, [<liquid:tiberium_fluid> * 3, <liquid:obsidian_fluid> * 3, <liquid:abyssum_fluid> * 1]);
mods.tconstruct.Alloy.removeRecipe(<liquid:seismum_fluid>);
mods.tconstruct.Alloy.addRecipe(<liquid:seismum_fluid> * 4, [<liquid:tiberium_fluid> * 2, <liquid:obsidian_fluid> * 4, <liquid:eezo_fluid> * 1]);
mods.tconstruct.Alloy.removeRecipe(<liquid:iox_fluid>);
mods.tconstruct.Alloy.addRecipe(<liquid:iox_fluid> * 1, [<liquid:obsidian_fluid> * 1, <liquid:eezo_fluid> * 1, <liquid:abyssum_fluid> * 1, <liquid:meteorite_fluid> * 1, <liquid:ovium_fluid> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:iox_fluid> * 1, [<liquid:eezo_fluid> * 2, <liquid:abyssum_fluid> * 2, <liquid:meteorite_fluid> * 9, <liquid:ovium_fluid> * 2]);
mods.tconstruct.Alloy.removeRecipe(<liquid:obsidiorite_fluid>);
mods.tconstruct.Alloy.addRecipe(<liquid:obsidiorite_fluid> * 1, [<liquid:meteorite_fluid> * 1 , <liquid:obsidian_fluid> * 1]);

//2021.8.15
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_fluid> * 144,<pyrotech:generated_pile_slag_tungsten>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_fluid> * 16,<contenttweaker:tungsten_nugget>, 1000);
mods.tconstruct.Fuel.registerFuel(<liquid:obsidian_fluid> * 2, 200);
mods.tconstruct.Fuel.registerFuel(<liquid:tungsten_steel_fluid> * 2, 200);

//2021.12.7
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_fluid> * 144,<contenttweaker:tungsten_ore>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_fluid> * 144,<contenttweaker:tungsten_ingot>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_steel_fluid> * 144,<contenttweaker:tungsten_steel_ingot>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_steel_fluid> * 16,<contenttweaker:tungsten_steel_nugget>, 1000);

//2021.12.14
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_carbide> * 144,<contenttweaker:tungsten_carbide_ingot>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:tungsten_carbide> * 16,<contenttweaker:tungsten_carbide_nugget>, 1000);

//2021.12.18
mods.tconstruct.Alloy.removeRecipe(<liquid:alumite>);
mods.tconstruct.Alloy.addRecipe(<liquid:alumite> * 3, [<liquid:obsidian_fluid> * 2, <liquid:iron> * 2, <liquid:aluminum> * 5]);

//2022.1.22
mods.tconstruct.Alloy.removeRecipe(<liquid:adamant_fluid>);
mods.tconstruct.Alloy.addRecipe(<liquid:adamant_fluid> * 4, [<liquid:vibranium_fluid> * 2, <liquid:solarium_fluid> * 3, <liquid:iox_fluid> * 5, <liquid:chromium> * 3]);
mods.tconstruct.Melting.addRecipe(<liquid:chromium> * 144,<contenttweaker:chromium_ingot>, 1000);
mods.tconstruct.Melting.addRecipe(<liquid:chromium> * 16,<contenttweaker:chromium_nugget>, 1000);

//2022.1.25
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:chromium_ingot>, null, <liquid:chromium>, 144, false, 200);
mods.tconstruct.Casting.addTableRecipe(<immersiveengineering:metal:1>, null, <liquid:aluminum>, 144, false, 200);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:tungsten_ingot>, null, <liquid:tungsten_fluid>, 144, false, 200);




