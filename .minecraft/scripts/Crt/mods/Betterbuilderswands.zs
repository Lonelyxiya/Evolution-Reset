import crafttweaker.item.IItemStack;

#modloaded betterbuilderswands​
//2022.1.11
//Origins_Eternal

//Betterbuilderswands


var items = [
<betterbuilderswands:wandiron>,
<betterbuilderswands:wandstone>,
<betterbuilderswands:wanddiamond>,
<betterbuilderswands:wandunbreakable>
] as IItemStack[];

for item in items {
    recipes.remove(item);
    }

recipes.addShaped(<betterbuilderswands:wanddiamond>, 
[[null, <pyrotech:material:26>, <ore:gemDiamond>],
[null, <tconstruct:tool_rod>.withTag({Material: "iron"}), <pyrotech:material:26>],
[<ore:stickStone>, null, null]]);

recipes.addShaped(<betterbuilderswands:wandiron>, 
[[null, <pyrotech:material:26>, <ore:gemDiamond>],
[null, <tconstruct:tool_rod>.withTag({Material: "iron"}), <pyrotech:material:26>],
[<ore:stickStone>, null, null]]);

recipes.addShaped(<betterbuilderswands:wandstone>, 
[[null, <ore:twine>, <pyrotech:material:16>],
[null, <ore:stickStone>, <ore:twine>],
[<ore:stickWood>, null, null]]);

