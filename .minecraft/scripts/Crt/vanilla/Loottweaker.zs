//Lacz
//2021.08.11

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

var ghast = LootTweaker.getTable("minecraft:entities/ghast");
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
var chicken_extra = chicken.addPool("chicken_extra", 1, 1, 1, 1);
chicken_extra.addItemEntry(<contenttweaker:raw_chicken> * 1, 20, 1, [], [Conditions.killedByPlayer()]);

var sheep = LootTweaker.getTable("minecraft:entities/sheep");
var sheep_extra = sheep.addPool("sheep_extra", 1, 1, 1, 1);
sheep_extra.addItemEntry(<contenttweaker:raw_mutton>, 20, 1, [Functions.setCount(1, 4)], []);

var blueprints = [
<contenttweaker:blueprint1>,
<contenttweaker:blueprint2>,
<contenttweaker:blueprint3>,
<contenttweaker:blueprint4>,
<contenttweaker:blueprint5>,
<contenttweaker:blueprint6>,
<contenttweaker:blueprint7>,
<contenttweaker:blueprint8>,
<contenttweaker:blueprint9>,
<contenttweaker:blueprint10>,
<contenttweaker:blueprint11>,
<contenttweaker:blueprint12>,
<contenttweaker:blueprint13>,
<contenttweaker:blueprint14>,
<contenttweaker:blueprint15>,
<contenttweaker:blueprint16>,
<contenttweaker:blueprint17>,
<contenttweaker:blueprint18>,
<contenttweaker:blueprint19>,
<contenttweaker:blueprint20>,
<contenttweaker:blueprint21>,
<contenttweaker:blueprint22>,
<contenttweaker:blueprint23>,
<contenttweaker:blueprint24>,
<contenttweaker:blueprint25>,
<contenttweaker:blueprint26>,
<contenttweaker:blueprint27>,
<contenttweaker:blueprint28>,
<contenttweaker:blueprint29>,
<contenttweaker:blueprint30>,
<contenttweaker:blueprint31>,
<contenttweaker:blueprint32>,
<contenttweaker:blueprint33>,
<contenttweaker:blueprint34>,
<contenttweaker:blueprint35>,
<contenttweaker:blueprint36>,
<contenttweaker:blueprint37>,
<contenttweaker:blueprint38>,
<contenttweaker:blueprint39>
] as IItemStack[];


var box = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
var box_extra = box.addPool("box_extra", 0, 1, 0, 0);

var box1 = LootTweaker.getTable("minecraft:chests/end_city_treasure");
var box_extra1 = box1.addPool("box_extra1", 0, 1, 0, 0);

var box2 = LootTweaker.getTable("minecraft:chests/igloo_chest");
var box_extra2 = box2.addPool("box_extra2", 0, 1, 0, 0);

var box3 = LootTweaker.getTable("minecraft:chests/jungle_temple");
var box_extra3 = box3.addPool("box_extra3", 0, 1, 0, 0);

var box4 = LootTweaker.getTable("minecraft:chests/jungle_temple_dispenser");
var box_extra4 = box4.addPool("box_extra4", 0, 1, 0, 0);

var box5 = LootTweaker.getTable("minecraft:chests/nether_bridge");
var box_extra5 = box5.addPool("box_extra5", 0, 1, 0, 0);

var box6 = LootTweaker.getTable("minecraft:chests/simple_dungeon");
var box_extra6 = box6.addPool("box_extra6", 0, 1, 0, 0);

var box7 = LootTweaker.getTable("minecraft:chests/spawn_bonus_chest");
var box_extra7 = box7.addPool("box_extra7", 0, 1, 0, 0);

var box8 = LootTweaker.getTable("minecraft:chests/stronghold_corridor");
var box_extra8 = box8.addPool("box_extra8", 0, 1, 0, 0);

var box9 = LootTweaker.getTable("minecraft:chests/stronghold_crossing");
var box_extra9 = box9.addPool("box_extra9", 0, 1, 0, 0);

var box10 = LootTweaker.getTable("minecraft:chests/stronghold_library");
var box_extra10 = box10.addPool("box_extra10", 0, 1, 0, 0);

var box11 = LootTweaker.getTable("minecraft:chests/village_blacksmith");
var box_extra11 = box11.addPool("box_extra11", 0, 1, 0, 0);

var box12 = LootTweaker.getTable("minecraft:chests/woodland_mansion");
var box_extra12 = box12.addPool("box_extra12", 0, 1, 0, 0);

for items in blueprints {

box_extra.addItemEntry(items,1);
box_extra1.addItemEntry(items,1);
box_extra2.addItemEntry(items,1);
box_extra3.addItemEntry(items,1);
box_extra4.addItemEntry(items,1);
box_extra5.addItemEntry(items,1);
box_extra6.addItemEntry(items,1);
box_extra7.addItemEntry(items,1);
box_extra8.addItemEntry(items,1);
box_extra9.addItemEntry(items,1);
box_extra10.addItemEntry(items,1);
box_extra11.addItemEntry(items,1);
box_extra12.addItemEntry(items,1);

}





