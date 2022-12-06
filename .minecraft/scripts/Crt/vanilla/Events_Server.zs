#ignoreBracketErrors
#sideonly server
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.command.ICommandManager;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.world.IWorldInfo;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.oredict.IOreDictEntry;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
var player = event.player as IPlayer;
player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.login.hello"));
    if (isNull(event.player.data.wasGivenStarters)) {
        var ser = server.commandManager as ICommandManager;
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " greenhand");
        event.player.update({wasGivenStarters: true});
        var start = [
            <minecraft:stick>.withTag({ench: [{lvl: 5 as short, id: 19 as short}], RepairCost: 1}),
            <pyrotech:apple_baked>,
	        <akashictome:tome>.withTag({"akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, botania: {id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, twilightforest: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, valkyrielib: {id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, pyrotech: {id: "pyrotech:book", Count: 1 as byte, tag: {"akashictome:definedMod": "pyrotech"}, Damage: 0 as short}}})
        ] as IItemStack[];
        for i in start {
            event.player.give(i);
	    }
    }
});

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    val player as IPlayer = event.player;
    var ser = server.commandManager as ICommandManager;
    player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(12000, 5));
	player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(6000, 5));
	if (rebornhunger == true) {
    player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(400, 1));
    }
  }
);

<minecraft:stick>.withTag({ench: [{lvl: 5 as short, id: 19 as short}], RepairCost: 1}).addTooltip(game.localize("crafttweaker.stick.tooltip"));

events.onPlayerCrafted(function(event as PlayerCraftedEvent) {
    var ser = server.commandManager as ICommandManager;
	if ((isNull(event.player.data.wasGivenTip1)) && (event.output.definition.id == "pyrotech:compacting_bin")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip1"));
        event.player.update({wasGivenTip1: true});
    } else if ((isNull(event.player.data.wasGivenTip2)) && (event.output.definition.id == "pyrotech:bloomery")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip2"));
        event.player.update({wasGivenTip2: true});
    } else if ((isNull(event.player.data.wasGivenTip3)) && (event.output.definition.id == "artisanworktables:workstation:14")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip3"));
        event.player.update({wasGivenTip3: true});
    } else if ((isNull(event.player.data.wasGivenTip4)) && (event.output.definition.id == "pyrotech:brick_oven")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip4"));
        event.player.update({wasGivenTip4: true});
    } else if ((isNull(event.player.data.wasGivenTip5)) && (event.output.definition.id == "minecraft:obsidian")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip5"));
        event.player.update({wasGivenTip5: true});
    } else if ((isNull(event.player.data.wasGivenTip6)) && (event.output.definition.id == "botania:pool:2")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip6"));   
        event.player.update({wasGivenTip6: true});
    } else if ((isNull(event.player.data.wasGivenTip7)) && (event.output.definition.id == "pyrotech:brick_crucible")) {
        ser.executeCommand(server, "gamestage silentremove " + event.player.name + " greenhand");
        event.player.update({wasGivenTip7: true});
    } else if ((isNull(event.player.data.wasGivenTip8)) && (event.output.definition.id == "advancedrocketry:rocketbuilder")) {
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " five");
        if (journeymapstages == true) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.craft.tip7"));
        }
        event.player.update({wasGivenTip8: true});
    }
    if ((isNull(event.player.data.wasGivenTip13)) && (event.output.definition.id == "advancedrocketry:satelliteprimaryfunction:1")) {
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " six");
        event.player.update({wasGivenTip13: true});
    }
    if ((isNull(event.player.data.wasGivenTip14)) && (event.output.definition.id == "advancedrocketry:satelliteprimaryfunction")) {
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " seven");
        event.player.update({wasGivenTip14: true});
    }
    if ((isNull(event.player.data.wasGivenTip15)) && (event.output.definition.id == "advancedrocketry:beaconfinder")) {
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " eight");
        event.player.update({wasGivenTip15: true});
    }
    if ((isNull(event.player.data.wasGivenTip15)) && (event.output.definition.id == "advancedrocketry:satelliteprimaryfunction:3")) {
        ser.executeCommand(server, "gamestage silentadd " + event.player.name + " nine");
        event.player.update({wasGivenTip15: true});
    }
});

if (sleephunger == true) {
events.onPlayerSleepInBed(function(event as PlayerSleepInBedEvent) {
    val player as IPlayer = event.player;
	player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(200, 2));
});
}

events.onBlockBreak(function(event as BlockBreakEvent) {
    val player as IPlayer = event.player;
	val block as IBlock = event.block;
    if((block.definition.hardness > 0.5) && (event.isPlayer == true)) {
        if(isNull(player.currentItem)) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.blockbreak.tip1"));
            player.addPotionEffect(<potion:tconstruct:dot>.makePotionEffect(20, 1));
            player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(200, 1));
            event.cancel();
        } else if(isNull(player.currentItem.toolClasses)) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("crafttweaker.message.blockbreak.tip2"));
            event.cancel();
        }
    }
});