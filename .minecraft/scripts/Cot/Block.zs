#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

//Origins_Eternal
//2021.8.15
//block

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
obsidian_nomana.setBlockSoundType(<soundtype:stone>);
obsidian_nomana.register();

//2022.1.23
var basalt_coaltar = VanillaFactory.createBlock("basalt_coaltar", <blockmaterial:rock>);
basalt_coaltar.setLightOpacity(1);
basalt_coaltar.setLightValue(1);
basalt_coaltar.setBlockHardness(4.0);
basalt_coaltar.setBlockResistance(5.0);
basalt_coaltar.setToolClass("pickaxe");
basalt_coaltar.setToolLevel(4);
basalt_coaltar.setBlockSoundType(<soundtype:stone>);
basalt_coaltar.register();

var copper_ore = VanillaFactory.createBlock("copper_ore", <blockmaterial:rock>);
copper_ore.setLightOpacity(5);
copper_ore.setLightValue(1);
copper_ore.setBlockHardness(5.0);
copper_ore.setBlockResistance(5.0);
copper_ore.setToolClass("pickaxe");
copper_ore.setToolLevel(2);
copper_ore.setBlockSoundType(<soundtype:stone>);
copper_ore.register();

var tin_ore = VanillaFactory.createBlock("tin_ore", <blockmaterial:rock>);
tin_ore.setLightOpacity(5);
tin_ore.setLightValue(1);
tin_ore.setBlockHardness(5.0);
tin_ore.setBlockResistance(5.0);
tin_ore.setToolClass("pickaxe");
tin_ore.setToolLevel(2);
tin_ore.setBlockSoundType(<soundtype:stone>);
tin_ore.register();

var iridium_ore = VanillaFactory.createBlock("iridium_ore", <blockmaterial:rock>);
iridium_ore.setLightOpacity(5);
iridium_ore.setLightValue(2);
iridium_ore.setBlockHardness(8.0);
iridium_ore.setBlockResistance(5.0);
iridium_ore.setToolClass("pickaxe");
iridium_ore.setToolLevel(9);
iridium_ore.setBlockSoundType(<soundtype:stone>);
iridium_ore.register();

var rutile_ore = VanillaFactory.createBlock("rutile_ore", <blockmaterial:rock>);
rutile_ore.setLightOpacity(5);
rutile_ore.setLightValue(1);
rutile_ore.setBlockHardness(6.0);
rutile_ore.setBlockResistance(5.0);
rutile_ore.setToolClass("pickaxe");
rutile_ore.setToolLevel(5);
rutile_ore.setBlockSoundType(<soundtype:stone>);
rutile_ore.register();

var sulphur_ore = VanillaFactory.createBlock("sulphur_ore", <blockmaterial:rock>);
sulphur_ore.setLightOpacity(5);
sulphur_ore.setLightValue(1);
sulphur_ore.setBlockHardness(5.0);
sulphur_ore.setBlockResistance(5.0);
sulphur_ore.setToolClass("pickaxe");
sulphur_ore.setToolLevel(3);
sulphur_ore.setBlockSoundType(<soundtype:stone>);
sulphur_ore.register();

var tungsten_ore = VanillaFactory.createBlock("tungsten_ore", <blockmaterial:rock>);
tungsten_ore.setLightOpacity(5);
tungsten_ore.setLightValue(1);
tungsten_ore.setBlockHardness(8.5);
tungsten_ore.setBlockResistance(5.0);
tungsten_ore.setToolClass("pickaxe");
tungsten_ore.setToolLevel(8);
tungsten_ore.setBlockSoundType(<soundtype:stone>);
tungsten_ore.register();