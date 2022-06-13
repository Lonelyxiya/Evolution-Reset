#priority 99999
#loader crafttweaker reloadableevents
//Lacz
//2021.10.17

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.CommandEvent;
import crafttweaker.enchantments.IEnchantment;
import crafttweaker.command.ICommandSender;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.command.ICommand;
import crafttweaker.data.IData;

import crafttweaker.player.IPlayer;

import crafttweaker.command.ICommandManager;

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;

import crafttweaker.text.ITextComponent;

import mods.zenutils.DelayManager;


recipes.addShapeless(<minecraft:bow>.withTag({ench: [{lvl: 1 as short, id: 51 as short}], RepairCost: 1}), [<minecraft:bow>, <scalinghealth:crystalshard>, <minecraft:book>]);
<minecraft:bow>.withTag({ench: [{lvl: 1 as short, id: 51 as short}], RepairCost: 1}).maxDamage = 385;

recipes.addShapeless(<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}), [<minecraft:wooden_sword>, <scalinghealth:crystalshard>]);
<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}).maxDamage = 0;
<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}).addTooltip(game.localize("crafttweaker.wooden_sword.tooltip"));

//modcheck
static Superviser1 as bool = true;
static Superviser2 as bool = true;
static RequiredMods as string[] = [
    "champions",
    "dynamicstealth",
    "firstaid",
    "hungeroverhaul",
    "scalinghealth",
    "zombieawareness",
    "adpother",
    "oeintegration",
    "sereneseasons",
    "planetprogression",
    "toughasnails",
    "hardcoredarkness",
    "resourceloader",
    "custommainmenu",
    "AI-Improvements",
    "orestages",
    "pyrotech",
    "botania",
    "chisel",
    "draconicevolution",
    "environmentaltech",
    "immersiveengineering",
    "mekanism",
    "tconstruct",
    "twilightforest"
    
];
var index1 as int = RequiredMods.length;
static InvalidMods as string[] = [
    "xijun",
    "bacteria",
    "decomp_table",
    "deconstrcution_table",
    "decon_table",
    "decontable",
    "decon",
    "uncraftingtable",
    "deconstruction",
    "avaritia",
    "xray",
    "oreping",
    "reinforcedtools",
    "scenter",
    "extrabotany",
    "oresniffer",
    "eplus",
    "stm",
    "ISM",
    "cycle",
    "eplus",
    "somanyenchantments",
    "randomenchantments"
];
var index2 as int = InvalidMods.length;

for i in 0 to index1 {
    if (loadedMods.contains(RequiredMods[i])) {
        return;
    } else {
        Superviser1 = false;
        recipes.removeAll();
        break;
    }
}
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
var player = event.player as IPlayer;
var ser = server.commandManager as ICommandManager;
	if (Superviser1 == false) {
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.modrequired"));
	    DelayManager.addDelayWork(function() {
          ser.executeCommand(server, "gamemode spectator " + player.name);
        }, 4 * 20);
    } else {
        player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.begin"));
    }
});

for j in 0 to index2 {
    if (loadedMods.contains(InvalidMods[j])) {
        return;
    } else {
        Superviser2 = false;
        recipes.removeAll();
        break;
    }
}
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
var player1 = event.player as IPlayer;
var ser1 = server.commandManager as ICommandManager;
	if (Superviser2 == false) {
        player1.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.invalid"));
        DelayManager.addDelayWork(function() {
           ser1.executeCommand(server, "gamemode spectator " + player1.name);
        }, 4 * 20);
    } else {
        player1.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.hello"));
    }
});

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
val name as string = event.block.definition.id;
var ser = server.commandManager as ICommandManager;
    if (name.contains("ore") && (!(event.isPlayer))) {
        ser.executeCommand(server, "say" + " " + game.localize("crafttweaker.message.oreharvest"));
    }
});

