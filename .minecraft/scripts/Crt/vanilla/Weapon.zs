#priority 99999
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IBlockEvent;
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

recipes.addShapeless(<minecraft:bow>.withTag({ench: [{lvl: 1 as short, id: 51 as short}], RepairCost: 1}), [<minecraft:bow>, <scalinghealth:crystalshard>, <minecraft:book>]);
<minecraft:bow>.withTag({ench: [{lvl: 1 as short, id: 51 as short}], RepairCost: 1}).maxDamage = 385;

recipes.addShapeless(<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}), [<minecraft:wooden_sword>, <scalinghealth:crystalshard>]);
<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}).maxDamage = -1;
<minecraft:wooden_sword>.withTag({ench: [{lvl: 5 as short, id: 16 as short}]}).addTooltip(game.localize("crafttweaker.wooden_sword.tooltip"));

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
val name as string = event.block.definition.id;
var ser = server.commandManager as ICommandManager;
    if (name.contains("ore") && (!(event.isPlayer))) {
        ser.executeCommand(server, "say" + " " + game.localize("crafttweaker.message.oreharvest"));
    }
});

