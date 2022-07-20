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