import minetweaker.item.IItemStack;
# ==================================================
# Definitions
# ==================================================
// Vanilla Items
var iron_ingot = <minecraft:iron_ingot>;
var gold_ingot = <minecraft:gold_ingot>;
var diamond = <minecraft:diamond>;
var redstone = <minecraft:redstone>;
var stick = <minecraft:stick>;
var rail = <minecraft:rail>;
// BWM Items
var moulding = <betterwithmods:wood_moulding:*>;
var siding = <betterwithmods:wood_siding:*>;
var leather_strap = <betterwithmods:material:8>;
var hellfire_dust = <betterwithmods:material:16>;
var soulforged_steel = <betterwithmods:material:14>;
var tanned_leather = <betterwithmods:material:6>;
var hemp_cloth = <betterwithmods:material:4>;
var hemp_fiber = <betterwithmods:material:3>;
//Charset Item
var charset_wire = <charsetlib:wire:2>;
# ==================================================
# Vanilla
# ==================================================
// Armor
var armor_items = [
	[<minecraft:iron_helmet>, <minecraft:iron_chestplate>, <minecraft:iron_leggings>, <minecraft:iron_boots>],
	[<minecraft:golden_helmet>, <minecraft:golden_chestplate>, <minecraft:golden_leggings>, <minecraft:golden_boots>],
	[<minecraft:diamond_helmet>, <minecraft:diamond_chestplate>, <minecraft:diamond_leggings>, <minecraft:diamond_boots>]
] as IItemStack[][];
var armor_materials = [iron_ingot, gold_ingot, diamond] as IItemStack[];
for i, armor_set in armor_items {
	var material = armor_materials[i];
	for item in armor_set {
		recipes.remove(item);
	}
	recipes.addShaped(armor_set[0],
		[[material, material, material],
		[material, leather_strap, material]]);
	recipes.addShaped(armor_set[1],
		[[material, leather_strap, material],
		[material, material, material],
		[material, material, material]]);
	recipes.addShaped(armor_set[2],
		[[material, material, material],
		[material, leather_strap, material],
		[material, null, material]]);
	recipes.addShaped(armor_set[3],
		[[material, null, material],
		[material, leather_strap, material]]);
}



// Eye of Ender
recipes.remove(<minecraft:ender_eye>);
recipes.addShapeless(<minecraft:ender_eye>, [<minecraft:ender_pearl>, <minecraft:blaze_powder>, hellfire_dust]);
# ==================================================
# Better With Mods
# ==================================================
// Hemp Cloth
recipes.remove(hemp_cloth);
recipes.addShaped(hemp_cloth,
	[[hemp_fiber, hemp_fiber, hemp_fiber],
	[hemp_fiber, hemp_fiber, hemp_fiber]]);
// Hemp Rope
recipes.remove(<betterwithmods:rope>);
recipes.addShaped(<betterwithmods:rope>,
	[[hemp_fiber],
	[hemp_fiber],
	[hemp_fiber]]);
recipes.addShapeless(<betterwithmods:rope> * 9, [<betterwithmods:aesthetic:4>]);
// Hemp Fiber (from Rope)
recipes.remove(hemp_fiber);
recipes.addShapeless(hemp_fiber * 3, [<betterwithmods:rope>]);
// Gearbox
recipes.remove(<betterwithmods:gearbox>);
recipes.addShaped(<betterwithmods:gearbox>,
		[[<ore:plankWood>, <betterwithmods:material:0>, <ore:plankWood>],
		[<betterwithmods:material:0>, redstone, <betterwithmods:material:0>],
		[<ore:plankWood>, <betterwithmods:material:0>, <ore:plankWood>]]);
recipes.addShaped(<betterwithmods:gearbox>,
		[[siding, <betterwithmods:material:0>, siding],
		[<betterwithmods:material:0>, redstone, <betterwithmods:material:0>],
		[siding, <betterwithmods:material:0>, siding]]);
// Pulley
recipes.remove(<betterwithmods:single_machine:1>);
recipes.addShaped(<betterwithmods:single_machine:1>,
		[[<ore:plankWood>, iron_ingot, <ore:plankWood>],
		[<betterwithmods:material:0>, redstone, <betterwithmods:material:0>],
		[<ore:plankWood>, iron_ingot, <ore:plankWood>]]);
recipes.addShaped(<betterwithmods:single_machine:1>,
		[[siding, iron_ingot, siding],
		[<betterwithmods:material:0>, redstone, <betterwithmods:material:0>],
		[siding, iron_ingot, siding]]);
# ==================================================
# Charset
# ==================================================
// Pipe
recipes.remove(<charsetpipes:pipe>);
//recipes.addShaped(<charsetpipes:pipe> * 12,
//	[[soulforged_steel, <minecraft:glass>, soulforged_steel]]);
//recipes.addShaped(<charsetpipes:pipe> * 12,
//	[[soulforged_steel], [<minecraft:glass>], [soulforged_steel]]);
recipes.remove(<charsetpipes:shifter>);
// Redstone Cable
recipes.addShaped(charset_wire * 8,
	[[hellfire_dust, <minecraft:redstone>, hellfire_dust],
	[<minecraft:redstone>, iron_ingot, <minecraft:redstone>],
	[hellfire_dust, <minecraft:redstone>, hellfire_dust]]);
recipes.addShaped(charset_wire * 12,
	[[hellfire_dust, <minecraft:redstone>, hellfire_dust],
	[<minecraft:redstone>, soulforged_steel, <minecraft:redstone>],
	[hellfire_dust, <minecraft:redstone>, hellfire_dust]]);
// Backpack
recipes.remove(<charsetstorage:backpack>);
recipes.addShaped(<charsetstorage:backpack>,
		[[tanned_leather, gold_ingot, tanned_leather],
		[leather_strap, <ore:chestWood>, leather_strap],
		[tanned_leather, <minecraft:wool:*>, tanned_leather]]);
# ==================================================
# Storage Drawers
# ==================================================
// Drawers
var wood_types = [ "oak", "spruce", "birch", "jungle", "acacia", "dark_oak" ] as string[];
var drawer_stacks = [ <storagedrawers:basicDrawers:0>, <storagedrawers:basicDrawers:1>, <storagedrawers:basicDrawers:2>, <storagedrawers:basicDrawers:3>, <storagedrawers:basicDrawers:4> ] as IItemStack[];
var siding_stacks = [ <betterwithmods:wood_siding:0>, <betterwithmods:wood_siding:1>, <betterwithmods:wood_siding:2>, <betterwithmods:wood_siding:3>, <betterwithmods:wood_siding:4>, <betterwithmods:wood_siding:5> ] as IItemStack[];
var moulding_stacks = [ <betterwithmods:wood_moulding:0>, <betterwithmods:wood_moulding:1>, <betterwithmods:wood_moulding:2>, <betterwithmods:wood_moulding:3>, <betterwithmods:wood_moulding:4>, <betterwithmods:wood_siding:5> ] as IItemStack[];
for type in wood_types {
	recipes.remove(<storagedrawers:basicDrawers:*>.withTag({ material: type }));
}
for i, type in wood_types {
	var siding_type = siding_stacks[i];
	var moulding_type = moulding_stacks[i];
	// Basic Drawer
	recipes.addShaped(<storagedrawers:basicDrawers:0>.withTag({ material: type }),
		[[siding_type, siding_type, siding_type],
		[null, <ore:chestWood>, null],
		[siding_type, siding_type, siding_type]]);
	// Basic Drawer 1x2
	recipes.addShaped(<storagedrawers:basicDrawers:1>.withTag({ material: type }),
		[[siding_type, <ore:chestWood>, siding_type],
		[siding_type, siding_type, siding_type],
		[siding_type, <ore:chestWood>, siding_type]]);
	// Basic Drawer 2x2
	recipes.addShaped(<storagedrawers:basicDrawers:2>.withTag({ material: type }),
		[[<ore:chestWood>, siding_type, <ore:chestWood>],
		[siding_type, siding_type, siding_type],
		[<ore:chestWood>, siding_type, <ore:chestWood>]]);
	// Half Drawer 1x2
		recipes.addShaped(<storagedrawers:basicDrawers:3>.withTag({ material: type }),
		[[moulding_type, <ore:chestWood>, moulding_type],
		[moulding_type, moulding_type, moulding_type],
		[moulding_type, <ore:chestWood>, moulding_type]]);
	// Half Drawer 2x2
	recipes.addShaped(<storagedrawers:basicDrawers:4>.withTag({ material: type }),
		[[<ore:chestWood>, moulding_type, <ore:chestWood>],
		[moulding_type, moulding_type, moulding_type],
		[<ore:chestWood>, moulding_type, <ore:chestWood>]]);
}
// Framing Table
recipes.remove(<storagedrawers:framingTable>);
recipes.addShaped(<storagedrawers:framingTable>,
	[[siding, siding, siding],
	[moulding, null, moulding]]);
// Packing Tape
recipes.remove(<storagedrawers:tape>);
recipes.addShaped(<storagedrawers:tape>,
	[[null, <betterwithmods:material:12>, null],
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
