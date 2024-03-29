#ignoreBracketErrors
#priority 0
import crafttweaker.item.IItemStack;
import mods.pyrotech.Worktable;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.BrickOven;
import mods.pyrotech.MechanicalCompactor;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.Campfire;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.PitKiln;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.SoakingPot;
import mods.zenutils.StringList;
import mods.pyrotech.StoneCrucible;
import crafttweaker.text.ITextComponent;
import crafttweaker.recipes.ICraftingRecipe;
import mods.pyrotech.StoneOven;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.DryingRack;
import mods.pyrotech.Burn;
import mods.pyrotech.Bloomery;

var compacting_bin_recipes = [
<pyrotech:generated_pile_slag_aluminum>,
<pyrotech:generated_pile_slag_ardite>,
<pyrotech:generated_pile_slag_uranium>,
<pyrotech:generated_pile_slag_cobalt>,
<pyrotech:generated_pile_slag_silver>,
<pyrotech:generated_pile_slag_nickel>,
<pyrotech:generated_pile_slag_osmium>,
<pyrotech:generated_pile_slag_lead>,
<pyrotech:generated_pile_slag_tungsten>,
<pyrotech:generated_pile_slag_iridium>,
<pyrotech:generated_pile_slag_dilithium>,
<pyrotech:generated_pile_slag_abyssum>,
<pyrotech:generated_pile_slag_eezo>,
<pyrotech:generated_pile_slag_osram>,
<pyrotech:generated_pile_slag_palladium>,
<pyrotech:generated_pile_slag_prometheum>,
<pyrotech:generated_pile_slag_valyrium>,
<pyrotech:generated_pile_slag_uru>,
<pyrotech:generated_pile_slag_tiberium>,
<pyrotech:generated_pile_slag_vibranium>,
<minecraft:quartz_block>,
<minecraft:grass>
] as IItemStack[];

for items in compacting_bin_recipes {
    CompactingBin.removeRecipes(items);
}

for recipe in recipes.all {
    if (recipe.resourceDomain == "pyrotech") {
        var outputitem = recipe.output;
        recipes.replaceAllOccurences(<minecraft:ladder>, <pyrotech:material:20>, outputitem);
        var recipelocation = recipe.fullResourceDomain;
        Worktable.whitelistVanillaRecipes([recipelocation]);
    }
}

var items = [
<pyrotech:wither_forge>,
<pyrotech:bag_durable>,
<pyrotech:bag_simple>,
<pyrotech:drying_rack:1>,
<pyrotech:flint_shovel>,
<pyrotech:flint_sword>,
<pyrotech:flint_hoe>,
<pyrotech:flint_pickaxe>,
<pyrotech:flint_axe>,
<pyrotech:straw_bed>,
<pyrotech:furnace_core>,
<pyrotech:worktable_stone>,
<pyrotech:flint_hammer>,
<pyrotech:cog_diamond>
] as IItemStack[];

for item in items {
    recipes.remove(item);
}

function pyrKilns(name as string, output as IItemStack, input as IIngredient, failed as IItemStack, time as int){
    PitKiln.removeRecipes(output);
    StoneKiln.removeRecipes(output);
    BrickKiln.removeRecipes(output);
    PitKiln.addRecipe(name, output, input, time, 0.2, [failed]);
    StoneKiln.addRecipe(name, output, input, time - 30 * 20, 0.1, [failed * 2, failed * 3]);
    BrickKiln.addRecipe(name, output, input, time - 90 * 20, 0.05, [failed * 5]);
}

pyrKilns("pyrotech_bucket_clay", <pyrotech:bucket_clay>, <pyrotech:bucket_clay_unfired>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_clay_shears", <pyrotech:clay_shears>, <pyrotech:unfired_clay_shears>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_mcbrick", <minecraft:brick>, <pyrotech:material:24>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_charcoal_piece", <pyrotech:material:15>, <pyrotech:rock:7>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_mcstone_slab", <minecraft:stone_slab>, <minecraft:stone_slab:3>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_mcstone", <minecraft:stone>, <minecraft:cobblestone>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_mcandesite", <minecraft:stone:5>, <pyrotech:cobblestone>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_mcgranite", <minecraft:stone:1>, <pyrotech:cobblestone:2>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_mcdiarite", <minecraft:stone:3>, <pyrotech:cobblestone:1>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_limestone", <pyrotech:limestone>, <pyrotech:cobblestone:3>, <pyrotech:material>, 120 * 20);
pyrKilns("pyrotech_mchardened_clay", <minecraft:hardened_clay>, <minecraft:clay>, <pyrotech:material>, 120 * 20);

CrudeDryingRack.removeAllRecipes();
DryingRack.removeAllRecipes();

function pyrRack(name as string, output as IItemStack, input as IIngredient, time as int){
    CrudeDryingRack.addRecipe(name, output, input, time);
    DryingRack.addRecipe(name, output, input, time - 30 * 20);
}

pyrRack("pyrotech_mcpaper", <minecraft:paper>, <pyrotech:material:25>, 120 * 20);
pyrRack("pyrotech_mcsponge", <minecraft:sponge>, <minecraft:sponge:1>, 120 * 20);
pyrRack("pyrotech_dry_fiber1", <pyrotech:material:13>, <ore:treeSapling>, 120 * 20);
pyrRack("pyrotech_dry_fiber2", <pyrotech:material:13>, <pyrotech:material:12>, 120 * 20);
pyrRack("pyrotech_straw", <pyrotech:material:2>, <minecraft:wheat>, 120 * 20);

var worktable_recipes = [
"advancedrocketry:unpackingotcopper",
"minecraft:wooden_sword", 
"minecraft:bow", 
"minecraft:iron_ingot_from_nuggets", 
"minecraft:gold_ingot_from_nuggets", 
"immersiveengineering:metal_storge/copper_ingot", 
"mekanism:ingot_5_alt", 
"mekanism:ingot_6_alt", 
"mekanism:basicblock_12", 
"minecraft:stonebrick", 
"minecraft:polished_granite", 
"crafttweaker:tooltables",
"crafttweaker:ie_hammer",
"tconstruct:tools/pattern", 
"tconstruct:tools/table/stencil_table", 
"tconstruct:tools/table/part_builder",
"antiqueatlas:atlas_blank",
"minecraft:compass",
"minecraft:piston",
"locks:wood_lock_pick",
"locks:gold_lock_pick",
"locks:iron_lock_pick"
] as string[];

for items in worktable_recipes {
    Worktable.whitelistVanillaRecipes([items]);
}

Worktable.buildShaped(<pyrotech:flint_axe>, [
[<pyrotech:material:10>, <pyrotech:material:10>, null],
[<pyrotech:material:10>, <pyrotech:material:27>, null],
[null, <pyrotech:material:27>, null]
])
.setName("flintaxe")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 10)
.register();

Worktable.buildShaped(<pyrotech:flint_pickaxe>, [
[<pyrotech:material:10>, <pyrotech:material:10>, <pyrotech:material:10>],
[null, <pyrotech:material:27>, null],
[null, <pyrotech:material:27>, null]
])
.setName("flintpickaxe")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 10)
.register();

Worktable.buildShaped(<pyrotech:flint_hoe>, [
[<pyrotech:material:10>, <pyrotech:material:10>, null],
[null, <pyrotech:material:27>, null],
[null, <pyrotech:material:27>, null]
])
.setName("flinthoe")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 10)
.register();

Worktable.buildShaped(<pyrotech:flint_sword>, [
[null, <pyrotech:material:10>, null],
[null, <pyrotech:material:10>, null],
[null, <pyrotech:material:27>, null]
])
.setName("flintsword")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 10)
.register();

Worktable.buildShaped(<pyrotech:flint_shovel>, [
[null, <pyrotech:material:10>, null],
[null, <pyrotech:material:27>, null],
[null, <pyrotech:material:27>, null]
])
.setName("flintshovel")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 10)
.register();

Worktable.buildShaped(<pyrotech:flint_hammer>, [
[null, <pyrotech:material:10>, <ore:twine>],
[null, <pyrotech:material:27>, <pyrotech:material:10>],
[<pyrotech:material:27>, null, null]
])
.setName("flinthammer")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 10)
.register();

recipes.addShaped(<pyrotech:cog_diamond>,
[[<pyrotech:material:18>, <pyrotech:material:18>, <pyrotech:material:18>],
[<pyrotech:material:18>, <minecraft:diamond_block>, <pyrotech:material:18>],
[<pyrotech:material:18>, <pyrotech:material:18>, <pyrotech:material:18>]]);

Worktable.buildShaped(<artisanworktables:workstation:5>, [
[<pyrotech:material:16>, <ore:plateCopper>, <pyrotech:material:16>],
[<ore:blockCopper>, <pyrotech:stash_stone>, <ore:blockCopper>],
[<chisel:basalt2:7>, <pyrotech:masonry_brick_block>, <chisel:basalt2:7>]
]
)
.setName("custom_recipe_workstation5")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 20)
.register();

Worktable.buildShaped(<artisanworktables:workstation:14>, [
[<pyrotech:material:16>, <minecraft:brick>, <pyrotech:material:16>],
[<minecraft:brick_block>, <pyrotech:stash_stone>, <minecraft:brick_block>],
[<chisel:basalt2:7>, <pyrotech:masonry_brick_block>, <chisel:basalt2:7>]
])
.setName("custom_recipe_workstation14")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 30)
.register();

Worktable.buildShaped(<pyrotech:drying_rack:1>, [
[<ore:stickWood>, <ore:twine>, <ore:stickWood>],
[<ore:twine>, <pyrotech:drying_rack>, <ore:twine>],
[<ore:stickWood>, <ore:twine>, <ore:stickWood>]
])
.setName("custom_recipe_drying_rack1")
.setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 10)
.register();

Worktable.buildShaped(<pyrotech:worktable_stone>, [
[<pyrotech:material:16>, <pyrotech:masonry_brick_block>, <pyrotech:material:16>],
[<minecraft:cobblestone>, <pyrotech:worktable>, <minecraft:cobblestone>],
[<pyrotech:material:16>, <pyrotech:masonry_brick_block>, <pyrotech:material:16>]
])
.setName("custom_recipe_stoneworktable")
.setTool(<pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, 3)
.register();

val ietool as IItemStack = <immersiveengineering:tool>.transformDamage(1);
function pyrWorktableCreate(modid as string, name as string, output as IItemStack, inputs1 as IIngredient[], inputs2 as IIngredient[], inputs3 as IIngredient[], damage as int){
    Worktable.buildShaped(output, [inputs1, inputs2, inputs3])
    .setName(modid ~ name)
    .setTool(<pyrotech:bone_hammer> | <pyrotech:flint_hammer> | <pyrotech:diamond_hammer> | <pyrotech:iron_hammer> | <pyrotech:gold_hammer>, damage)
    .register();
}
pyrWorktableCreate("IE", "_plateiron", <immersiveengineering:metal:39>, [null, <minecraft:iron_ingot>, null], [null, ietool, null], [null, null, null], 2);
pyrWorktableCreate("tconstruct", "_sharp bamboo nails", <tconstruct:punji> * 5, [<minecraft:reeds>, null, <minecraft:reeds>], [null, <minecraft:reeds>, null], [<minecraft:reeds>, null, <minecraft:reeds>], 5);
pyrWorktableCreate("artisans", "_tsquare_wood", <artisanworktables:artisans_tsquare_wood>, [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [null, <minecraft:planks:*>, null], [null, <minecraft:planks:*>, null], 3);
pyrWorktableCreate("artisans", "_tsquare_stone", <artisanworktables:artisans_tsquare_stone>, [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [null, <minecraft:stone>, null], [null, <minecraft:stone>, null], 3);
pyrWorktableCreate("artisans", "_tsquare_bone", <artisanworktables:artisans_tsquare_bone>, [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [null, <minecraft:bone>, null], [null, <minecraft:bone>, null], 3);
pyrWorktableCreate("artisans", "_tsquare_flint", <artisanworktables:artisans_tsquare_flint>, [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [null, <minecraft:flint>, null], [null, <minecraft:flint>, null], 3);
pyrWorktableCreate("artisans", "_spanner_wood", <artisanworktables:artisans_spanner_wood>, [null, <minecraft:planks:*>, null], [null, <minecraft:stick>, <minecraft:planks:*>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_spanner_stone", <artisanworktables:artisans_spanner_stone>, [null, <minecraft:stone>, null], [null, <minecraft:stick>, <minecraft:stone>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_spanner_bone", <artisanworktables:artisans_spanner_bone>, [null, <minecraft:bone>, null], [null, <minecraft:stick>, <minecraft:bone>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_spanner_flint", <artisanworktables:artisans_spanner_flint>, [null, <minecraft:flint>, null], [null, <minecraft:stick>, <minecraft:flint>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_trowel_wood", <artisanworktables:artisans_trowel_wood>, [null, null, <minecraft:planks:*>], [null, <minecraft:stick>, <minecraft:planks:*>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_trowel_stone", <artisanworktables:artisans_trowel_stone>, [null, null, <minecraft:stone>], [null, <minecraft:stick>, <minecraft:stone>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_trowel_bone", <artisanworktables:artisans_trowel_bone>, [null, null, <minecraft:bone>], [null, <minecraft:stick>, <minecraft:bone>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_trowel_flint", <artisanworktables:artisans_trowel_flint>, [null, null, <minecraft:flint>], [null, <minecraft:stick>, <minecraft:flint>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_chisel_wood", <artisanworktables:artisans_chisel_wood>, [null, null, <minecraft:planks:*>], [null, <minecraft:planks:*>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_chisel_stone", <artisanworktables:artisans_chisel_stone>, [null, null, <minecraft:stone>], [null, <minecraft:stone>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_chisel_bone", <artisanworktables:artisans_chisel_bone>, [null, null, <minecraft:bone>], [null, <minecraft:bone>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_chisel_flint", <artisanworktables:artisans_chisel_flint>, [null, null, <minecraft:flint>], [null, <minecraft:flint>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_hammerwood", <artisanworktables:artisans_hammer_wood>, [null, <minecraft:planks:*>, <minecraft:string>.or(<pyrotech:material:14>)], [null, <minecraft:stick>, <minecraft:planks:*>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_hammerstone", <artisanworktables:artisans_hammer_stone>, [null, <minecraft:stone>, <minecraft:string>.or(<pyrotech:material:14>)], [null, <minecraft:stick>, <minecraft:stone>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_hammerbone", <artisanworktables:artisans_hammer_bone>, [null, <minecraft:bone>, <minecraft:string>.or(<pyrotech:material:14>)], [null, <minecraft:stick>, <minecraft:bone>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_hammerflint", <artisanworktables:artisans_hammer_flint>, [null, <minecraft:flint>, <minecraft:string>.or(<pyrotech:material:14>)], [null, <minecraft:stick>, <minecraft:flint>], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_carverwood", <artisanworktables:artisans_carver_wood>, [null, null, <minecraft:planks:*>], [<minecraft:string>.or(<pyrotech:material:14>), <minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:planks:*>, null, null], 3);
pyrWorktableCreate("artisans", "_carverstone", <artisanworktables:artisans_carver_stone>, [null, null, <minecraft:stone>], [<minecraft:string>.or(<pyrotech:material:14>), <minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:stone>, null, null], 3);
pyrWorktableCreate("artisans", "_carverbone", <artisanworktables:artisans_carver_bone>, [null, null, <minecraft:bone>], [<minecraft:string>.or(<pyrotech:material:14>), <minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:bone>, null, null], 3);
pyrWorktableCreate("artisans", "_carverflint", <artisanworktables:artisans_carver_flint>, [null, null, <minecraft:flint>], [<minecraft:string>.or(<pyrotech:material:14>), <minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:flint>, null, null], 3);
pyrWorktableCreate("artisans", "_handsawwood", <artisanworktables:artisans_handsaw_wood>, [null, <minecraft:planks:*>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:planks:*>, <minecraft:stick>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_handsawstone", <artisanworktables:artisans_handsaw_stone>, [null, <minecraft:stone>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:stone>, <minecraft:stick>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_handsawbone", <artisanworktables:artisans_handsaw_bone>, [null, <minecraft:bone>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:bone>, <minecraft:stick>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_handsawflint", <artisanworktables:artisans_handsaw_flint>, [null, <minecraft:flint>, <minecraft:string>.or(<pyrotech:material:14>)], [<minecraft:flint>, <minecraft:stick>, null], [<minecraft:stick>, null, null], 3);
pyrWorktableCreate("artisans", "_driver_wood", <artisanworktables:artisans_driver_wood>, [null, null, <minecraft:planks:*>], [null, <minecraft:planks:*>, null], [<minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>), null], 3);
pyrWorktableCreate("artisans", "_driver_stone", <artisanworktables:artisans_driver_stone>, [null, null, <minecraft:stone>], [null, <minecraft:stone>, null], [<minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>), null], 3);
pyrWorktableCreate("artisans", "_driver_bone", <artisanworktables:artisans_driver_bone>, [null, null, <minecraft:bone>], [null, <minecraft:bone>, null], [<minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>), null], 3);
pyrWorktableCreate("artisans", "_driver_flint", <artisanworktables:artisans_driver_flint>, [null, null, <minecraft:flint>], [null, <minecraft:flint>, null], [<minecraft:stick>, <minecraft:string>.or(<pyrotech:material:14>), null], 3);

BrickKiln.addRecipe("searedbrick_from_unfired", <tconstruct:materials>, <ercore:searedbrick_unfired>, 8000, 0.5, [<pyrotech:material:7>*6]);
BrickKiln.addRecipe("netherbrick_from_netherrack", <minecraft:netherbrick>, <minecraft:netherrack>, 6000, 0.3, [<pyrotech:rock_netherrack>*4]);
BrickOven.addRecipe("blaze_powder_from_blaze_rod", <minecraft:blaze_powder>, <minecraft:blaze_rod>);
BrickOven.addRecipe("cooked_dough_from_dough", <xlfoodmod:cooked_dough>, <xlfoodmod:dough>);

SoakingPot.addRecipe("basalt_block_from_basalt", <ercore:basalt_coaltar>, <liquid:coal_tar>, <advancedrocketry:basalt>, true, 10 * 60 * 20);
SoakingPot.addRecipe("sugar_from_sugarcane", <minecraft:sugar>, <liquid:sugarcane>, <pyrotech:material:8>, true, 5 * 60 * 20);

StoneCrucible.addRecipe("liquid_dirt_from_dirt", <liquid:dirt> * 500, <ore:dirt>, 3 * 60 * 20, true);
StoneCrucible.addRecipe("liquid_sugarcane_from_sugarcane", <liquid:sugarcane> * 500, <ore:sugarcane>, 2 * 60 * 20, true);

StoneSawmill.addRecipe("flour_from_cropWheat", <ercore:flour>, <ore:cropWheat>, 200, <pyrotech:sawmill_blade_iron:*> | <pyrotech:sawmill_blade_stone:*> | <pyrotech:sawmill_blade_bone:*> | <pyrotech:sawmill_blade_flint:*> | <pyrotech:sawmill_blade_diamond:*> | <pyrotech:sawmill_blade_gold:*> | <pyrotech:sawmill_blade_obsidian:*>, 0);
BrickSawmill.addRecipe("flour_from_cropWheat2", <ercore:flour>, <ore:cropWheat>, 200, <pyrotech:sawmill_blade_iron:*> | <pyrotech:sawmill_blade_stone:*> | <pyrotech:sawmill_blade_bone:*> | <pyrotech:sawmill_blade_flint:*> | <pyrotech:sawmill_blade_diamond:*> | <pyrotech:sawmill_blade_gold:*> | <pyrotech:sawmill_blade_obsidian:*>, 0);
BrickSawmill.addRecipe("cement_powder_from_soil", <ercore:cement_powder> * 9, <tconstruct:soil>, 400, <pyrotech:sawmill_blade_iron:*> | <pyrotech:sawmill_blade_stone:*> | <pyrotech:sawmill_blade_bone:*> | <pyrotech:sawmill_blade_flint:*> | <pyrotech:sawmill_blade_diamond:*> | <pyrotech:sawmill_blade_gold:*> | <pyrotech:sawmill_blade_obsidian:*>, 0);
BrickSawmill.addRecipe("treated_stick_from_tarred_board", <immersiveengineering:material>, <pyrotech:material:23>, 400, <pyrotech:sawmill_blade_iron:*> | <pyrotech:sawmill_blade_stone:*> | <pyrotech:sawmill_blade_bone:*> | <pyrotech:sawmill_blade_flint:*> | <pyrotech:sawmill_blade_diamond:*> | <pyrotech:sawmill_blade_gold:*> | <pyrotech:sawmill_blade_obsidian:*>, 0);

Campfire.removeRecipes(<minecraft:bread>);
Campfire.removeRecipes(<minecraft:blaze_powder>);

StoneKiln.removeRecipes(<minecraft:netherbrick>);
PitKiln.removeRecipes(<minecraft:netherbrick>);

BrickCrucible.addRecipe("lime_slurry_from_slaked_lime", <liquid:slaked_lime> * 1000, <ercore:slakedlime_block>, 5 * 60 * 20);

IroncladAnvil.addRecipe("nugget_from_ingot_tiberium", <taiga:tiberium_nugget> * 9, <ore:ingotTiberium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_aurorium", <taiga:aurorium_nugget> * 9, <ore:ingotAurorium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_prometheum", <taiga:prometheum_nugget> * 9, <ore:ingotPrometheum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_duranite", <taiga:duranite_nugget> * 9, <ore:ingotDuranite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_valyrium", <taiga:valyrium_nugget> * 9, <ore:ingotValyrium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_vibranium", <taiga:vibranium_nugget> * 9, <ore:ingotVibranium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_karmesine", <taiga:karmesine_nugget> * 9, <ore:ingotKarmesine>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_manasteel", <botania:manaresource:17> * 9, <ore:ingotManasteel>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_terrasteel", <botania:manaresource:18> * 9, <ore:ingotTerrasteel>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_elvenelementium", <botania:manaresource:19> * 9, <ore:ingotElvenElementium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_silicon", <libvulpes:productnugget:3> * 9, <ore:ingotSilicon>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_tungsten", <ercore:tungsten_nugget> * 9, <ercore:tungsten_ingot>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_draconium", <draconicevolution:nugget> * 9, <ore:ingotDraconium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_draconiumawakened", <draconicevolution:nugget:1> * 9, <ore:ingotDraconiumAwakened>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_aluminum", <immersiveengineering:metal:21> * 9, <ore:ingotAluminum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_lead", <immersiveengineering:metal:22> * 9, <ore:ingotLead>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_silver", <immersiveengineering:metal:24> * 9, <ore:ingotSilver>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_nickel", <immersiveengineering:metal:23> * 9, <ore:ingotNickel>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_uranium", <immersiveengineering:metal:25> * 9, <ore:ingotUranium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_constantan", <immersiveengineering:metal:26> * 9, <ore:ingotConstantan>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_electrum", <immersiveengineering:metal:27> * 9, <ore:ingotElectrum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_refinedobsidian", <mekanism:nugget> * 9, <ore:ingotRefinedObsidian>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_osmium", <mekanism:nugget:1> * 9, <ore:ingotOsmium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_refinedglowstone", <mekanism:nugget:3> * 9, <ore:ingotRefinedGlowstone>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_ovium", <taiga:ovium_nugget> * 9, <ore:ingotOvium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_obsidiorite", <taiga:obsidiorite_nugget> * 9, <ore:ingotObsidiorite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_dilithium", <taiga:dilithium_nugget> * 9, <ore:ingotDilithium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_cobalt", <tconstruct:nuggets> * 9, <ore:ingotCobalt>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_ardite", <tconstruct:nuggets:1> * 9, <ore:ingotArdite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_manyullyn", <tconstruct:nuggets:2> * 9, <ore:ingotManyullyn>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_knightslime", <tconstruct:nuggets:3> * 9, <ore:ingotKnightslime>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_alubrass", <tconstruct:nuggets:5> * 9, <ore:ingotAlubrass>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_jauxum", <taiga:jauxum_nugget> * 9, <ore:ingotJauxum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_terrax", <taiga:terrax_nugget> * 9, <ore:ingotTerrax>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_palladium", <taiga:palladium_nugget> * 9, <ore:ingotPalladium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_uru", <taiga:uru_nugget> * 9, <ore:ingotUru>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_osram", <taiga:osram_nugget> * 9, <ore:ingotOsram>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_abyssum", <taiga:abyssum_nugget> * 9, <ore:ingotAbyssum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_triberium", <taiga:triberium_nugget> * 9, <ore:ingotTriberium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_eezo", <taiga:eezo_nugget> * 9, <ore:ingotEezo>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_fractum", <taiga:fractum_nugget> * 9, <ore:ingotFractum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_violium", <taiga:violium_nugget> * 9, <ore:ingotViolium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_proxii", <taiga:proxii_nugget> * 9, <ore:ingotProxii>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_tritonite", <taiga:tritonite_nugget> * 9, <ore:ingotTritonite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_ignitz", <taiga:ignitz_nugget> * 9, <ore:ingotIgnitz>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_imperomite", <taiga:imperomite_nugget> * 9, <ore:ingotImperomite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_solarium", <taiga:solarium_nugget> * 9, <ore:ingotSolarium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_nihilite", <taiga:nihilite_nugget> * 9, <ore:ingotNihilite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_adamant", <taiga:adamant_nugget> * 9, <ore:ingotAdamant>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_dyonite", <taiga:dyonite_nugget> * 9, <ore:ingotDyonite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_nucleum", <taiga:nucleum_nugget> * 9, <ore:ingotNucleum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_lumix", <taiga:lumix_nugget> * 9, <ore:ingotLumix>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_seismum", <taiga:seismum_nugget> * 9, <ore:ingotSeismum>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_astrium", <taiga:astrium_nugget> * 9, <ore:ingotAstrium>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_niob", <taiga:niob_nugget> * 9, <ore:ingotNiob>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_yrdeen", <taiga:yrdeen_nugget> * 9, <ore:ingotYrdeen>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_iox", <taiga:iox_nugget> * 9, <ore:ingotIox>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_meteorite", <taiga:meteorite_nugget> * 9, <ore:ingotMeteorite>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_basalt", <taiga:basalt_nugget> * 9, <ore:ingotBasalt>, 20, "hammer");
IroncladAnvil.addRecipe("nugget_from_ingot_steel", <immersiveengineering:metal:38> * 3, <ore:blockSteel>, 27, "hammer");
IroncladAnvil.addRecipe("meteoritecobble_from_meteorite_block", <taiga:meteoritecobble_block>, <taiga:meteorite_block>, 30, "hammer");
IroncladAnvil.addRecipe("obsidioritecobble_block_from_meteorite_block", <taiga:obsidioritecobble_block>, <taiga:obsidiorite_block>, 40, "hammer");
IroncladAnvil.addRecipe("obsidian_from_basalt", <minecraft:obsidian>, <ercore:basalt_coaltar>, 50, "hammer");

GraniteAnvil.addRecipe("nugget_from_ingot_gold", <minecraft:gold_nugget> * 9, <ore:ingotGold>, 10, "hammer", true);
GraniteAnvil.addRecipe("nugget_from_ingot_copper", <mekanism:nugget:5> * 9, <ore:ingotCopper>, 10, "hammer", true);
GraniteAnvil.addRecipe("nugget_from_ingot_tin", <mekanism:nugget:6> * 9, <ore:ingotTin>, 10, "hammer", true);
GraniteAnvil.addRecipe("nugget_from_ingot_bronze", <mekanism:nugget:2> * 9, <ore:ingotBronze>, 10, "hammer", true);
GraniteAnvil.addRecipe("copper_plate_from_block", <immersiveengineering:metal:30> * 3, <ore:blockCopper>, 27, "hammer", true);
GraniteAnvil.addRecipe("gold_plate_from_block", <immersiveengineering:metal:40> * 3, <ore:blockGold>, 27, "hammer", true);
GraniteAnvil.addRecipe("flint_from_limestone", <minecraft:flint> * 3, <ore:stoneLimestone>, 15, "pickaxe", true);

MechanicalCompactor.removeRecipes(<minecraft:grass>);
MechanicalCompactor.addRecipe("iron_block_from_ingot", <minecraft:iron_block>, <ore:ingotIron>, 9);
MechanicalCompactor.addRecipe("gold_block_from_ingot", <minecraft:gold_block>, <ore:ingotGold>, 9);
MechanicalCompactor.addRecipe("diamond_block_from_diamond", <minecraft:diamond_block>, <ore:gemDiamond>, 9);
MechanicalCompactor.addRecipe("emerald_block_from_emerald", <minecraft:emerald_block>, <ore:gemEmerald>, 9);
MechanicalCompactor.addRecipe("slime_block_from_slimeball", <minecraft:slime>, <ore:slimeball>, 9);
MechanicalCompactor.addRecipe("slakedlime_block_from_slakedlime", <ercore:slakedlime_block>, <pyrotech:material:8>, 9);
MechanicalCompactor.addRecipe("slakedlime_block_from_cement_powder", <tconstruct:soil>, <ercore:cement_powder>, 9);
MechanicalCompactor.addRecipe("obsidiorite_block_from_ingot", <taiga:obsidiorite_block>, <taiga:obsidiorite_ingot>, 9);
MechanicalCompactor.addRecipe("meteorite_block_from_ingot", <taiga:meteorite_block>, <taiga:meteorite_ingot>, 9);
MechanicalCompactor.addRecipe("steel_block_from_ingot", <immersiveengineering:storage:8>, <ore:ingotSteel>, 9);
MechanicalCompactor.addRecipe("quartz_block_from_ingot", <minecraft:quartz_block>, <ore:gemQuartz>, 9);
MechanicalCompactor.addRecipe("copper_block_from_ingot", <mekanism:basicblock:12>, <ore:ingotCopper>, 9);
MechanicalCompactor.addRecipe("cobalt_block_from_ingot", <tconstruct:metal>, <ore:ingotCobalt>,9);
MechanicalCompactor.addRecipe("ardite_block_from_ingot", <tconstruct:metal:1>, <ore:blockArdite>,9);
MechanicalCompactor.addRecipe("manyullyn_block_from_ingot", <tconstruct:metal:2>, <ore:blockManyullyn>,9);
MechanicalCompactor.addRecipe("knightslime_block_from_ingot", <tconstruct:metal:3>, <ore:blockKnightslime>,9);
MechanicalCompactor.addRecipe("alubrass_block_from_ingot", <tconstruct:metal:5>, <ore:blockAlubrass>,9);
MechanicalCompactor.addRecipe("knightmetal_block_from_ingot", <twilightforest:knightmetal_block>, <ore:ingotKnightmetal>,9);
MechanicalCompactor.addRecipe("fiery_block_from_ingot", <twilightforest:block_storage:1>, <ore:ingotFiery>,9);
MechanicalCompactor.addRecipe("ironwood_block_from_ingot", <twilightforest:block_storage>, <ore:ingotIronwood>,9);
MechanicalCompactor.addRecipe("quartz_enriched_iron_block_from_ingot", <refinedstorage:quartz_enriched_iron_block>, <refinedstorage:quartz_enriched_iron>,9);
MechanicalCompactor.addRecipe("draconium_block_from_ingot", <draconicevolution:draconium_block>, <ore:blockDraconium>,9);
MechanicalCompactor.addRecipe("draconic_block_from_ingot", <draconicevolution:draconic_block>, <ore:ingotDraconiumAwakened>,9);
MechanicalCompactor.addRecipe("aluminum_block_from_ingot", <libvulpes:metal0:9>, <ore:ingotAluminum>,9);
MechanicalCompactor.addRecipe("meteoricIron_block_from_ingot", <taiga:meteorite_block>, <ore:ingotMeteoricIron>,9);
MechanicalCompactor.addRecipe("titanium_block_from_ingot", <libvulpes:metal0:7>, <ore:ingotTitanium>,9);
MechanicalCompactor.addRecipe("Electrum_block_from_ingot", <immersiveengineering:storage:7>, <ore:ingotElectrum>,9);
MechanicalCompactor.addRecipe("constantan_block_from_ingot", <immersiveengineering:storage:6>, <ore:blockConstantan>,9);
MechanicalCompactor.addRecipe("nickel_block_from_ingot", <immersiveengineering:storage:4>, <ore:blockNickel>,9);
MechanicalCompactor.addRecipe("silver_block_from_ingot", <immersiveengineering:storage:3>, <ore:blockSilver>,9);
MechanicalCompactor.addRecipe("uranium_block_from_ingot", <immersiveengineering:storage:5>, <ore:blockUranium>,9);
MechanicalCompactor.addRecipe("osmium_block_from_ingot", <mekanism:basicblock>, <ore:ingotOsmium>,9);
MechanicalCompactor.addRecipe("bronze_block_from_ingot", <mekanism:basicblock:1>, <ore:ingotBronze>,9);
MechanicalCompactor.addRecipe("refinedobsidian_block_from_ingot", <mekanism:basicblock:2>, <ore:ingotRefinedObsidian>,9);
MechanicalCompactor.addRecipe("coal_block_from_ingot", <mekanism:basicblock:3>, <ore:charcoal>,9);
MechanicalCompactor.addRecipe("refinedglowstone_block_from_ingot", <mekanism:basicblock:4>, <ore:ingotRefinedGlowstone>,9);
MechanicalCompactor.addRecipe("salt_block_from_ingot", <mekanism:saltblock>, <ore:dustSalt>,9);
MechanicalCompactor.addRecipe("mobius_fuel_block_from_ingot", <projecte:fuel_block:1>, <projecte:item.pe_fuel:1>,9);
MechanicalCompactor.addRecipe("aeternalis_fuel_block_from_ingot", <projecte:fuel_block:2>, <projecte:item.pe_fuel:2>,9);
MechanicalCompactor.addRecipe("achemical_coal_fuel_block_from_ingot", <projecte:fuel_block>, <projecte:item.pe_fuel>,9);
MechanicalCompactor.addRecipe("steeleaf_block_from_ingot", <twilightforest:block_storage:2>, <ore:ingotSteeleaf>,9);
MechanicalCompactor.addRecipe("carminite_block_from_ingot", <twilightforest:block_storage:4>, <ore:carminite>,9);
MechanicalCompactor.addRecipe("lead_block_from_ingot", <immersiveengineering:storage:2>, <ore:ingotLead>,9);
MechanicalCompactor.addRecipe("furarctic_block_from_ingot", <twilightforest:block_storage:3>, <ore:furArctic>,9);

Bloomery.createWitherForgeBuilder("shard_from_obsidain_magic", <ercore:obsidian_magic_shard>, <ercore:obsidian_magic>)
.setAnvilTiers(["obsidian"])
.setBurnTimeTicks(30000)
.setFailureChance(0.45)
.setBloomYield(7, 9)
.setSlagItem(<pyrotech:slag>, 4)
.addFailureItem(<pyrotech:slag>, 1)
.addFailureItem(<pyrotech:rock>, 2)
.register();