//Origins_Eternity
//2021.8.27
//Artisanworktables
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.Copy;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanintegrations.requirement.GameStages;

RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, <pyrotech:anvil_iron_plated>, <pyrotech:anvil_iron_plated>, <pyrotech:anvil_iron_plated>, <pyrotech:material:16>],
    [<ore:ingotIron>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <ore:ingotIron>],
    [<pyrotech:material:16>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <pyrotech:material:16>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation3")
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .addTool(<ore:artisansHammer>, 20)
  .addTool(<ore:artisansTSquare>, 20)
  .addTool(<ore:artisansCarver>, 20)
  .setExtraOutputOne(<minecraft:iron_nugget> * 2, 0.7)
  .setExtraOutputTwo(<pyrotech:material:16> * 3, 0.2)
  .setExtraOutputThree(<pyrotech:rock:7> * 5, 0.1)
  .setSecondaryIngredients([<pyrotech:anvil_granite>, <contenttweaker:blueprint1>])
  .setMaximumTier(2)
  .addOutput(<minecraft:iron_ingot> * 4, 1)
  .addOutput(<artisanworktables:workstation:3>, 99)
  .create();
  
RecipeBuilder.get("basic")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:5>]).runAfter())
  .setName("workshop5")
  .setLevelRequired(10)
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansCarver>, 10)
  .setExtraOutputOne(<pyrotech:material:23> * 2, 0.9)
  .setExtraOutputTwo(<pyrotech:material:23> * 3, 0.1)
  .setSecondaryIngredients([<pyrotech:anvil_granite>, <contenttweaker:blueprint2>])
  .create();
  
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotSteel>, null, <ore:ingotSteel>],
    [<ore:ingotSteel>, null, <ore:ingotSteel>],
    [null, <ore:plateSteel>, null]])
  .setName("bucket")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .addTool(<ore:artisansHammer>, 20)
  .addTool(<ore:artisansCutters>, 20)
  .setExtraOutputOne(<minecraft:iron_nugget> * 2, 0.9)
  .setExtraOutputTwo(<minecraft:iron_nugget> * 3, 0.1)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint3>])
  .addOutput(<minecraft:bucket>, 80)
  .addOutput(<minecraft:iron_nugget> * 5, 20)
  .create();
  
RecipeBuilder.get("basic")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:3>]).runAfter())
  .setName("workshop3")
  .setLevelRequired(15)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint4>])
  .setExtraOutputOne(<minecraft:iron_nugget> * 2, 0.8)
  .setExtraOutputTwo(<pyrotech:rock:7> * 3, 0.2)	
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansCarver>, 30) 
  .setFluid(<liquid:lava> * 1000)
  .create();
  
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pyrotech:masonry_brick_block>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <pyrotech:masonry_brick_block>],
    [<ore:stoneBasaltPolished>, <pyrotech:planks_tarred>, <pyrotech:crate_stone>, <pyrotech:planks_tarred>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:stoneBasaltPolished>]])
  .setName("crafting_table")
  .setLevelRequired(30)
  .setFluid(<liquid:lava> * 2000)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.5)
  .setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.3)	
  .setExtraOutputThree(<immersiveengineering:metal:28> * 2, 0.2)	
  .addTool(<ore:artisansTSquare>, 40)  
  .addTool(<ore:artisansHammer>, 40)
  .addTool(<ore:artisansCarver>, 40) 
  .setSecondaryIngredients([<immersiveengineering:metal:30> * 9, <pyrotech:anvil_iron_plated>, <contenttweaker:blueprint5>])
  .addOutput(<tconstruct:tooltables>)
  .create();
  
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:blockSteel>, <ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>, <ore:blockSteel>],
    [<ore:blockSteel>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <ore:blockSteel>],
    [<ore:blockSteel>, <ore:blockCopper>, <ore:blockCopper>, <ore:blockCopper>, <ore:blockSteel>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation6")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setFluid(<liquid:lava> * 4000)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.6)
  .setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.2)	
  .setExtraOutputThree(<immersiveengineering:metal:20> * 3, 0.2)	
  .addTool(<ore:artisansTSquare>, 50)  
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansCarver>, 50)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint6>])
  .addOutput(<artisanworktables:workstation:6>)
  .create();
  
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:planks_tarred>, <ore:slabWood>, <ore:slabWood>, <ore:slabWood>, <pyrotech:planks_tarred>],
    [<pyrotech:planks_tarred>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:planks_tarred>],
    [<pyrotech:planks_tarred>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <pyrotech:planks_tarred>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation11")
  .setLevelRequired(15)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:iron_nugget> * 2, 0.7)
  .setExtraOutputTwo(<pyrotech:rock:7> * 4, 0.1)	
  .setExtraOutputThree(<pyrotech:material:23> * 3, 0.2)	  
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansCarver>, 50) 
  .addTool(<ore:artisansTSquare>, 30) 
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint7>])  
  .addOutput(<artisanworktables:workstation:11>)
  .create();
  
RecipeBuilder.get("chef")
  .setShaped([
    [<contenttweaker:flour>, <contenttweaker:flour>, <contenttweaker:flour>],
    [<contenttweaker:flour>, <contenttweaker:flour>, <contenttweaker:flour>],
    [<contenttweaker:flour>, <contenttweaker:flour>, <contenttweaker:flour>]])
  .setName("dough")
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .setFluid(<liquid:milk> * 1000)		
  .addTool(<ore:artisansSifter>, 10)
  .addTool(<ore:artisansPan>, 10)
  .setSecondaryIngredients([<contenttweaker:blueprint8>])  
  .addOutput(<xlfoodmod:dough>*3)  
  .create();
  
RecipeBuilder.get("basic")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:11>]).runAfter())
  .setName("workshop11")
  .setLevelRequired(15)
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansCarver>, 30)   
  .setExtraOutputOne(<minecraft:iron_nugget> * 4, 0.8)
  .setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.2)	  
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint9>])
  .create();
  
RecipeBuilder.get("chef")
  .setShaped([
    [<pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>],
    [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],
    [<ore:blockSteel>, <ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>, <ore:blockSteel>],
    [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>],
    [<ore:blockIron>, <ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>, <ore:stoneBasaltPolished>, <ore:blockIron>]])
  .setName("furnace")
  .setLevelRequired(30)
  .setSecondaryIngredients([<immersiveengineering:metal:38> * 9, <minecraft:fire_charge> * 2, <pyrotech:anvil_iron_plated>, <contenttweaker:blueprint10>])
  .addTool(<ore:artisansHammer>, 30)
  .setFluid(<liquid:lava> * 5000)
  .addTool(<ore:artisansCarver>, 30)  
  .addTool(<ore:artisansTSquare>, 50)   
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:iron_nugget> * 4, 0.4)
  .setExtraOutputTwo(<pyrotech:material:16> * 6, 0.4)	
  .setExtraOutputThree(<immersiveengineering:metal:28> * 2, 0.2)
  .addOutput(<contenttweaker:furnace_core>)
  .create(); 
  
RecipeBuilder.get("engineer")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:6>]).runAfter())
  .setName("workshop6")
  .setLevelRequired(20)
  .setFluid(<liquid:lava> * 2000)	
  .addTool(<ore:artisansDriver>, 20)
  .addTool(<ore:artisansSpanner>, 20)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint11>])
  .setExtraOutputOne(<immersiveengineering:metal:20> * 3, 0.8)	
  .setExtraOutputTwo(<immersiveengineering:metal:28> * 7, 0.2)	
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:nether_brick>, <ore:blockSteel>, <minecraft:skull:1>, <ore:blockSteel>, <minecraft:nether_brick>],
    [<ore:blockSteel>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <ore:blockSteel>],
    [<minecraft:skull:1>, <minecraft:nether_brick>, <pyrotech:bloomery>, <minecraft:nether_brick>, <minecraft:skull:1>],
    [<ore:blockSteel>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <ore:blockSteel>],
    [<minecraft:nether_brick>, <ore:blockSteel>, <minecraft:skull:1>, <ore:blockSteel>, <minecraft:nether_brick>]])
  .setName("wither_forge")
  .setLevelRequired(30)
  .setSecondaryIngredients([<minecraft:fire_charge> * 4, <pyrotech:anvil_iron_plated>, <contenttweaker:blueprint12>])
  .setFluid(<liquid:lava> * 4000)	
  .addTool(<ore:artisansDriver>, 50)
  .addTool(<ore:artisansSpanner>, 50)
  .addTool(<ore:artisansChisel>, 50)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:bone> * 3, 0.3)	 
  .setExtraOutputTwo(<minecraft:netherbrick> * 5, 0.4)	
  .setExtraOutputThree(<immersiveengineering:metal:28> * 7, 0.3)	
  .addRequirement(GameStages.allOf(["one", "two", "three"]))
  .addOutput(<pyrotech:wither_forge>)
  .create(); 
  
RecipeBuilder.get("basic")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:14>]).runAfter())
  .setName("workshop14")
  .setLevelRequired(10)
  .setExtraOutputOne(<minecraft:brick> * 2, 0.5)	 
  .setExtraOutputTwo(<pyrotech:material:23> * 3, 0.5)	
  .setSecondaryIngredients([<pyrotech:anvil_granite>, <contenttweaker:blueprint13>])
  .addTool(<ore:artisansTrowel>, 15)
  .addTool(<ore:artisansChisel>, 10)
  .create();
  
RecipeBuilder.get("potter")
  .setShaped([
    [<contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>],
    [<contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>],
    [<contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>],
    [<contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>],
    [<contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>, <contenttweaker:cement_powder>]])
  .setFluid(<liquid:water> * 4000)
  .setLevelRequired(10)
  .addRequirement(GameStages.allOf(["one"]))
  .setConsumeExperience(false)
  .addTool(<ore:artisansDriver>, 40)
  .addTool(<ore:artisansSpanner>, 40)
  .addTool(<ore:artisansChisel>, 40)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:clay_ball> * 5, 0.3)	 
  .setExtraOutputTwo(<contenttweaker:cement_powder> * 2, 0.4)	
  .setExtraOutputThree(<pyrotech:material:8> * 1, 0.3)	
  .addOutput(<contenttweaker:searedbrick_unfired>*4)
  .create();
  
RecipeBuilder.get("potter")
  .setShaped([
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:blockClay>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>, <ore:sandpile>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>]])
  .setName("stone_decoration10")  
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setSecondaryIngredients([<pyrotech:anvil_granite>, <immersiveengineering:tool>.reuse()])
  .setFluid(<liquid:water> * 500)
  .addTool(<ore:artisansDriver>, 20)
  .addTool(<ore:artisansSpanner>, 20)
  .addTool(<ore:artisansChisel>, 20)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:clay_ball> * 5, 0.4)
  .setExtraOutputTwo(<minecraft:brick> * 3, 0.5)	
  .setExtraOutputThree(<pyrotech:rock:5> * 6, 0.1)	
  .addOutput(<immersiveengineering:stone_decoration:10>)
  .create();
  
RecipeBuilder.get("potter")
  .setShaped([
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:blockClay>, <pyrotech:material:5>, <ore:ingotBrick>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>, <pyrotech:material:5>, <ore:ingotBrick>]])
  .setSecondaryIngredients([<pyrotech:anvil_granite>, <immersiveengineering:tool>.reuse()])
  .setFluid(<liquid:coal_tar> * 2000)	
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .addTool(<ore:artisansDriver>, 30)
  .addTool(<ore:artisansSpanner>, 30)
  .addTool(<ore:artisansChisel>, 30)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:clay_ball> * 6, 0.3)	 
  .setExtraOutputTwo(<minecraft:brick> * 2, 0.6)	
  .setExtraOutputThree(<pyrotech:rock:5> * 5, 0.1)
  .addOutput(<immersiveengineering:stone_decoration:1>*3, 80)
  .addOutput(<immersiveengineering:stone_decoration:1>*4, 20)
  .create();

RecipeBuilder.get("potter")
  .setShaped([
    [<pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<pyrotech:material:16>, <pyrotech:material:5>, <ore:blockClay>, <pyrotech:material:5>, <pyrotech:material:16>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
    [<pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>, <pyrotech:material:5>, <pyrotech:material:16>]])
  .setName("stone_decoration")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setSecondaryIngredients([<pyrotech:anvil_granite>, <immersiveengineering:tool>.reuse()])
  .setFluid(<liquid:coal_tar> * 1000)	
  .addTool(<ore:artisansDriver>, 30)
  .addTool(<ore:artisansSpanner>, 30)
  .addTool(<ore:artisansChisel>, 30)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:clay_ball> * 4, 0.2)	 
  .setExtraOutputTwo(<pyrotech:material:16> * 2, 0.5)	
  .setExtraOutputThree(<pyrotech:material:4> * 4, 0.3)	
  .addOutput(<immersiveengineering:stone_decoration>*2, 50)
  .addOutput(<immersiveengineering:stone_decoration>*3, 50)
  .create();
  
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:blockLapis>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockLapis>],
    [<ore:blockLapis>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <ore:blockLapis>],
    [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation:7")
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint14>])
  .setMaximumTier(2)
  .setExtraOutputOne(<immersiveengineering:metal:28> * 5, 0.5)	 
  .setExtraOutputTwo(<pyrotech:material:16> * 2, 0.2)	
  .setExtraOutputThree(<minecraft:dye:4> * 6, 0.3)	 
  .addTool(<ore:artisansCarver>, 15)
  .addTool(<ore:artisansChisel>, 20)
  .addTool(<ore:artisansHammer>, 30)
  .addOutput(<artisanworktables:workstation:7>, 95)
  .addOutput(<immersiveengineering:storage:8>*2, 5)
  .create();

RecipeBuilder.get("engineer")
 .setCopy(
        Copy.byOutput([<artisanworktables:workshop:7>]).runAfter())
  .setName("workshop:7")
  .setLevelRequired(15)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint15>])
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:dye:4> * 5, 0.8)	 
  .setExtraOutputTwo(<pyrotech:material:23> * 6, 0.2)	
  .addTool(<ore:artisansAthame>, 17)
  .addTool(<ore:artisansGrimoire>, 15)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, null, null],
    [<botania:livingrock>, <botania:manabottle>, <botania:livingrock>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]])
  .setName("pool")
  .setLevelRequired(5)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint16>])
  .setExtraOutputOne(<minecraft:dye:4> * 3, 0.4)	 
  .setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.5)	
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansGrimoire>, 15)
  .addRequirement(GameStages.allOf(["one", "two"]))
  .addOutput(<botania:pool>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:cobblestone>, <botania:petal:*>, <botania:mushroom:*>, <botania:petal:*>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [null, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null],
    [null, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
  .setName("alter")
  .setLevelRequired(10)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint17>])
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:dye:4> * 4, 0.2)	 
  .setExtraOutputTwo(<pyrotech:rock> * 3, 0.2)	
  .setExtraOutputThree(<minecraft:stone_slab:3> * 1, 0.6)	 
  .addTool(<ore:artisansGrimoire>, 20)
  .addTool(<ore:artisansAthame>, 15)
  .addTool(<ore:artisansCarver>, 30)
  .addOutput(<botania:altar>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:wool:4>, <minecraft:wool:3>, <minecraft:wool:10>, <minecraft:wool:3>, <minecraft:wool:4>],
    [<minecraft:wool:10>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <minecraft:wool:10>],
    [<minecraft:wool:4>, <ore:blockGold>, <ore:blockGold>, <ore:blockGold>, <minecraft:wool:4>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:string> * 5, 0.2)	 
  .setExtraOutputTwo(<pyrotech:material:16> * 7, 0.3)	
  .setExtraOutputThree(<pyrotech:rock> * 2, 0.5)	   
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint18>])
  .addTool(<ore:artisansShears>, 20)
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansCarver>, 30)
  .addOutput(<artisanworktables:workstation>)
  .create();  
  
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>],
    [null, null, null]])
  .setLevelRequired(2)
  .addTool(<ore:artisansNeedle>, 10)
  .addTool(<ore:artisansShears>, 10)
  .addOutput(<toughasnails:wool_helmet>, 80)
  .addOutput(<minecraft:wool> * 2, 20) 
  .setExtraOutputOne(<minecraft:string> * 3, 0.3)	 
  .setExtraOutputTwo(<minecraft:feather> * 5, 0.7)		   
  .setSecondaryIngredients([<ore:string> * 5])
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:wool>]])
  .setLevelRequired(5)
  .addTool(<ore:artisansNeedle>, 20)
  .addTool(<ore:artisansShears>, 20)
  .addOutput(<toughasnails:wool_chestplate>, 70)
  .addOutput(<minecraft:wool> * 3, 30) 
  .setExtraOutputOne(<minecraft:string> * 2, 0.5)	 
  .setExtraOutputTwo(<minecraft:feather> * 6, 0.5)		   
  .setSecondaryIngredients([<ore:string> * 8])
  .create();
  
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:2>, <ore:wool>]])
  .setSecondaryIngredients([<minecraft:string> * 7])
  .setLevelRequired(3)
  .addTool(<ore:artisansNeedle>, 25)
  .addTool(<ore:artisansShears>, 15)
  .addOutput(<toughasnails:wool_leggings>, 60)
  .setExtraOutputOne(<minecraft:string> * 3, 0.4)	 
  .setExtraOutputTwo(<minecraft:feather> * 5, 0.6)	
  .addOutput(<minecraft:wool> * 4, 40)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<pyrotech:material:2>, null, <pyrotech:material:2>],
    [<ore:wool>, null, <ore:wool>],
    [<ore:wool>, null, <ore:wool>]])
  .setLevelRequired(1)
  .setSecondaryIngredients([<minecraft:string> * 4])
  .addTool(<ore:artisansNeedle>, 25)
  .addTool(<ore:artisansShears>, 15)
  .addOutput(<toughasnails:wool_boots>, 90)
  .addOutput(<minecraft:wool> * 2, 10)
  .setExtraOutputOne(<minecraft:string>, 0.7)	 
  .setExtraOutputTwo(<minecraft:feather> * 2, 0.3)	
  .create();
  
RecipeBuilder.get("basic")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop>]).runAfter())
  .setLevelRequired(10)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint19>])
  .addTool(<ore:artisansCarver>, 30)
  .addTool(<ore:artisansHammer>, 25)
  .setExtraOutputOne(<minecraft:string>, 0.4)	 
  .setExtraOutputTwo(<minecraft:gold_nugget> * 2, 0.6)	
  .create();
  
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:22>, <ore:wool>, <pyrotech:material:22>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <pyrotech:material:22>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <pyrotech:material:22>, <ore:wool>, <pyrotech:material:22>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:wool>]])
  .setSecondaryIngredients([<minecraft:string> * 9])
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .setMaximumTier(2)
  .addTool(<ore:artisansLens>, 10)
  .addTool(<ore:artisansNeedle>, 10)
  .addTool(<ore:artisansShears>, 15)
  .addOutput(<firstaid:plaster>)
  .setExtraOutputOne(<minecraft:string>, 0.1)	 
  .setExtraOutputTwo(<minecraft:feather> * 2, 0.6)	
  .setExtraOutputThree(<minecraft:string> * 2, 0.3)	 
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:fiberHemp>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:fiberHemp>],
    [<ore:wool>, <ore:wool>, <ore:fiberHemp>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <ore:fiberHemp>, <ore:wool>, <ore:fiberHemp>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:fiberHemp>, <ore:wool>, <ore:wool>],
    [<ore:fiberHemp>, <ore:wool>, <ore:wool>, <ore:wool>, <ore:fiberHemp>]])
  .addOutput(<firstaid:bandage>)
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .setMaximumTier(2)
  .setSecondaryIngredients([<minecraft:string> * 8])
  .addTool(<ore:artisansLens>, 20)
  .addTool(<ore:artisansNeedle>, 20)
  .addTool(<ore:artisansShears>, 25)
  .setExtraOutputOne(<minecraft:string>, 0.2)	 
  .setExtraOutputTwo(<minecraft:feather> * 2, 0.7)
  .setExtraOutputThree(<minecraft:string> * 2, 0.1)	 
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:leather>, <ore:leather>, <ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <ore:leather>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation:13")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint20>])
  .addTool(<ore:artisansCarver>, 30)
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansTSquare>, 30)
  .setMaximumTier(2)
  .setExtraOutputOne(<pyrotech:rock:7>, 0.2)	 
  .setExtraOutputTwo(<pyrotech:material:16> * 2, 0.5)	  
  .setExtraOutputThree(<minecraft:leather>, 0.3)	 
  .addOutput(<artisanworktables:workstation:13>)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:string>, <ore:string>, <ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>, <ore:string>, <ore:string>]])
  .setMaximumTier(2)
  .setLevelRequired(3)
  .setConsumeExperience(false)
  .addTool(<ore:artisansLens>, 10)
  .addTool(<ore:artisansNeedle>, 10)
  .addTool(<ore:artisansShears>, 10)
  .addOutput(<minecraft:wool>)
  .setExtraOutputOne(<minecraft:string>, 0.2)	 
  .setExtraOutputTwo(<minecraft:feather> * 2, 0.6)	
  .setExtraOutputThree(<minecraft:string> * 2, 0.2)	 
  .create();

var colorfulwools = [

<minecraft:wool:1>,
<minecraft:wool:2>,
<minecraft:wool:3>,
<minecraft:wool:4>,
<minecraft:wool:5>,
<minecraft:wool:6>,
<minecraft:wool:7>,
<minecraft:wool:8>,
<minecraft:wool:9>,
<minecraft:wool:10>,
<minecraft:wool:11>,
<minecraft:wool:12>,
<minecraft:wool:13>,
<minecraft:wool:14>,
<minecraft:wool:15>

] as IItemStack[];

var color = [

<ore:dyeOrange>,
<ore:dyeMagenta>,
<ore:dyeLightBlue>,
<ore:dyeYellow>,
<ore:dyeLime>,
<ore:dyePink>,
<ore:dyeGray>,
<ore:dyeLightGray>,
<ore:dyeCyan>,
<ore:dyePurple>,
<ore:dyeBlue>,
<ore:dyeBrown>,
<ore:dyeGreen>,
<ore:dyeRed>,
<ore:dyeBlack>

] as IOreDictEntry[];

for i, colors in color
    {

var colorfulwools = colorfulwools[i];

RecipeBuilder.get("tailor")
  .setShapeless([<minecraft:wool>, colors])
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .addOutput(colorfulwools)  
  .create();
  
    }

RecipeBuilder.get("tailor")
  .setShaped([
    [<pyrotech:planks_tarred>, <pyrotech:wool_tarred>, <immersiveengineering:metal:38>, <pyrotech:wool_tarred>, <pyrotech:planks_tarred>],
    [<ore:ingotSteel>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:ingotSteel>],
    [<immersiveengineering:metal:38>, <pyrotech:wool_tarred>, <pyrotech:straw_bed>, <pyrotech:wool_tarred>, <immersiveengineering:metal:38>],
    [<ore:ingotSteel>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:ingotSteel>],
    [<pyrotech:planks_tarred>, <pyrotech:wool_tarred>, <immersiveengineering:metal:38>, <pyrotech:wool_tarred>, <pyrotech:planks_tarred>]])
  .setName("bed")
  .setLevelRequired(25)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <minecraft:string>, <contenttweaker:blueprint21>])
  .setMaximumTier(2)
  .addTool(<ore:artisansCutters>, 15)
  .addTool(<ore:artisansShears>, 20)
  .addTool(<ore:artisansNeedle>, 15)
  .setExtraOutputOne(<minecraft:string>, 0.5)	 
  .setExtraOutputTwo(<minecraft:feather> * 4, 0.2)	
  .setExtraOutputThree(<pyrotech:material:23> * 2, 0.3)	 
  .addOutput(<minecraft:bed>)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<pyrotech:material:2>, <pyrotech:material:2>, <pyrotech:material:2>],
    [<pyrotech:thatch>, <pyrotech:thatch>, <pyrotech:thatch>],
    [<pyrotech:material:2>, <pyrotech:material:2>, <pyrotech:material:2>]])
  .setSecondaryIngredients([<pyrotech:material:14> * 6])
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .addTool(<ore:artisansCarver>, 30)
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<pyrotech:straw_bed>,80)
  .addOutput(<pyrotech:material:2> * 6, 20)
  .setExtraOutputOne(<pyrotech:material:13>, 0.5)	 
  .setExtraOutputTwo(<pyrotech:material:2> * 3, 0.5)	
  .create();

var colorfulbeds = [

<minecraft:bed:1>,
<minecraft:bed:2>,
<minecraft:bed:3>,
<minecraft:bed:4>,
<minecraft:bed:5>,
<minecraft:bed:6>,
<minecraft:bed:7>,
<minecraft:bed:8>,
<minecraft:bed:9>,
<minecraft:bed:10>,
<minecraft:bed:11>,
<minecraft:bed:12>,
<minecraft:bed:13>,
<minecraft:bed:14>,
<minecraft:bed:15>

] as IItemStack[];

for i, colors in color
    {

var colorfulbeds = colorfulbeds[i];

RecipeBuilder.get("tailor")
  .setShapeless([<minecraft:bed>, colors])
  .setLevelRequired(3)
  .setConsumeExperience(false)
  .addOutput(colorfulbeds)  
  .create();
  
    }
	
RecipeBuilder.get("basic")
  .setShaped([
    [<immersiveengineering:storage:8>, <immersiveengineering:storage:8>, <minecraft:emerald_block>, <immersiveengineering:storage:8>, <immersiveengineering:storage:8>],
    [<minecraft:iron_block>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <minecraft:iron_block>],
    [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation:9")
  .setLevelRequired(30)
  .setConsumeExperience(false) 
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint22>])
  .setMaximumTier(2)
  .addTool(<ore:artisansLens>, 20)
  .addTool(<ore:artisansNeedle>, 20)
  .addTool(<ore:artisansShears>, 20)
  .setExtraOutputOne(<pyrotech:material:16>, 0.6)	 
  .setExtraOutputTwo(<minecraft:iron_nugget> * 5, 0.2)	
  .setExtraOutputThree(<pyrotech:material:23>, 0.2)	  
  .addOutput(<artisanworktables:workstation:9>)
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:stickStone>, null, <ore:stickStone>],
    [null, <ore:rodBlaze>, null],
    [<pyrotech:masonry_brick_block>, <ore:blockSteel>, <pyrotech:masonry_brick_block>]])
  .setName("brewing_stand")
  .setLevelRequired(10)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint23>])
  .addTool(<ore:artisansLens>, 20)
  .addTool(<ore:artisansNeedle>, 20)
  .setExtraOutputOne(<pyrotech:material:16>, 0.6)	 
  .setExtraOutputTwo(<minecraft:iron_nugget> * 5, 0.4)
  .addOutput(<minecraft:brewing_stand>)
  .create();

RecipeBuilder.get("engineer")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:9>]).runAfter())
  .setName("workshop9")
  .setLevelRequired(15)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint24>])
  .addTool(<ore:artisansCarver>, 10)
  .addTool(<ore:artisansHammer>, 20)
  .setExtraOutputOne(<pyrotech:material:23> * 2, 0.5)	 
  .setExtraOutputTwo(<immersiveengineering:metal:28> * 4, 0.3)	
  .setExtraOutputThree(<immersiveengineering:metal:28> * 3, 0.2)
  .create();

RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:livingrock>, <minecraft:brewing_stand>, <minecraft:brewing_stand>, <minecraft:brewing_stand>, <ore:livingrock>],
    [<ore:livingrock>, <ore:runeManaB>, <ore:runeManaB>, <ore:runeManaB>, <ore:livingrock>],
    [<ore:livingrock>, <minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>, <ore:livingrock>],
    [<ore:livingrock>, <botania:storage>, <botania:storage>, <botania:storage>, <ore:livingrock>],
    [<ore:livingrock>, <botania:storage>, <botania:storage>, <botania:storage>, <ore:livingrock>]])
  .setName("brewery")
  .setLevelRequired(15)
  .setConsumeExperience(false)
  .setMaximumTier(2)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint25>])  
  .addTool(<ore:artisansChisel>, 15)
  .addTool(<ore:artisansCarver>, 20)
  .addTool(<ore:artisansHammer>, 40)
  .setExtraOutputOne(<minecraft:blaze_powder> * 2, 0.2)	 
  .setExtraOutputTwo(<botania:manaresource>, 0.6)	
  .setExtraOutputThree(<minecraft:iron_nugget> * 6, 0.2)
  .addOutput(<botania:brewery>)
  .create();

recipes.remove(<usefulbackpacks:backpack:*>);

var colorfulsmallbags = [

<usefulbackpacks:backpack>.withTag({display: {color: 16383998}}),
<usefulbackpacks:backpack>.withTag({display: {color: 16351261}}),
<usefulbackpacks:backpack>.withTag({display: {color: 13061821}}),
<usefulbackpacks:backpack>.withTag({display: {color: 3847130}}),
<usefulbackpacks:backpack>.withTag({display: {color: 16701501}}),
<usefulbackpacks:backpack>.withTag({display: {color: 8439583}}),
<usefulbackpacks:backpack>.withTag({display: {color: 15961002}}),
<usefulbackpacks:backpack>.withTag({display: {color: 4673362}}),
<usefulbackpacks:backpack>.withTag({display: {color: 10329495}}),
<usefulbackpacks:backpack>.withTag({display: {color: 1481884}}),
<usefulbackpacks:backpack>.withTag({display: {color: 8991416}}),
<usefulbackpacks:backpack>.withTag({display: {color: 3949738}}),
<usefulbackpacks:backpack>.withTag({display: {color: 8606770}}),
<usefulbackpacks:backpack>.withTag({display: {color: 6192150}}),
<usefulbackpacks:backpack>.withTag({display: {color: 11546150}}),
<usefulbackpacks:backpack>.withTag({display: {color: 1908001}})

] as IItemStack[];

for i, colors in color
    {

var colorfulsmallbags = colorfulsmallbags[i];

RecipeBuilder.get("tanner")
  .setShapeless([<usefulbackpacks:backpack>, colors])
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .addOutput(colorfulsmallbags)
  .create();
  
    }

var colorfulmidbags = [

<usefulbackpacks:backpack:1>.withTag({display: {color: 16383998}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 16351261}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 13061821}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 3847130}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 16701501}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 8439583}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 15961002}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 4673362}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 10329495}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 1481884}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 8991416}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 3949738}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 8606770}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 6192150}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 11546150}}),
<usefulbackpacks:backpack:1>.withTag({display: {color: 1908001}})

] as IItemStack[];

for i, colors in color
    {

var colorfulmidbags = colorfulmidbags[i];

RecipeBuilder.get("tanner")
  .setShapeless([<usefulbackpacks:backpack:1>, colors])
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .addOutput(colorfulmidbags)
  .create();
  
    }

var colorfullargebags = [

<usefulbackpacks:backpack:2>.withTag({display: {color: 16383998}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 16351261}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 13061821}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 3847130}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 16701501}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 8439583}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 15961002}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 4673362}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 10329495}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 1481884}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 8991416}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 3949738}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 8606770}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 6192150}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 11546150}}),
<usefulbackpacks:backpack:2>.withTag({display: {color: 1908001}})

] as IItemStack[];

for i, colors in color
    {

var colorfullargebags = colorfullargebags[i];

RecipeBuilder.get("tanner")
  .setShapeless([<usefulbackpacks:backpack:2>, colors])
  .setLevelRequired(15)
  .setConsumeExperience(false)
  .addOutput(colorfullargebags)
  .create();
  
    }

RecipeBuilder.get("tanner")
  .setShaped([
    [<ore:wool>, <ore:leather>, <ore:wool>],
    [<ore:leather>, <pyrotech:crate_stone>, <ore:leather>],
    [<ore:wool>, <ore:leather>, <ore:wool>]])
  .setName("smallbag")
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .setSecondaryIngredients([<minecraft:string>*4, <contenttweaker:blueprint26>])  
  .setExtraOutputOne(<minecraft:leather>, 0.1)	 
  .setExtraOutputTwo(<minecraft:string> * 2, 0.9)	
  .addTool(<ore:artisansNeedle>, 10)
  .addTool(<ore:artisansPunch>, 10)
  .addOutput(<usefulbackpacks:backpack>, 80)
  .addOutput(<minecraft:wool> * 6, 20) 
  .create();

RecipeBuilder.get("tanner")
  .setShaped([
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <ore:leather>, <usefulbackpacks:backpack>, <ore:leather>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>]])
  .setName("midbag")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setSecondaryIngredients([<minecraft:string>*6, <contenttweaker:blueprint27>])  
  .setExtraOutputOne(<minecraft:leather> * 4, 0.2)	 
  .setExtraOutputTwo(<minecraft:string> * 3, 0.4)
  .setExtraOutputThree(<minecraft:feather> * 2, 0.4)  
  .addTool(<ore:artisansGroover>, 15)
  .addTool(<ore:artisansNeedle>, 15)
  .addTool(<ore:artisansShears>, 20)
  .addOutput(<usefulbackpacks:backpack:1>)
  .create();

RecipeBuilder.get("tanner")
  .setShaped([
    [<minecraft:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <minecraft:leather>],
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <usefulbackpacks:backpack:1>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>],
    [<minecraft:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <minecraft:leather>]])
  .setName("largebag")
  .setLevelRequired(15)
  .setConsumeExperience(false)
  .setSecondaryIngredients([<minecraft:string>*8, <contenttweaker:blueprint28>])  
  .setExtraOutputOne(<minecraft:leather> * 2, 0.3)	 
  .setExtraOutputTwo(<minecraft:string> * 4, 0.5)
  .setExtraOutputThree(<minecraft:feather> * 6, 0.2)  
  .addTool(<ore:artisansGroover>, 25)
  .addTool(<ore:artisansNeedle>, 25)
  .addTool(<ore:artisansPunch>, 30)  
  .addOutput(<usefulbackpacks:backpack:2>)
  .create();
  
RecipeBuilder.get("tanner")
  .setShaped([
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>],
    [<minecraft:leather>, <pyrotech:crate>, <minecraft:leather>],
    [<pyrotech:wool_tarred>, <minecraft:leather>, <pyrotech:wool_tarred>]])
  .setName("simplebag")
  .setLevelRequired(3)
  .setConsumeExperience(false)
  .setSecondaryIngredients([<minecraft:string>*4, <contenttweaker:blueprint29>])  
  .setExtraOutputTwo(<minecraft:string> * 2, 0.8)
  .setExtraOutputThree(<minecraft:leather>, 0.2)  
  .addTool(<ore:artisansNeedle>, 15)
  .addTool(<ore:artisansPunch>, 10)  
  .addOutput(<pyrotech:bag_simple>, 90)
  .addOutput(<minecraft:leather> * 4, 10)  
  .create();
  
RecipeBuilder.get("basic")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:13>]).runAfter())
  .setName("workshop13")
  .setLevelRequired(20)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint30>])  
  .setExtraOutputTwo(<minecraft:string> * 3, 0.5)
  .setExtraOutputThree(<minecraft:leather> * 6, 0.5)  
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansPunch>, 15)  
  .create();
  
RecipeBuilder.get("tanner")
  .setShaped([
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>],
    [<pyrotech:wool_tarred>, <ore:leather>, <ore:ingotGold>, <ore:leather>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <ore:ingotGold>, <pyrotech:bag_simple>, <ore:ingotGold>, <pyrotech:wool_tarred>],
    [<pyrotech:wool_tarred>, <ore:leather>, <ore:ingotGold>, <ore:leather>, <pyrotech:wool_tarred>],
    [<ore:leather>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <pyrotech:wool_tarred>, <ore:leather>]])
  .setName("durablebag")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setExtraOutputOne(<minecraft:leather>, 0.5)	 
  .setExtraOutputTwo(<minecraft:string> * 3, 0.2)
  .setExtraOutputThree(<minecraft:gold_nugget> * 5, 0.3)  
  .addTool(<ore:artisansGroover>, 20)
  .addTool(<ore:artisansNeedle>, 35)
  .addTool(<ore:artisansPunch>, 10)  
  .setSecondaryIngredients([<pyrotech:material:26> * 6, <contenttweaker:blueprint31>])
  .addOutput(<pyrotech:bag_durable>)
  .create();
  
RecipeBuilder.get("chemist")
  .setShaped([
    [<ore:sandpile>, <ore:gunpowder>, <ore:powderBlaze>, <ore:gunpowder>, <ore:sandpile>],
    [<ore:gunpowder>, <ore:powderBlaze>, <ore:sandpile>, <ore:powderBlaze>, <ore:gunpowder>],
    [<ore:powderBlaze>, <ore:sandpile>, <pyrotech:material:30>, <ore:sandpile>, <ore:powderBlaze>],
    [<ore:gunpowder>, <ore:powderBlaze>, <ore:sandpile>, <ore:powderBlaze>, <ore:gunpowder>],
    [<ore:sandpile>, <ore:gunpowder>, <ore:powderBlaze>, <ore:gunpowder>, <ore:sandpile>]])
  .setFluid(<liquid:coal_tar> *2000)
  .setName("tnt")
  .setLevelRequired(30)
  .setConsumeExperience(false)
  .setMaximumTier(2)
  .setSecondaryIngredients([<minecraft:fire_charge>, <contenttweaker:blueprint32>])  
  .addTool(<ore:artisansChisel>, 15)
  .addTool(<ore:artisansCarver>, 20)
  .addTool(<ore:artisansHammer>, 40)
  .setExtraOutputOne(<minecraft:blaze_powder>, 0.1)	 
  .setExtraOutputTwo(<minecraft:gunpowder> * 2, 0.4)	
  .setExtraOutputThree(<pyrotech:material:21> * 3, 0.5)
  .addOutput(<minecraft:tnt>)
  .create();
 
for i, colors in color
    {

var colorfulwools = colorfulwools[i];

RecipeBuilder.get("tailor")
  .setShapeless([<minecraft:wool>, colors])
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .addOutput(colorfulwools)  
  .create();
  
    }

var tools = [

<ore:artisansAthame>,
<ore:artisansBeaker>,
<ore:artisansBurner>,
<ore:artisansCarver>,
<ore:artisansChisel>,
<ore:artisansCompass>,
<ore:artisansCutters>,
<ore:artisansCuttingBoard>,
<ore:artisansDriver>,
<ore:artisansFile>,
<ore:artisansFramingHammer>,
<ore:artisansGemCutter>,
<ore:artisansGrimoire>,
<ore:artisansGroover>,
<ore:artisansHammer>,
<ore:artisansHandsaw>,
<ore:artisansHatchet>,
<ore:artisansKnife>,
<ore:artisansLens>,
<ore:artisansNeedle>,
<ore:artisansPan>,
<ore:artisansPencil>,
<ore:artisansPliers>,
<ore:artisansPunch>,
<ore:artisansQuill>,
<ore:artisansShears>,
<ore:artisansSifter>,
<ore:artisansSolderer>,
<ore:artisansSpanner>,
<ore:artisansTrowel>,
<ore:artisansTSquare>,
<ore:constructionWand>

] as IOreDictEntry[];

for items in tools

    {
	
RecipeBuilder.get("blacksmith")
  .setName("tools")
  .setLevelRequired(5)
  .setConsumeExperience(false)
  .setCopy(Copy.byOutput([items]))
  .setSecondaryIngredients([<pyrotech:chopping_block>, <immersiveengineering:tool>.reuse()])  
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansHammer>, 10)
  .setExtraOutputOne(<pyrotech:rock:7> * 3, 0.7)	 
  .setExtraOutputTwo(<pyrotech:rock:7> * 4, 0.3)	
  .create();	
	
RecipeBuilder.get("engineer")
  .setName("tools")
  .setLevelRequired(5)
  .setCopy(Copy.byOutput([items]))
  .setSecondaryIngredients([<pyrotech:chopping_block>, <immersiveengineering:tool>.reuse()])  
  .addTool(<ore:artisansHandsaw>, 10)
  .addTool(<ore:artisansHammer>, 5)
  .setExtraOutputOne(<pyrotech:rock:7> * 5, 0.6)
  .setExtraOutputTwo(<pyrotech:rock:7> * 6, 0.4)
  .create();
  
    }

var toolslow = [

<ore:artisansHammer>,
<ore:artisansTSquare>,
<ore:artisansCarver>,
<ore:constructionWand>

] as IOreDictEntry[];

for items in toolslow

    {
	
RecipeBuilder.get("basic")
  .setName("tools")
  .setLevelRequired(3)
  .setConsumeExperience(false)
  .setCopy(Copy.byOutput([items]))
  .setSecondaryIngredients([<pyrotech:iron_hammer>, <pyrotech:chopping_block>, <contenttweaker:blueprint33>])  
  .setExtraOutputOne(<pyrotech:rock:7>, 0.8)	 
  .setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.2)	
  .create();	

    }
	
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:stickTreatedWood>, null, null, null, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, null, null, null, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, null, null, null, <ore:stickTreatedWood>]])
  .setName("ladder")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .setMaximumTier(2)
  .setSecondaryIngredients([<ore:twine>, <contenttweaker:blueprint34>])  
  .addTool(<ore:artisansTSquare>, 15)
  .addTool(<ore:artisansCarver>, 20)
  .addTool(<ore:artisansHammer>, 40)
  .setExtraOutputOne(<pyrotech:rock:7> * 4, 0.4)	 
  .setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.3)	
  .setExtraOutputThree(<pyrotech:rock:7> * 3, 0.3)  
  .addOutput(<minecraft:ladder>)
  .create();

RecipeBuilder.get("jeweler")
  .setShapeless([<pyrotech:generated_pile_slag_tiberium>])
  .setName("tiberiumcrystal")
  .setLevelRequired(30)
  .setConsumeExperience(false)
  .setMaximumTier(2)
  .addRequirement(GameStages.allOf(["one", "two", "three", "four", "five"]))
  .setFluid(<liquid:water> * 1000)		
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansGemCutter>, 30)
  .addTool(<ore:artisansLens>, 10)
  .setExtraOutputOne(<pyrotech:rock> * 4, 0.3)	 
  .setExtraOutputTwo(<pyrotech:rock:4> * 3, 0.3)	
  .setExtraOutputThree(<pyrotech:rock:5> * 2, 0.4)  
  .addOutput(<taiga:tiberium_crystal>, 80)
  .addOutput(<pyrotech:generated_slag_tiberium> * 2, 20)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:obsidian>, <pyrotech:anvil_iron_plated>, <pyrotech:anvil_iron_plated>, <pyrotech:anvil_iron_plated>, <ore:obsidian>],
    [<ore:blockRedstone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <pyrotech:stash_stone>, <ore:blockRedstone>],
    [<ore:obsidian>, <ore:blockGold>, <ore:blockDiamond>, <ore:blockGold>, <ore:obsidian>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>],
    [<ore:stoneBasaltPolished>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <ore:stoneBasaltPolished>]])
  .setName("workstation4")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .addRequirement(GameStages.allOf(["one", "two", "three", "four"]))
  .setFluid(<liquid:lava> * 8000)
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansTSquare>, 10)
  .addTool(<ore:artisansCarver>, 25)
  .setExtraOutputOne(<minecraft:gold_nugget> * 3, 0.3)
  .setExtraOutputTwo(<minecraft:redstone> * 5, 0.6)
  .setExtraOutputThree(<pyrotech:rock:7> * 7, 0.1)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint35>])
  .setMaximumTier(2)
  .addOutput(<artisanworktables:workstation:4>)
  .create();
  
RecipeBuilder.get("engineer")
  .setCopy(
        Copy.byOutput([<artisanworktables:workshop:4>]).runAfter())
  .setName("workshop4")
  .setFluid(<liquid:lava> * 4000)
  .setLevelRequired(10)
  .addTool(<ore:artisansHammer>, 20)
  .addTool(<ore:artisansCarver>, 30)
  .setExtraOutputOne(<minecraft:gold_nugget> * 6, 0.5)
  .setExtraOutputTwo(<pyrotech:material:23> * 5, 0.5)
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint36>])
  .create();
  
//Origins_Eternity
//2022.1.21

RecipeBuilder.get("jeweler")
  .setShaped([
    [null, <ore:dustGlowstone>, <pyrotech:material:26>],
    [null, <ore:stickTreatedWood>, <ore:dustGlowstone>],
    [<ore:stickTreatedWood>, null, null]])
  .setName("glowstonetorch")
  .setLevelRequired(10)
  .setConsumeExperience(false)
  .addTool(<ore:artisansPliers>, 10)
  .addTool(<ore:artisansLens>, 5)
  .setExtraOutputOne(<pyrotech:material:13> * 5, 0.25)	 
  .setExtraOutputTwo(<pyrotech:rock:7> * 2, 0.75)	
  .addOutput(<minecraft:glowstone_dust>, 15)
  .addOutput(<galacticraftcore:glowstone_torch> * 1, 85)
  .create();

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
  .setSecondaryIngredients([<ore:string> * 9, <contenttweaker:blueprint37>])
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
  .setSecondaryIngredients([<ore:string> * 8, <contenttweaker:blueprint38>])
  .create();

}

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>],
    [<ore:plateSteel>, <pyrotech:crate_stone>, <pyrotech:crate_stone>, <pyrotech:crate_stone>, <ore:plateSteel>],
    [<pyrotech:planks_tarred>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <pyrotech:planks_tarred>],
    [<ore:plateSteel>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <ore:plateSteel>],
    [<pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>, <ore:plateSteel>, <pyrotech:planks_tarred>]])
  .setName("chest")
  .setLevelRequired(10)
  .setMaximumTier(2)
  .setExtraOutputOne(<minecraft:iron_nugget> * 5, 0.4)
  .setExtraOutputTwo(<pyrotech:rock:7> * 8, 0.5)	
  .setExtraOutputThree(<pyrotech:material:23> * 2, 0.1)	
  .addTool(<ore:artisansTSquare>, 20)  
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansCarver>, 40) 
  .setSecondaryIngredients([<pyrotech:anvil_iron_plated>, <contenttweaker:blueprint39>])
  .addOutput(<tconstruct:tooltables>)
  .create();

var food = loadedMods["xlfoodmod"].items;
for items in food {
  if((items.definition.id != "xlfoodmod:top_bun") && (items.definition.id != "xlfoodmod:dough") && (items.definition.id != "xlfoodmod:potato_bread") && (items.definition.id != "xlfoodmod:rice_bread") && (items.definition.id != "xlfoodmod:baguette") && (items.definition.id != "xlfoodmod:bottom_bun")) {

RecipeBuilder.get("chef")
  .setCopy(
        Copy.byOutput([items]))
  .setMaximumTier(2)
  .setLevelRequired(10)
  .setConsumeExperience(false)	
  .addTool(<ore:artisansSifter>, 5)
  .addTool(<ore:artisansPan>, 10)
  .addTool(<ore:artisansBurner>, 20) 
  .create();

  }
}

//2022.5.7
RecipeBuilder.get("chef")
  .setShaped([
[<xlfoodmod:dough>, <xlfoodmod:dough>, <xlfoodmod:dough>],
[<xlfoodmod:dough>, null, <xlfoodmod:dough>],
[null, null, null]])
  .setMaximumTier(2)
  .setLevelRequired(10)
  .setConsumeExperience(false)	
  .addTool(<ore:artisansSifter>, 5)
  .addTool(<ore:artisansPan>, 10)
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(<xlfoodmod:top_bun>)
  .create();
  
  RecipeBuilder.get("chef")
  .setShaped([
[null, null, null],
[<xlfoodmod:dough>, null, <xlfoodmod:dough>],
[<xlfoodmod:dough>, <xlfoodmod:dough>, <xlfoodmod:dough>]])
  .setMaximumTier(2)
  .setLevelRequired(10)
  .setConsumeExperience(false)	
  .addTool(<ore:artisansSifter>, 5)
  .addTool(<ore:artisansPan>, 10)
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(<xlfoodmod:bottom_bun>)
  .create();
  
  RecipeBuilder.get("chef")
  .setShaped([
[<xlfoodmod:dough>, null, null],
[null, <xlfoodmod:dough>, null],
[null, null, <xlfoodmod:dough>]])
  .setMaximumTier(2)
  .setLevelRequired(10)
  .setConsumeExperience(false)	
  .addTool(<ore:artisansSifter>, 5)
  .addTool(<ore:artisansPan>, 10)
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(<xlfoodmod:baguette>)
  .create();
  
  RecipeBuilder.get("chef")
  .setShaped([
[null, null, null],
[<xlfoodmod:dough>, <minecraft:baked_potato>, <xlfoodmod:dough>],
[null, null, null]])
  .setMaximumTier(2)
  .setLevelRequired(10)
  .setConsumeExperience(false)	
  .addTool(<ore:artisansSifter>, 5)
  .addTool(<ore:artisansPan>, 10)
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(<xlfoodmod:potato_bread>)
  .create();
  
  RecipeBuilder.get("chef")
  .setShaped([
[<xlfoodmod:dough>, <xlfoodmod:dough>, <xlfoodmod:dough>],
[<xlfoodmod:dough>, null, <xlfoodmod:dough>],
[null, null, null]])
  .setMaximumTier(2)
  .setLevelRequired(10)
  .setConsumeExperience(false)	
  .addTool(<ore:artisansSifter>, 5)
  .addTool(<ore:artisansPan>, 10)
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(<xlfoodmod:top_bun>)
  .create();
  
  RecipeBuilder.get("chef")
  .setShaped([
[null, null, null],
[<xlfoodmod:dough>, <xlfoodmod:rice>, <xlfoodmod:dough>],
[null, null, null]])
  .setMaximumTier(2)
  .setLevelRequired(10)
  .setConsumeExperience(false)	
  .addTool(<ore:artisansSifter>, 5)
  .addTool(<ore:artisansPan>, 10)
  .addTool(<ore:artisansBurner>, 20)
  .addOutput(<xlfoodmod:rice_bread>)
  .create();