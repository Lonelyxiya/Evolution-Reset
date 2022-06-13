//Origins_Eternity
//2022.2.6
//Pollution_of_the_Realms
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.builder.Copy;

var mod_recipes = [

<adpother:diamond_vacuum_bag>,
<adpother:iron_vacuum_bag>,
<adpother:gold_vacuum_bag>

] as IItemStack[];
for items in mod_recipes
{
recipes.remove(items);
}

var vacuumbag = [

<adpother:diamond_vacuum_bag>,
<adpother:iron_vacuum_bag>,
<adpother:gold_vacuum_bag>

] as IItemStack[];

var material = [

<ore:gemDiamond>,
<ore:ingotIron>,
<ore:ingotGold>

] as IOreDictEntry[];

var respirator = [

<adpother:diamond_respirator>,
<adpother:iron_respirator>,
<adpother:gold_respirator>

] as IItemStack[];

for i, materials in material
    {

var vacuumbags = vacuumbag[i];

recipes.addShaped(vacuumbags,
[[<ore:wool>, <ore:slimeball>, <ore:wool>],
[materials, <usefulbackpacks:backpack:2>, materials],
[<ore:leather>, <ore:leather>, <ore:leather>]]);
  
    }

for i, materials in material
    {

var respirators = respirator[i];

recipes.addShaped(respirators,
[[<minecraft:glass_bottle>, <galacticraftcore:oxygen_mask>, <minecraft:glass_bottle>],
[<ore:leather>, materials, <ore:leather>],
[<ore:wool>, <ore:treeLeaves>, <ore:wool>]]);
  
    }

//2022.2.6

var vacuumbag = [

<adpother:diamond_vacuum_bag>,
<adpother:iron_vacuum_bag>,
<adpother:gold_vacuum_bag>

] as IItemStack[];

for items in vacuumbag
{

RecipeBuilder.get("tailor")
  .setCopy(
        Copy.byOutput([items]).runAfter())
  .setName("vacuumbag")
  .setLevelRequired(10)
  .addTool(<ore:artisansNeedle>, 10)
  .addTool(<ore:artisansShears>, 20)
  .setExtraOutputOne(<minecraft:string> * 3, 0.3)	 
  .setExtraOutputTwo(<minecraft:feather> * 2, 0.7)
  .setSecondaryIngredients([<ore:string> * 9, <artisanworktables:design_pattern>.withTag({ArtisanWorktables: {RecipeName: "tailor:vacuumbag"}})])
  .create();

}

var respirator = [

<adpother:diamond_respirator>,
<adpother:iron_respirator>,
<adpother:gold_respirator>

] as IItemStack[];

for items in respirator
{

RecipeBuilder.get("tailor")
  .setCopy(
        Copy.byOutput([items]).runAfter())
  .setName("respirator")
  .setLevelRequired(10)
  .addTool(<ore:artisansNeedle>, 15)
  .addTool(<ore:artisansShears>, 10)
  .setExtraOutputOne(<minecraft:string> * 4, 0.6)	 
  .setExtraOutputTwo(<minecraft:feather> * 5, 0.4)		   
  .setSecondaryIngredients([<ore:string> * 8, <artisanworktables:design_pattern>.withTag({ArtisanWorktables: {RecipeName: "tailor:respirator"}})])
  .create();

}
