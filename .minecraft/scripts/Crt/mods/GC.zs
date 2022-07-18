import crafttweaker.item.IItemStack;

//2022.1.21
//Origins_Eternity
//galacticraft

var block = [

<galacticraftcore:rocket_workbench>,
<galacticraftcore:collector>,
<galacticraftcore:refinery>,
<galacticraftcore:dungeonfinder>,
<galaxyspace:rocket_parts:5>,
<galaxyspace:rocket_parts:8>,
<galacticraftcore:oxygen_mask>,
<galacticraftcore:glowstone_torch>

] as IItemStack[];
for items in block
    {
recipes.remove(items);
    }

//Lacz
//2020.10.16

recipes.addShaped(<galacticraftcore:rocket_workbench>,
[[<galacticraftcore:basic_item:9>, <tconstruct:tooltables>, <galacticraftcore:basic_item:9>],
[<pyrotech:tongs_iron>, <galacticraftcore:basic_item:14>, <pyrotech:tongs_iron>],
[<galacticraftcore:basic_item:9>, <minecraft:redstone_torch>, <galacticraftcore:basic_item:9>]]);

recipes.addShaped(<galacticraftcore:collector>,
[[<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:9>],
[<galacticraftcore:air_fan>, <mekanism:machineblock2:4>, <galacticraftcore:air_vent>],
[<galacticraftcore:basic_item:8>, <galacticraftcore:oxygen_concentrator>, <galacticraftcore:basic_item:8>]]);

recipes.addShaped(<galacticraftcore:refinery>,
[[null, <galacticraftcore:canister:1>, null],
[<mekanism:compressedobsidian>, <galacticraftcore:canister:1>, <mekanism:compressedobsidian>],
[<galacticraftcore:basic_item:9>, <mekanism:machineblock3:1>, <galacticraftcore:basic_item:9>]]);

recipes.addShaped(<galacticraftcore:dungeonfinder>,
[[<galacticraftplanets:item_basic_mars:5>, <galacticraftplanets:item_basic_mars:5>, <galacticraftplanets:item_basic_mars:5>],
[<galacticraftplanets:item_basic_mars:5>, <mekanism:crystal:1>, <galacticraftplanets:item_basic_mars:5>],
[<galacticraftplanets:item_basic_mars:5>, <galacticraftplanets:item_basic_mars:5>, <galacticraftplanets:item_basic_mars:5>]]);

recipes.addShaped(<galaxyspace:rocket_parts:5>,
[[null, <minecraft:redstone_torch>, null],
[null, <galaxyspace:hdp>, null],
[<galaxyspace:hdp>, <tconstruct:shard>.withTag({Material: "osmiridium"}), <galaxyspace:hdp>]]);

recipes.addShaped(<galaxyspace:rocket_parts:8>,
[[<tconstruct:large_plate>.withTag({Material: "nihilite"}), <galacticraftplanets:mars:8>, <tconstruct:large_plate>.withTag({Material: "nihilite"})],
[<tconstruct:large_plate>.withTag({Material: "adamant"}), <galacticraftcore:fuel_canister_partial:1>, <tconstruct:large_plate>.withTag({Material: "adamant"})],
[<galaxyspace:hdp>, <galacticraftcore:air_vent>, <galaxyspace:hdp>]]);

//2021.12.18
//Origins_Eternity

recipes.addShaped(<galacticraftcore:oxygen_mask>,
[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
[<minecraft:glass_pane>, <conarm:helmet>.withTag({Material: "steel"}), <minecraft:glass_pane>],
[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);

