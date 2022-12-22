#ignoreBracketErrors
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;
import crafttweaker.item.IItemStack;

var mob_one = ArmorHandler.createArmorGroup("mob_one", 0.3);
var mob_three = ArmorHandler.createArmorGroup("mob_three", 0.7);

val zombie = ArmorHandler.createArmorEntity("minecraft:zombie");
val husk = ArmorHandler.createArmorEntity("minecraft:husk");
val skeleton = ArmorHandler.createArmorEntity("minecraft:skeleton");
val stray = ArmorHandler.createArmorEntity("minecraft:stray");
val zombie_villager = ArmorHandler.createArmorEntity("minecraft:zombie_villager");

mob_one.addGameStage("one");
mob_one.addEntity(zombie);
mob_one.addEntity(husk);
mob_one.addEntity(zombie_villager);

mob_three.addGameStage("three");
mob_three.addEntity(skeleton);
mob_three.addEntity(stray);

mob_one.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:chainmail_helmet>, 100, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet>, 90, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:diamond_helmet>, 10, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:chainmail_chestplate>, 100, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate>, 90, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:diamond_chestplate>, 10, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:chainmail_leggings>, 100, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings>, 90, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:diamond_leggings>, 10, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:chainmail_boots>, 100, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots>, 90, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots>, 60, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:diamond_boots>, 10, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:wooden_sword>, 100, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:stone_sword>, 90, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword>, 50, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:golden_sword>, 50, 0));
mob_one.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:diamond_sword>, 20, 0));

mob_three.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:chainmail_helmet>, 100, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet>, 90, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:diamond_helmet>, 10, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:chainmail_chestplate>, 100, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate>, 90, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:diamond_chestplate>, 10, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:chainmail_leggings>, 100, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings>, 90, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:diamond_leggings>, 10, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:chainmail_boots>, 100, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots>, 90, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots>, 60, 0));
mob_three.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:diamond_boots>, 10, 0));