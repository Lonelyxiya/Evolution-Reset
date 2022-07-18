#loader crafttweaker reloadableevents
//Lacz
//2020.10.16
//tooltip

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.command.ICommandManager;
import crafttweaker.events.IEventManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractEvent;

<minecraft:diamond>.addTooltip(game.localize("crafttweaker.diamond.tooltip"));
<immersiveengineering:metal:8>.addTooltip(game.localize("crafttweaker.metal8.tooltip"));
<galacticraftcore:meteoric_iron_raw>.addTooltip(game.localize("crafttweaker.meteoric_iron_raw.tooltip"));
<immersiveengineering:graphite_electrode>.addTooltip(game.localize("crafttweaker.graphite_electrode.tooltip"));
<minecraft:stone_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 32 as short}, {lvl: 1 as short, id: 34 as short}], RepairCost: 3}).addTooltip(game.localize("crafttweaker.stone_pickaxe.tooltip"));
<fluxnetworks:flux>.addTooltip(game.localize("crafttweaker.flux.tooltip"));
<scalinghealth:crystalshard>.addTooltip(game.localize("crafttweaker.crystalshard.tooltip"));
<minecraft:clay_ball>.addTooltip(game.localize("crafttweaker.clay_ball.tooltip"));
<endercrop:ender_seeds>.addTooltip(game.localize("crafttweaker.enderseeds.tooltip"));

//Origins_Eternity
//2021.7.27

<akashictome:tome>.withTag({"akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, botania: {id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, twilightforest: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, valkyrielib: {id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, pyrotech: {id: "pyrotech:book", Count: 1 as byte, tag: {"akashictome:definedMod": "pyrotech"}, Damage: 0 as short}}}).addTooltip(game.localize("crafttweaker.tome.tooltip"));
<taiga:tiberium_ore>.addTooltip(game.localize("crafttweaker.tiberium_ore.tooltip"));
<taiga:dilithium_ore>.addTooltip(game.localize("crafttweaker.dilithium_ore.tooltip"));
<taiga:abyssum_ore>.addTooltip(game.localize("crafttweaker.abyssum_ore.tooltip"));
<taiga:eezo_ore>.addTooltip(game.localize("crafttweaker.eezo_ore.tooltip"));
<taiga:osram_ore>.addTooltip(game.localize("crafttweaker.osram_ore.tooltip"));
<taiga:prometheum_ore>.addTooltip(game.localize("crafttweaker.prometheum_ore.tooltip"));
<taiga:palladium_ore>.addTooltip(game.localize("crafttweaker.palladiu_ore.tooltip"));
<taiga:valyrium_ore>.addTooltip(game.localize("crafttweaker.valyrium_ore.tooltip"));
<taiga:uru_ore>.addTooltip(game.localize("crafttweaker.uru_ore.tooltip"));
<taiga:obsidiorite_block>.addTooltip(game.localize("crafttweaker.obsidiorite_block.tooltip"));
<contenttweaker:tungsten_ore>.addTooltip(game.localize("crafttweaker.tungsten_ore.tooltip"));
<contenttweaker:chromium_ore>.addTooltip(game.localize("crafttweaker.chromium_ore.tooltip"));
<pyrotech:kiln_pit>.addTooltip(game.localize("crafttweaker.kiln_pit.tooltip"));
<tconstruct:tool_rod>.withTag({Material: "copper"}).addTooltip(game.localize("crafttweaker.copper_rod.tooltip"));
<draconicevolution:draconium_chest>.addTooltip(game.localize("crafttweaker.draconium_chest.tooltip"));
var tool = [
	<minecraft:stone_axe>,
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
	<minecraft:chainmail_helmet>,
	<minecraft:chainmail_chestplate>,
	<minecraft:chainmail_leggings>,
	<minecraft:chainmail_boots>,
	<betternether:cincinnasite_axe>,
	<betternether:cincinnasite_axe_diamond>,
	<betternether:cincinnasite_pickaxe>,
	<betternether:cincinnasite_pickaxe_diamond>,
	<twilightforest:fiery_sword>,
	<twilightforest:fiery_pickaxe>,
	<twilightforest:steeleaf_helmet>,
    <twilightforest:steeleaf_chestplate>,
    <twilightforest:steeleaf_leggings>,
    <twilightforest:steeleaf_boots>,
    <twilightforest:steeleaf_sword>,
    <twilightforest:steeleaf_shovel>,
    <twilightforest:steeleaf_pickaxe>,
    <twilightforest:steeleaf_axe>,
    <twilightforest:steeleaf_hoe>,
	<twilightforest:knightmetal_helmet>,
    <twilightforest:knightmetal_chestplate>,
    <twilightforest:knightmetal_leggings>,
    <twilightforest:knightmetal_boots>,
    <twilightforest:knightmetal_sword>,
    <twilightforest:knightmetal_pickaxe>,
    <twilightforest:knightmetal_axe>,
    <twilightforest:knightmetal_shield>,
	<minecraft:porkchop>, 
    <minecraft:beef>, 
    <minecraft:rabbit>,
    <minecraft:chicken>,
    <minecraft:mutton>,
	<minecraft:sugar>,
	<mekanism:cardboardbox>,
    <mekanism:anchorupgrade>,
    <draconicevolution:grinder>,
    <draconicevolution:celestial_manipulator>,
    <draconicevolution:draconium_capacitor:2>,
    <draconicevolution:ender_energy_manipulator>,
    <draconicevolution:creative_exchanger>,
    <draconicevolution:info_tablet>,
    <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}),
    <doggytalents:creative_collar>,
    <doggytalents:creative_radar>,
    <draconicevolution:creative_rf_source>,
    <galacticraftcore:infinite_oxygen>,
    <galacticraftcore:concealed_detector>,
    <galacticraftcore:rocket_t1:4>,
    <galacticraftcore:infinite_battery>,
    <galacticraftplanets:rocket_t2:4>,
    <galacticraftplanets:rocket_t2:14>,
    <galacticraftplanets:rocket_t3:4>,
    <mekanism:energycube>.withTag({tier: 4}),
    <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
    <projecte:item.pe_tome>,
    <refinedstorage:controller:1>.withTag({Energy: 32000}),
    <refinedstorage:portable_grid:1>,
    <refinedstorage:storage:4>,
    <refinedstorage:fluid_storage:4>,
    <refinedstorage:fluid_storage_disk:4>.withTag({IdLeast: -7218665002269440659 as long, IdMost: 3767300693677852156 as long}),
    <refinedstorage:wireless_grid:1>,
    <refinedstorage:wireless_fluid_grid:1>,
    <refinedstorage:wireless_crafting_monitor:1>,
    <conarm:gauntlet_mat_reach>,
    <twilightforest:uncrafting_table>,
    <twilightforest:uncrafting_table>,
    <projecte:item.pe_rm_katar>,
    <tconstruct:throwball:1>,
	<tconstruct:nuggets:4>,
	<tconstruct:ingots:4>,
    <projecte:item.pe_rm_sword>,
    <botania:terrapick>,
    <minecraft:furnace>,
    <minecraft:crafting_table>
] as IItemStack[];
for items in tool
	{	
	items.maxDamage = 1;
	recipes.remove(items);
	mods.jei.JEI.hide(items);
    }

for items in tool {
events.onPlayerInteract(function(event as PlayerInteractEvent) {
    var ser = server.commandManager as ICommandManager;
        var toolname = items.definition.id;
	for i in 0 to 41 {
        var ban = event.player.getInventoryStack(i);
	    if(!isNull(ban) && ban.definition.id == toolname) {
		    ser.executeCommand(server, "clear " + event.player.name + " " + ban.definition.id);
		}
    }
    for g in 0 to 9 {
        var ban1 = event.player.getHotbarStack(g);
		if(!isNull(ban1) && ban1.definition.id == toolname) {
		    ser.executeCommand(server, "clear " + event.player.name + " " + ban1.definition.id);
		}
    }
 });
}

<toughasnails:wool_helmet>.maxDamage = 500;
<toughasnails:wool_chestplate>.maxDamage = 800;
<toughasnails:wool_leggings>.maxDamage = 600;
<toughasnails:wool_boots>.maxDamage = 400;
<toughasnails:jelled_slime_helmet>.maxDamage = 500;
<toughasnails:jelled_slime_chestplate>.maxDamage = 800;
<toughasnails:jelled_slime_leggings>.maxDamage = 600;
<toughasnails:jelled_slime_boots>.maxDamage = 400;
<minecraft:bow>.maxDamage = 1;
<minecraft:wooden_sword>.maxDamage = 1;