#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;

//Origins_Eternity
//2021.8.19
//Food

var bread_unfired as ItemFood = VanillaFactory.createItemFood("bread_unfired", 0);
bread_unfired.alwaysEdible = true;
bread_unfired.creativeTab = <creativetab:food>;
bread_unfired.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(1200, 1));
		player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(1200, 1));
		player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(600, 1));
    }
};
bread_unfired.register();

var raw_beef as ItemFood = VanillaFactory.createItemFood("raw_beef", 0);
raw_beef.alwaysEdible = true;
raw_beef.creativeTab = <creativetab:food>;
raw_beef.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(1000, 1));
		player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(1000, 1));
		player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(600, 1));
    }
};
raw_beef.register();

var raw_pork as ItemFood = VanillaFactory.createItemFood("raw_pork", 0);
raw_pork.alwaysEdible = true;
raw_pork.creativeTab = <creativetab:food>;
raw_pork.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
	    player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(500, 1));
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(1500, 1));
		player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(1500, 2));
		player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(500, 1));
    }
};
raw_pork.register();

var raw_chicken as ItemFood = VanillaFactory.createItemFood("raw_chicken", 0);
raw_chicken.alwaysEdible = true;
raw_chicken.creativeTab = <creativetab:food>;
raw_chicken.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(900, 1));
		player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(1000, 2));
		player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(500, 1));
    }
};
raw_chicken.register();

var raw_rabbit as ItemFood = VanillaFactory.createItemFood("raw_rabbit", 0);
raw_rabbit.alwaysEdible = true;
raw_rabbit.creativeTab = <creativetab:food>;
raw_rabbit.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(800, 1));
		player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(800, 1));
		player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(400, 2));
    }
};
raw_rabbit.register();

var raw_mutton as ItemFood = VanillaFactory.createItemFood("raw_mutton", 0);
raw_mutton.alwaysEdible = true;
raw_mutton.creativeTab = <creativetab:food>;
raw_mutton.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(1000, 1));
		player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(900, 1));
		player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(600, 2));
    }
};
raw_mutton.register();

//2022.2.7
var sugar as ItemFood = VanillaFactory.createItemFood("sugar", 2);
sugar.alwaysEdible = true;
sugar.creativeTab = <creativetab:food>;
sugar.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:toughasnails:thirst>.makePotionEffect(400, 1));
    }
};
sugar.register();
