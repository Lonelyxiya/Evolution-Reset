#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;

//Origins_Eternal
//2021.8.19
//Food

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