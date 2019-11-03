import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

var logs = <ore:logWood>;
var planks = <ore:plankWood>;
var stick = <minecraft:stick>;
var hatchet_1 = <survivalist:hatchet>;
var flint = <minecraft:flint>;

var stone = <ore:materialStoneTool>;

var stoneToolStone = 
[  
    <ore:artisansTrowel>,
    <ore:artisansChisel>
] as IOreDictEntry[];

RecipeBuilder.get("basic")
  .setShaped(
      [
          [planks, <artisanworktables:worktable:5>, planks],
          [planks, logs, planks], 
          [stick, logs, stick]
      ])
  .addTool(hatchet_1, 25)
  .addOutput(<artisanworktables:worktable:1>)
  .setExtraOutputOne(flint * 2, 0.2)
  .create();

for i, stoneToolStone in stoneToolStone
{
    RecipeBuilder.get("basic")
    .setShaped(
        [
            [stone, <artisanworktables:worktable:1>, stone], 
            [stoneToolStone, stone, stoneToolStone], 
            [stone, <artisanworktables:worktable:5>, stone]])
            .addTool(hatchet_1, 25)
            .addOutput(<artisanworktables:worktable:2>)
            .create();
}
