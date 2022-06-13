//Lacz
//2021.08.11

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

var ghast = LootTweaker.getTable("minecraft:entities/ghast");
var ghast_main = ghast.getPool("main");
var ghast_extra = ghast.addPool("ghast_extra", 1, 1, 0, 0);
ghast_extra.addItemEntry(<botania:manabottle>,1);

var pig = LootTweaker.getTable("minecraft:entities/pig");
var pig_extra = pig.addPool("pig_extra", 1, 1, 1, 1);
pig_extra.addItemEntry(<contenttweaker:raw_pork>, 20, 1, [Functions.setCount(1, 4)], []);

var rabbit = LootTweaker.getTable("minecraft:entities/rabbit");
var rabbit_extra = rabbit.addPool("rabbit_extra", 1, 1, 1, 1);
rabbit_extra.addItemEntry(<contenttweaker:raw_rabbit> * 1, 20, 1, [], [Conditions.killedByPlayer()]);
(<scalinghealth:crystalshard>);

var cow = LootTweaker.getTable("minecraft:entities/cow");
var cow_extra = cow.addPool("cow_extra", 1, 1, 1, 1);
cow_extra.addItemEntry(<contenttweaker:raw_beef>, 20, 1, [Functions.setCount(1, 4)], []);

var chicken = LootTweaker.getTable("minecraft:entities/chicken");
var chicken_main = chicken.getPool("main");
var chicken_extra = chicken.addPool("chicken_extra", 1, 1, 1, 1);
chicken_extra.addItemEntry(<contenttweaker:raw_chicken> * 1, 20, 1, [], [Conditions.killedByPlayer()]);

var sheep = LootTweaker.getTable("minecraft:entities/sheep");
var sheep_extra = sheep.addPool("sheep_extra", 1, 1, 1, 1);
sheep_extra.addItemEntry(<contenttweaker:raw_mutton>, 20, 1, [Functions.setCount(1, 4)], []);











