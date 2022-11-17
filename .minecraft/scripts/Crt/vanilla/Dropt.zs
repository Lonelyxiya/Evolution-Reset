import mods.dropt.Dropt;
import mods.dropt.Harvester;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val woods = [

<ore:logWood>,
<ore:plankWood>,
<ore:flower>

] as IOreDictEntry[];

for wood in woods
{
Dropt.list("list_woods")
    .add(Dropt.rule()
    .matchDrops([wood])
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop()
	     .selector(Dropt.weight(80))
	     .items([<pyrotech:rock:7>], Dropt.range(3))  
	  )
	  .addDrop(Dropt.drop()
         .selector(Dropt.weight(20))
	  )
	)
  .add(Dropt.rule()
     .matchDrops([wood])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "axe;0;-1")
      )
      .addDrop(Dropt.drop())
  );
}

var dropdirts = [

<pyrotech:rock:4>,
<pyrotech:rock:5>,
<pyrotech:rock:9>,
<pyrotech:material:17>,
<ercore:cement_powder>

] as IItemStack[];

val dirts = [

<ore:dirt>,
<ore:whitesand>,
<ore:radsand>,
<ore:ballClay>,
<ore:grout>

] as IOreDictEntry[];

for i, dirt in dirts
{
var dropdirt = dropdirts[i];
Dropt.list("list_dirt")
    .add(Dropt.rule()
    .matchDrops([dirt])
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
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shovel;0;-1")
      )
      .addDrop(Dropt.drop())
	)
   .add(Dropt.rule()
    .matchDrops([dirt])
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
     .matchDrops([<ore:ergravel>])
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
       .matchDrops([<ore:ergravel>])
        .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shovel;1;-1")
        )
        .addDrop(Dropt.drop())
        )
    .add(Dropt.rule()
     .matchDrops([<ore:ergravel>])
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

Dropt.list("list_wool")
	.add(Dropt.rule()
     .matchDrops([<ore:wool>])
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop())
	)
	.add(Dropt.rule()
     .matchDrops([<ore:wool>])
       .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "shears;0;-1")
       )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(75))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(25))
          .items([<minecraft:string>])
      )
    );

var dropores = [

<pyrotech:generated_slag_copper>,
<pyrotech:generated_slag_iron>,
<pyrotech:generated_slag_tin>,
<pyrotech:generated_slag_gold>,
<pyrotech:generated_slag_aluminum>,
<pyrotech:generated_slag_osmium>,
<pyrotech:generated_slag_silver>,
<pyrotech:generated_slag_uranium>,
<pyrotech:generated_slag_lead>,
<pyrotech:generated_slag_ardite>,
<pyrotech:generated_slag_cobalt>,
<pyrotech:generated_slag_tungsten>,
<pyrotech:generated_slag_dilithium>,
<pyrotech:generated_slag_abyssum>,
<pyrotech:generated_slag_eezo>,
<pyrotech:generated_slag_osram>,
<pyrotech:generated_slag_palladium>,
<pyrotech:generated_slag_uru>,
<pyrotech:generated_slag_tiberium>,
<pyrotech:generated_slag_vibranium>,
<pyrotech:generated_slag_nickel>,
<pyrotech:generated_slag_meteorite>,
<pyrotech:generated_slag_obsidiorit>,
<pyrotech:material:8>,
<pyrotech:material:18>,
<pyrotech:generated_slag_iridium>,
<ercore:sulphur>,
<ercore:rutile_ore>

] as IItemStack[];
val ores = [

<ore:oreCopper>,
<ore:oreIron>,
<ore:oreTin>,
<ore:oreGold>,
<ore:oreAluminum>,
<ore:oreOsmium>,
<ore:oreSilver>,
<ore:oreUranium>,
<ore:oreLead>,
<ore:oreArdite>,
<ore:oreCobalt>,
<ore:oreTungsten>,
<ore:oreDilithium>,
<ore:oreAbyssum>,
<ore:oreEezo>,
<ore:oreOsram>,
<ore:orePalladium>,
<ore:oreUru>,
<ore:oreTiberium>,
<ore:oreVibranium>,
<ore:oreNickel>,
<ore:blockMeteorite>,
<ore:blockObsidiorit>,
<ore:blockSlakedlime>,
<ore:eroreDiamond>,
<ore:oreIridium>,
<ore:oreSulfur>,
<ore:oreTitanium>

] as IOreDictEntry[];

for i, ore in ores
{
var dropore = dropores[i];
Dropt.list("list_ore")
  	.add(Dropt.rule()
     .matchDrops([ore])
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

<pyrotech:rock:7>,
<minecraft:gunpowder>,
<pyrotech:rock_netherrack>,
<pyrotech:rock:6>,
<pyrotech:rock:3>,
<pyrotech:rock>,
<pyrotech:rock:1>,
<pyrotech:rock:2>,
<pyrotech:rock:8>,
<minecraft:bone>

] as IItemStack[];

val banblocks = [

<ore:torch>,
<ore:tnt>,
<ore:netherrack>,
<ore:sandstone>,
<ore:erstoneAndesite>,
<ore:erstone>,
<ore:erstoneGranite>,
<ore:erstoneDiorite>,
<ore:erstoneLimestone>,
<ore:skull>

] as IOreDictEntry[];

for i, banblock in banblocks
{
var bandrop = bandrops[i];
Dropt.list("list_banblocks")
 .add(Dropt.rule()
    .matchDrops([banblock])
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop())
	)
	.add(Dropt.rule()
	    .matchDrops([banblock])
    .addDrop(Dropt.drop()
	     .selector(Dropt.weight(75))
	     .items([bandrop], Dropt.range(3))
	   )
	  .addDrop(Dropt.drop()
        .selector(Dropt.weight(25))
		  .items([bandrop], Dropt.range(4))  
	   )
   );
}

val keyblocks = [

<ore:chest>,
<ore:bed>

] as IOreDictEntry[];

val stages = [

"chest",
"bed"

] as string[];

for i, keyblock in keyblocks
{
var stage = stages[i];
Dropt.list("list_keyblocks")
    .add(Dropt.rule()
    .matchDrops([keyblock])
  	  .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop())
	)
	   .add(Dropt.rule()
     .matchDrops([keyblock])
     .matchHarvester(Dropt.harvester()
     .gameStages("BLACKLIST", "ANY", [stage])
       )
       .addDrop(Dropt.drop())
    )
      .add(Dropt.rule()
     .matchDrops([keyblock])
       .matchHarvester(Dropt.harvester()
            .type("PLAYER")
            .mainHand("BLACKLIST", [], "axe;5;-1")
       )
	  .addDrop(Dropt.drop()
	     .selector(Dropt.weight(80))
	     .items([<pyrotech:rock:7>], Dropt.range(3))  
	  )
	  .addDrop(Dropt.drop()
         .selector(Dropt.weight(20))
	  )
    );
}

var netherdropores = [

<minecraft:quartz>,
<pyrotech:generated_slag_prometheum>,
<pyrotech:generated_slag_valyrium>

] as IItemStack[];
val netherores = [

<ore:oreQuartz>,
<ore:orePrometheum>,
<ore:oreValyrium>

] as IOreDictEntry[];

for i, netherore in netherores
{
var netherdropore = netherdropores[i];
Dropt.list("list_netherore")
  	.add(Dropt.rule()
     .matchDrops([netherore])
  	   .matchHarvester(Dropt.harvester()
         .type("EXPLOSION")
      )
      .addDrop(Dropt.drop()
	       .selector(Dropt.weight(75))
	       .items([<pyrotech:rock_netherrack>], Dropt.range(3))  
	   )
	   .addDrop(Dropt.drop()
         .selector(Dropt.weight(25))
		     .items([<pyrotech:rock_netherrack>], Dropt.range(4))  
	   )
	)
	.add(Dropt.rule()
	   .matchDrops([netherore])
      .addDrop(Dropt.drop()
	     .force()
		  .items([<pyrotech:rock_netherrack>], Dropt.range(2))
	   )
	  .addDrop(Dropt.drop()
	     .selector(Dropt.weight(75))
	     .items([netherdropore], Dropt.range(3))
	   )
	  .addDrop(Dropt.drop()
        .selector(Dropt.weight(25))
		  .items([netherdropore], Dropt.range(4))  
	   ) 
   );
}