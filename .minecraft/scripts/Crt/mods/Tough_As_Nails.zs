import crafttweaker.item.IItemStack;
//2022.1.18
//Origins_Eternal

//Tough_As_Nails

var items = [

<toughasnails:wool_helmet>,
<toughasnails:wool_chestplate>,
<toughasnails:wool_leggings>,
<toughasnails:wool_boots>

] as IItemStack[];

for item in items {
    recipes.remove(item);
    }
