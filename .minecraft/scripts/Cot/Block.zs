#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

//Origins_Eternity
//2021.8.15
//block

var tungsten_ore = VanillaFactory.createBlock("tungsten_ore", <blockmaterial:rock>);
tungsten_ore.setLightOpacity(3);
tungsten_ore.setLightValue(2);
tungsten_ore.setBlockHardness(7.5);
tungsten_ore.setBlockResistance(5.0);
tungsten_ore.setToolClass("pickaxe");
tungsten_ore.setToolLevel(8);
tungsten_ore.setBlockSoundType(<soundtype:stone>);
tungsten_ore.register();

var slakedlime_block = VanillaFactory.createBlock("slakedlime_block", <blockmaterial:rock>);
slakedlime_block.setLightOpacity(2);
slakedlime_block.setLightValue(0);
slakedlime_block.setBlockHardness(3.0);
slakedlime_block.setBlockResistance(4.0);
slakedlime_block.setToolClass("shovel");
slakedlime_block.setToolLevel(3);
slakedlime_block.setBlockSoundType(<soundtype:stone>);
slakedlime_block.register();

var obsidian_nomana = VanillaFactory.createBlock("obsidian_nomana", <blockmaterial:rock>);
obsidian_nomana.setLightOpacity(5);
obsidian_nomana.setLightValue(1);
obsidian_nomana.setBlockHardness(5.0);
obsidian_nomana.setBlockResistance(5.0);
obsidian_nomana.setToolClass("pickaxe");
obsidian_nomana.setToolLevel(4);
obsidian_nomana.setBlockSoundType(<soundtype:metal>);
obsidian_nomana.register();

//2022.1.22
var chromium_ore = VanillaFactory.createBlock("chromium_ore", <blockmaterial:rock>);
chromium_ore.setLightOpacity(3);
chromium_ore.setLightValue(3);
chromium_ore.setBlockHardness(9.0);
chromium_ore.setBlockResistance(4.0);
chromium_ore.setToolClass("pickaxe");
chromium_ore.setToolLevel(9);
chromium_ore.setBlockSoundType(<soundtype:metal>);
chromium_ore.register();

//2022.1.23
var basalt_coaltar = VanillaFactory.createBlock("basalt_coaltar", <blockmaterial:rock>);
basalt_coaltar.setLightOpacity(1);
basalt_coaltar.setLightValue(1);
basalt_coaltar.setBlockHardness(4.0);
basalt_coaltar.setBlockResistance(5.0);
basalt_coaltar.setToolClass("pickaxe");
basalt_coaltar.setToolLevel(4);
basalt_coaltar.setBlockSoundType(<soundtype:metal>);
basalt_coaltar.register();
