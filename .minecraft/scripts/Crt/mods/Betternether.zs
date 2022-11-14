#ignoreBracketErrors
import crafttweaker.item.IItemStack;

var modrecipes = [
<betternether:netherrack_furnace>,
<betternether:cincinnasite_forge>
] as IItemStack[];

for r in modrecipes {
    recipes.remove(r);
}

recipes.addShaped(<betternether:netherrack_furnace>, 
[[<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>],
[<minecraft:netherbrick>, <pyrotech:furnace_core>, <minecraft:netherbrick>],
[<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>]]);


recipes.addShaped(<betternether:cincinnasite_forge>, 
[[<minecraft:netherbrick>, <betternether:cincinnasite_block>, <minecraft:netherbrick>],
[<betternether:cincinnasite_block>, <pyrotech:furnace_core>, <betternether:cincinnasite_block>],
[<minecraft:netherbrick>, <betternether:cincinnasite_block>, <minecraft:netherbrick>]]);