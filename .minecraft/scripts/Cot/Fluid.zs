#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//Origins_Eternal
//2021.8.14
//fluids

var obsidian_fluid = VanillaFactory.createFluid("obsidian_fluid", Color.fromHex("4B0082"));
obsidian_fluid.temperature = 1300;
obsidian_fluid.viscosity = 3000;
obsidian_fluid.density = 3000;
obsidian_fluid.luminosity = 5;
obsidian_fluid.stillLocation = "base:fluids/molten";
obsidian_fluid.flowingLocation = "base:fluids/molten_flowing";
obsidian_fluid.material = <blockmaterial:lava>;
obsidian_fluid.register();

//2021.8.15
var tungsten_steel_fluid = VanillaFactory.createFluid("tungsten_steel_fluid", Color.fromHex("3C3C3C"));
tungsten_steel_fluid.temperature = 1000;
tungsten_steel_fluid.viscosity = 3000;
tungsten_steel_fluid.density = 2500;
tungsten_steel_fluid.luminosity = 4;
tungsten_steel_fluid.stillLocation = "base:fluids/molten";
tungsten_steel_fluid.flowingLocation = "base:fluids/molten_flowing";
tungsten_steel_fluid.material = <blockmaterial:lava>;
tungsten_steel_fluid.register();

var tungsten_fluid = VanillaFactory.createFluid("tungsten_fluid", Color.fromHex("E1E6E8"));
tungsten_fluid.temperature = 1500;
tungsten_fluid.viscosity = 3000;
tungsten_fluid.density = 3000;
tungsten_fluid.luminosity = 6;
tungsten_fluid.stillLocation = "base:fluids/molten";
tungsten_fluid.flowingLocation = "base:fluids/molten_flowing";
tungsten_fluid.material = <blockmaterial:lava>;
tungsten_fluid.register();

//2021.8.20
var slaked_lime = VanillaFactory.createFluid("slaked_lime", Color.fromHex("7C8264"));
slaked_lime.temperature = 500;
slaked_lime.viscosity = 4000;
slaked_lime.density = 4500;
slaked_lime.luminosity = 5;
slaked_lime.stillLocation = "base:fluids/liquid";
slaked_lime.flowingLocation = "base:fluids/liquid_flow";
slaked_lime.material = <blockmaterial:lava>;
slaked_lime.register();

//2021.11.30
var tungsten_carbide = VanillaFactory.createFluid("tungsten_carbide", Color.fromHex("27282C"));
tungsten_carbide.temperature = 1435;
tungsten_carbide.viscosity = 3500;
tungsten_carbide.density = 2500;
tungsten_carbide.luminosity = 7;
tungsten_carbide.stillLocation = "base:fluids/molten";
tungsten_carbide.flowingLocation = "base:fluids/molten_flowing";
tungsten_carbide.material = <blockmaterial:lava>;
tungsten_carbide.register();

//2022.1.22
var chromium = VanillaFactory.createFluid("chromium", Color.fromHex("292826"));
chromium.temperature = 1400;
chromium.viscosity = 3000;
chromium.density = 3000;
chromium.luminosity = 8;
chromium.stillLocation = "base:fluids/molten";
chromium.flowingLocation = "base:fluids/molten_flowing";
chromium.material = <blockmaterial:lava>;
chromium.register();

//2022.2.7
var sugarcane = VanillaFactory.createFluid("sugarcane", Color.fromHex("F8F8FF"));
sugarcane.temperature = 100;
sugarcane.viscosity = 1500;
sugarcane.density = 1000;
sugarcane.luminosity = 3;
sugarcane.stillLocation = "base:fluids/liquid";
sugarcane.flowingLocation = "base:fluids/liquid_flow";
sugarcane.material = <blockmaterial:water>;
sugarcane.register();

