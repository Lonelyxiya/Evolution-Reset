import mods.dropt.Dropt;
import mods.dropt.Harvester;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//2022.6.22
//Origin_Eternity
val woods = [

<ore:logWood>,
<ore:plankWood>,
<ore:flower>,
<ore:chest>,
<ore:bed>

] as IOreDictEntry[];

for wood in woods
{
Dropt.list("list_woods")
    .add(Dropt.rule()
    .matchDrops([wood])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop())
	)
  .add(Dropt.rule()
     .matchDrops([wood])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "axe;0;-1")
      )
      .addDrop(Dropt.drop())
  );
}
  
var dropstones = [

<pyrotech:rock:3>,
<pyrotech:rock>,
<pyrotech:rock:1>,
<pyrotech:rock:2>,
<pyrotech:material:21>,
<pyrotech:material:11>

] as IItemStack[];
val stones = [

<ore:stoneAndesite>,
<ore:stone>,
<ore:stoneGranite>,
<ore:stoneDiorite>,
<ore:oreCoal>,
<ore:oreFossil>

] as IOreDictEntry[];

for stone in stones
{
var dropstone = dropstones[i];
Dropt.list("list_stones")
    .add(Dropt.rule()
    .matchDrops([stone])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop()
	     .selector(Dropt.weight(75))
	     .items([dropstone], Dropt.range(3))  
	  )
	  .addDrop(Dropt.drop()
         .selector(Dropt.weight(25))
		 .items([dropstone], Dropt.range(4))  
	  )
	)
    .add(Dropt.rule()
    .matchDrops([dirt])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "pickaxe;0;-1")
      )
      .addDrop(Dropt.drop())
	)
   .add(Dropt.rule()
    .matchDrops([stone])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
       .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("WHITELIST", [], "pickaxe;0;-1")
       )
      .addDrop(Dropt.drop()
	        .force()
            .items([<pyrotech:rock>], Dropt.range(2))
	    )
	   .addDrop(Dropt.drop()
            .selector(Dropt.weight(75))
		    .items([dropstone], Dropt.range(2))
       )
       .addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([dropstone], Dropt.range(3))
       )
    );
}

var dropdirts = [

<pyrotech:rock:4>,
<pyrotech:rock:5>,
<pyrotech:rock:9>,
<pyrotech:rock_grass>,
<pyrotech:material:17>,
<contenttweaker:cement_powder>

] as IItemStack[];

val dirts = [
<ore:dirt>,
<ore:whitesand>,
<ore:radsand>,
<ore:grass>,
<ore:clay>,
<ore:grout>

] as IOreDictEntry[];

for i, dirt in dirts
{
var dropdirt = dropdirts[i];
Dropt.list("list_dirt")
    .add(Dropt.rule()
    .matchDrops([dirt])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop()
	     .selector(Dropt.weight(75))
	     .items([dropdirt], Dropt.range(3))  
	  )
	  .addDrop(Dropt.drop()
         .selector(Dropt.weight(25))
		 .items([dropdirt], Dropt.range(4))  
	  )
	)
    .add(Dropt.rule()
    .matchDrops([dirt])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shovel;0;-1")
      )
      .addDrop(Dropt.drop())
	)
   .add(Dropt.rule()
    .matchDrops([dirt])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
       .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("WHITELIST", [], "shovel;0;-1")
       )
	   .addDrop(Dropt.drop()
            .selector(Dropt.weight(75))
		    .items([dropdirt], Dropt.range(3))
       )
       .addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([dropdirt], Dropt.range(4))
       )
    );
}

Dropt.list("list_gravel")
	.add(Dropt.rule()
     .matchDrops([<ore:gravel>])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
        .addDrop(Dropt.drop()
		    .selector(Dropt.weight(25))
            .items([<pyrotech:rock>], Dropt.range(3))
	    )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<pyrotech:rock:2>], Dropt.range(3))
        )
		.addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<pyrotech:rock:3>], Dropt.range(3))
        )
		.addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<pyrotech:rock:8>], Dropt.range(3))
        )
	)
	 .add(Dropt.rule()
       .matchDrops([<ore:gravel>])
         .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shovel;1;-1")
        )
        .addDrop(Dropt.drop())
        )
    .add(Dropt.rule()
     .matchDrops([<ore:gravel>])
        .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("WHITELIST", [], "shovel;1;-1")
        )
        .addDrop(Dropt.drop()
		    .selector(Dropt.weight(25))
            .items([<pyrotech:rock>], Dropt.range(3))
	    )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<pyrotech:rock:2>], Dropt.range(3))
        )
		.addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<pyrotech:rock:3>], Dropt.range(3))
        )
		.addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<pyrotech:rock:8>], Dropt.range(3))
        )
);

var adddrops = [

<pyrotech:strange_tuber>,
<minecraft:bone>,
<minecraft:coal>

] as IItemStack[];

val addblocks = [

<ore:grass>,
<ore:oreFossil>,
<ore:oreCoal>,

] as IOreDictEntry[];

for i, addblock in addblocks
{
var adddrop = adddrops[i];
Dropt.list("list_addblock")
  .add(Dropt.rule()
     .matchDrops([addblock])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(85))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(15))
          .items([adddrop])
      )
  );
}

Dropt.list("list_wool")
	.add(Dropt.rule()
     .matchDrops([<ore:wool>])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop())
	)
	.add(Dropt.rule()
     .matchDrops([<ore:wool>])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
       .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "shears;0;-1")
       )
	      .addDrop(Dropt.drop())
    );

var dropores = [

<pyrotech:generated_slag_copper>,
<pyrotech:generated_slag_iron>,
<pyrotech:generated_slag_tin>,
<pyrotech:generated_slag_gold>,
<pyrotech:generated_slag_aluminium>,
<pyrotech:generated_slag_osmium>,
<pyrotech:generated_slag_silver>,
<pyrotech:generated_slag_uranium>,
<pyrotech:generated_slag_lead>,
<pyrotech:generated_slag_ardite>,
<pyrotech:generated_slag_cobalt>,
<minecraft:diamond>,
<pyrotech:generated_slag_tungsten>,
<pyrotech:generated_slag_dilithium>,
<pyrotech:generated_slag_abyssum>,
<pyrotech:generated_slag_eezo>,
<pyrotech:generated_slag_osram>,
<pyrotech:generated_slag_palladium>,
<pyrotech:generated_slag_prometheum>,
<pyrotech:generated_slag_uru>,
<pyrotech:generated_slag_valyrium>,
<pyrotech:generated_slag_tiberium>,
<pyrotech:generated_slag_vibranium>,
<pyrotech:generated_slag_magnesium>,
<galacticraftcore:basic_item:2>,
<pyrotech:generated_slag_meteorite>,
<pyrotech:generated_slag_obsidiorit>,
<pyrotech:generated_slag_chromium>,
<pyrotech:material:8>,
<minecraft:bone>

] as IItemStack[];
val ores = [

<ore:oreCopper>,
<ore:oreIron>,
<ore:oreTin>,
<ore:oreGold>,
<ore:oreAluminium>,
<ore:oreOsmium>,
<ore:oreSilver>,
<ore:oreUranium>,
<ore:oreLead>,
<ore:oreArdite>,
<ore:oreCobalt>,
<ore:oreDiamond>,
<ore:oreTungsten>,
<ore:oreDilithium>,
<ore:oreEezo>,
<ore:oreOsram>,
<ore:orePalladium>,
<ore:orePrometheum>,
<ore:oreUru>,
<ore:oreValyrium>,
<ore:oreTiberium>,
<ore:oreVibranium>,
<ore:oreNickel>,
<ore:oreMagnesium>,
<ore:oreSilicon>,
<ore:blockMeteorite>,
<ore:blockObsidiorit>,
<ore:oreChromium>,
<ore:blockSlakedlime>,
<ore:skull>

] as IOreDictEntry[];

for ore in ores
{
var dropore = dropores[i];
Dropt.list("list_ore")
  	.add(Dropt.rule()
     .matchDrops([ore])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
  	   .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop()
	     .selector(Dropt.weight(75))
	     .items([<pyrotech:rock>], Dropt.range(3))  
	   )
	   .addDrop(Dropt.drop()
         .selector(Dropt.weight(25))
		 .items([<pyrotech:rock>], Dropt.range(4))  
	   )
	)
	.add(Dropt.rule()
	   .matchDrops([ore])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
	     .force()
		  .items([<pyrotech:rock>], Dropt.range(2))
	   )
	  .addDrop(Dropt.drop()
	     .selector(Dropt.weight(75))
	     .items([dropore], Dropt.range(3))
	   )
	  .addDrop(Dropt.drop()
        .selector(Dropt.weight(25))
		  .items([dropore], Dropt.range(4))  
	   ) 
   );
}

var bandrops = [

<minecraft:stick>,
<minecraft:gunpowder>

] as IItemStack[];

val banblocks = [

<ore:torch>,
<ore:tnt>

] as IOreDictEntry[];

for i, banblock in banblocks
{
var bandrop = bandrops[i];
Dropt.list("list_banblocks")
 .add(Dropt.rule()
    .matchDrops([banblock])
     .replaceStrategy("REPLACE_ALL_IF_SELECTED")
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop())
	)
    .add(Dropt.rule()
        .matchDrops([banblock])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
		  .items([bandrop])
	  )
   );
}