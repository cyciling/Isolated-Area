import crafttweaker.item.IItemStack;

var removed = 
[
    <mekanismtools:woodpaxel>,
    <minecraft:wooden_sword>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:crafting_table>,
    <minecraft:furnace>
] as IItemStack[];

for i , remove in removed 
{
    recipes.remove
    (remove);
}

