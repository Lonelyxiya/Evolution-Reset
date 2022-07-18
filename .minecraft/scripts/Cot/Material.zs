#loader contenttweaker
#ignoreBracketErrors 
#modloaded tconstruct
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.Trait;

//Origins_Eternity
//2021.7.25
//Tconstruct_Material

val black_obsidian = mods.contenttweaker.tconstruct.MaterialBuilder.create("black_obsidian");
black_obsidian.color = 0x4b0082;
black_obsidian.craftable = false;
black_obsidian.liquid = <liquid:obsidian_fluid>;
black_obsidian.castable = true;
black_obsidian.addItem(<item:pyrotech:material:33>);
black_obsidian.representativeItem = <item:pyrotech:material:33>;
black_obsidian.addHeadMaterialStats(139, 7.07, 4.2, 5);
black_obsidian.addHandleMaterialStats(0.9, -100);
black_obsidian.addExtraMaterialStats(90);
black_obsidian.addBowMaterialStats(5, 0.4, -1);
black_obsidian.addMaterialTrait("duritos", "bowstring");
black_obsidian.addMaterialTrait("duritos", "head");
black_obsidian.addMaterialTrait("duritos", "handle");
black_obsidian.addMaterialTrait("duritos", "extra");
black_obsidian.itemLocalizer = function(thisMaterial, itemName){return game.localize("material.contenttweaker.obsidian.name") + " " + itemName;};
black_obsidian.localizedName = game.localize("material.contenttweaker.obsidian.name");
black_obsidian.register();

//2021.8.20
val tungsten_steel = mods.contenttweaker.tconstruct.MaterialBuilder.create("tungsten_steel");
tungsten_steel.color = 0x3c3c3c;
tungsten_steel.craftable = false;
tungsten_steel.liquid = <liquid:tungsten_steel_fluid>;
tungsten_steel.castable = true;
tungsten_steel.addItem(<item:contenttweaker:tungsten_steel_ingot>);
tungsten_steel.representativeItem = <item:contenttweaker:tungsten_steel_ingot>;
tungsten_steel.addHeadMaterialStats(2000, 8.0, 10.0, 9);
tungsten_steel.addHandleMaterialStats(3.0, 100);
tungsten_steel.addExtraMaterialStats(100);
tungsten_steel.addBowMaterialStats(3, 4, 7);
tungsten_steel.addMaterialTrait("heavy");
tungsten_steel.addMaterialTrait("sharp", "bowstring");
tungsten_steel.addMaterialTrait("sharp", "head");
tungsten_steel.addMaterialTrait("dense", "handle");
tungsten_steel.addMaterialTrait("stiff", "extra");
tungsten_steel.addMaterialTrait("dense", "extra");
tungsten_steel.itemLocalizer = function(thisMaterial, itemName){return game.localize("material.contenttweaker.tungsten_steel.name") + " " + itemName;};
tungsten_steel.localizedName = game.localize("material.contenttweaker.tungsten_steel.name");
tungsten_steel.register();