#priority 0
//Origins_Eternal
//2021.8.26
import crafttweaker.item.IItemStack;

val banlist = [

<minecraft:lava_bucket>,
<minecraft:water_bucket>, 
<minecraft:flint_and_steel>, 
<minecraft:iron_ingot>, 
<minecraft:gold_ingot>, 
<minecraft:obsidian>, 
<botania:manaresource>, 
<immersiveengineering:metal:8>, 
<immersiveengineering:pickaxe_steel>, 
<minecraft:emerald>, 
<minecraft:redstone>, 
<immersiveengineering:axe_steel>, 
<immersiveengineering:shovel_steel>, 
<immersiveengineering:sword_steel>, 
<immersiveengineering:metal>, 
<minecraft:sand>, 
<firstaid:morphine>, 
<minecraft:bucket>, 
<minecraft:water_bucket>, 
<minecraft:lava_bucket>, 
<botania:manabottle>, 
<minecraft:diamond>, 
<minecraft:stone_axe>, 
<minecraft:wooden_axe>, 
<minecraft:wooden_pickaxe>, 
<minecraft:wooden_hoe>, 
<minecraft:wooden_shovel>, 
<minecraft:iron_axe>, 
<minecraft:golden_axe>, 
<minecraft:diamond_axe>, 
<minecraft:stone_shovel>, 
<minecraft:iron_shovel>, 
<minecraft:golden_shovel>, 
<minecraft:diamond_shovel>, 
<minecraft:stone_pickaxe>, 
<minecraft:iron_pickaxe>, 
<minecraft:golden_pickaxe>, 
<minecraft:diamond_pickaxe>, 
<minecraft:stone_sword>, 
<minecraft:iron_sword>, 
<minecraft:golden_sword>, 
<minecraft:diamond_sword>, 
<minecraft:stone_hoe>, 
<minecraft:iron_hoe>, 
<minecraft:golden_hoe>, 
<minecraft:diamond_hoe>, 
<minecraft:leather_helmet>, 
<minecraft:leather_chestplate>, 
<minecraft:leather_leggings>, 
<minecraft:leather_boots>, 
<minecraft:iron_helmet>, 
<minecraft:iron_chestplate>, 
<minecraft:iron_leggings>, 
<minecraft:iron_boots>, 
<minecraft:golden_helmet>, 
<minecraft:golden_chestplate>, 
<minecraft:golden_leggings>, 
<minecraft:golden_boots>, 
<minecraft:diamond_helmet>, 
<minecraft:diamond_chestplate>, 
<minecraft:diamond_leggings>, 
<minecraft:diamond_boots>, 
<betternether:cincinnasite_axe>, 
<betternether:cincinnasite_axe_diamond>, 
<betternether:cincinnasite_pickaxe>, 
<betternether:cincinnasite_pickaxe_diamond>, 
<twilightforest:fiery_sword>, 
<twilightforest:fiery_pickaxe>, 
<minecraft:iron_ore>, 
<minecraft:carrot>, 
<minecraft:bread>, 
<minecraft:potato>, 
<minecraft:apple>, 
<minecraft:beetroot>, 
<minecraft:cooked_chicken>, 
<minecraft:cooked_beef>, 
<minecraft:cooked_rabbit>, 
<minecraft:cooked_porkchop>, 
<minecraft:cooked_mutton>, 
<minecraft:golden_apple:1>, 
<minecraft:chainmail_helmet>, 
<minecraft:chainmail_chestplate>, 
<minecraft:chainmail_leggings>, 
<minecraft:chainmail_boots>
] as IItemStack[];

for items in banlist {

mods.ltt.LootTable.removeGlobalItem(items.definition.id);

}

val modchest = [

"champions"

] as string[];

for mod in modchest {

mods.ltt.LootTable.removeModTable(mod);
mods.ltt.LootTable.removeModItem(mod);
mods.ltt.LootTable.removeModEntry(mod);

}