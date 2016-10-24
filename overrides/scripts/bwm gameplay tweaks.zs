# ==================================================
# Definitions
# ==================================================

// BWM Items
var moulding = <betterwithmods:wood_moulding:*>;
var siding = <betterwithmods:wood_siding:*>;
var leather_strap = <betterwithmods:material:8>;
var hellfire_dust = <betterwithmods:material:16>;
var soulforged_steel = <betterwithmods:material:14>;
var tanned_leather = <betterwithmods:material:6>;
var hemp_cloth = <betterwithmods:material:4>;
var hemp_fiber = <betterwithmods:material:3>;

# =================================================
# vanilla changes
# =================================================

# =================================================
# bwm + bop
# =================================================


//readd later
recipes.remove(<biomesoplenty:dull_flower_band>);
recipes.remove(<biomesoplenty:plain_flower_band>);
recipes.remove(<biomesoplenty:exotic_flower_band>);
recipes.remove(<biomesoplenty:biome_finder>);
recipes.remove(<biomesoplenty:enderporter>);


# ================================================
# vanilla + primalcore + bwm changes
# ================================================
//remove iron from iron ore, and make iron ore smelt into pig iron
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.addRecipe(<primal:pigiron_ingot>, <minecraft:iron_ore>, 0.5);

//rename all the things
<primal:pigiron_dust>.displayName = "Slag Iron Dust";
<primal:pigiron_ingot>.displayName = "Slag Iron Ingot";
<primal:pigiron_nugget>.displayName = "Slag Iron Nugget";
<primal:pigiron_block>.displayName = "Slag Iron Block";
<primal:carbonate_ferro_slack>.displayName = "Slag";
<primal:iron_sheet>.displayName = "Slag Iron Sheet";
<primal:vanadium_ingot>.displayName = "Refined Slag Iron Ingot";
<primal:vanadium_dust>.displayName = "Refined Slag Iron Dust";
<primal:vanadium_nugget>.displayName = "Refined Slag Iron Nugget";
<primal:vanadium_block>.displayName = "Refined Slag Iron Block";
<primal:nether_palm_plank>.displayName = "Hardend Dark Oak";
<primal:netherstone>.displayName = "Waxed Dark Oak";
<spartanshields:shieldBasicStone>.displayName = "Slag Iron Braced Shield";
<primal:silk_cordage_coiled>.displayName = "Silk Fire Tinder";



//add descriptions to all the things
<primal:nether_palm_plank>.addTooltip("Dark oak, a hard wood covered in wax to make it more durable.");

//make corypha pachyptila, tanned dark oak wood
recipes.remove(<primal:nether_palm_plank>);


//add smelting recipes
mods.betterwithmods.Crucible.add(<minecraft:iron_ingot>, <primal:carbonate_ferro_slack>, [<primal:pigiron_dust> * 3]);
mods.betterwithmods.Mill.add(<primal:pigiron_dust>, null, [<primal:pigiron_ingot>]);
mods.betterwithmods.StokedCrucible.add(<minecraft:iron_ingot>, <primal:rock>, [<primal:carbonate_ferro_slack> * 5]);
furnace.addRecipe(<primal:vanadium_ingot> * 4, <primal:pigiron_dust> * 3, 0.5);
mods.betterwithmods.Kiln.add(<primal:vanadium_block>, [<minecraft:iron_block>]);
mods.betterwithmods.StokedCrucible.add(<minecraft:stone>, null, [<primal:rock> * 9]);
mods.betterwithmods.Cauldron.add(<primal:nether_palm_plank>, null, [<primal:netherstone>]);
mods.betterwithmods.Cauldron.add(<betterwithmods:material:13>, null, [<primal:lard> * 2]);
mods.betterwithmods.Cauldron.add(<betterwithmods:material:13>, null, [<primal:suet> * 2]);
mods.betterwithmods.Cauldron.add(<betterwithmods:material:12>, null, [<primal:horse_meat_cooked>]);
//awaiting fix
//mods.betterwithmods.StokedCrucible.add(<minecraft:blazerod>, );




//fix stuff
recipes.remove(<betterwithmods:single_machine:3>);
recipes.addShaped(<betterwithmods:single_machine:3>, [[<primal:iron_sheet>, <minecraft:bone>, <primal:iron_sheet>], [<primal:iron_sheet>, <minecraft:water_bucket>, <primal:iron_sheet>], [<primal:iron_sheet>, <primal:iron_sheet>, <primal:iron_sheet>]]);
recipes.remove(<primal:iron_sheet>);
recipes.addShapeless(<primal:iron_sheet>, [<primal:pigiron_ingot>, <primal:stone_gallagher>]);
recipes.addShapeless(<primal:iron_sheet>, [<primal:pigiron_ingot>, <primal:quartz_gallagher>]);
recipes.remove(<primal:iron_strands>);
recipes.addShapeless(<primal:iron_strands>, [<minecraft:iron_ingot>, <primal:iron_clippers>]);
recipes.addShaped(<primal:pigiron_block>, [[<primal:pigiron_ingot>, <primal:pigiron_ingot>, <primal:pigiron_ingot>], [<primal:pigiron_ingot>, <primal:pigiron_ingot>, <primal:pigiron_ingot>], [<primal:pigiron_ingot>, <primal:pigiron_ingot>, <primal:pigiron_ingot>]]);
recipes.addShapeless(<primal:pigiron_ingot> * 9, [<primal:pigiron_block>]);
recipes.remove(<primal:carbonate_ferro_stone>);
recipes.addShapeless(<minecraft:cobblestone>, [<primal:rock>, <primal:rock>, <primal:rock>, <primal:rock>, <primal:rock>, <primal:rock>, <primal:rock>, <primal:rock>, <primal:rock>]);
recipes.remove(<primal:iron_plate>);
recipes.addShapeless(<primal:iron_plate>, [<primal:quartz_gallagher>, <minecraft:iron_ingot>]);
recipes.addShapeless(<primal:pigiron_nugget> * 9, [<primal:pigiron_ingot>]);
recipes.addShapeless(<primal:pigiron_ingot>, [<primal:pigiron_nugget>, <primal:pigiron_nugget>, <primal:pigiron_nugget>, <primal:pigiron_nugget>, <primal:pigiron_nugget>, <primal:pigiron_nugget>, <primal:pigiron_nugget>, <primal:pigiron_nugget>, <primal:pigiron_nugget>]);
recipes.addShaped(<primal:vanadium_block>, [[<primal:vanadium_ingot>, <primal:vanadium_ingot>, <primal:vanadium_ingot>], [<primal:vanadium_ingot>, <primal:vanadium_ingot>, <primal:vanadium_ingot>], [<primal:vanadium_ingot>, <primal:vanadium_ingot>, <primal:vanadium_ingot>]]);


//make quartz tools slag iron tools
recipes.remove(<primal:quartz_gallagher>);
recipes.remove(<primal:quartz_workblade>);
recipes.remove(<primal:quartz_shears>);
recipes.remove(<primal:quartz_hatchet>);
recipes.remove(<primal:quartz_axe>);
recipes.remove(<primal:quartz_pickaxe>);
recipes.remove(<primal:quartz_shovel>);
recipes.remove(<primal:quartz_hoe>);
<primal:quartz_gallagher>.displayName = "Slag Iron Gallagher";
<primal:quartz_axe>.displayName = "Slag Iron Axe";
<primal:quartz_hatchet>.displayName = "Slag Iron Hatchet";
<primal:quartz_hoe>.displayName = "Slag Iron Hoe";
<primal:quartz_pickaxe>.displayName = "Slag Iron Pickaxe";
<primal:quartz_shears>.displayName = "Slag Iron Shears";
<primal:quartz_shovel>.displayName = "Slag Iron Shovel";
<primal:quartz_workblade>.displayName = "Slag Iron Workblade";
recipes.addShaped(<primal:quartz_gallagher>, [[<primal:pigiron_ingot>, <ore:cordageGeneral>, <primal:pigiron_ingot>], [<primal:pigiron_ingot>, <ore:stickWood>, <primal:pigiron_ingot>], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_workblade>, [[null, <primal:pigiron_nugget>, <primal:pigiron_ingot>], [<primal:pigiron_nugget>, <ore:cordageGeneral>, <primal:pigiron_nugget>], [<ore:stickWood>, <primal:pigiron_nugget>, null]]);
recipes.addShaped(<primal:quartz_pickaxe>, [[<primal:pigiron_nugget>, <ore:cordageGeneral>, <primal:pigiron_nugget>], [<primal:pigiron_nugget>, <ore:stickWood>, <primal:pigiron_nugget>], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_axe>, [[<primal:pigiron_nugget>, <ore:cordageGeneral>, <primal:pigiron_nugget>], [<primal:pigiron_nugget>, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_shovel>, [[null, <primal:pigiron_ingot>, null], [null, <ore:cordageGeneral>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_hoe>, [[<primal:pigiron_nugget>, <primal:pigiron_nugget>, <ore:cordageGeneral>], [null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<primal:quartz_hatchet>, [[<primal:pigiron_nugget>, <ore:cordageGeneral>], [null, <ore:stickWood>]]);
recipes.addShaped(<primal:quartz_shears>, [[null, <primal:pigiron_nugget>], [<primal:pigiron_nugget>, <ore:cordageGeneral>]]);


//bwm tweaks
recipes.addShapeless(leather_strap * 2, [<betterwithmods:material:33>, <primal:quartz_workblade>]);
recipes.addShapeless(<betterwithmods:material:33>, [<betterwithmods:material:6>, <primal:quartz_workblade>]);
recipes.remove(<betterwithmods:material:11>);
recipes.addShaped(<betterwithmods:material:11>,
	[[null, hemp_cloth, hemp_cloth],
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.addShaped(<betterwithmods:material:11>, [[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>], [<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.remove(<primal:netherstone>);
recipes.addShapeless(<primal:netherstone> * 5, [<minecraft:planks:5>, <betterwithmods:material:13>, <minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]);
recipes.addShaped(<betterwithmods:saw>, [[<primal:vanadium_ingot>, <primal:vanadium_ingot>, <primal:vanadium_ingot>], [<ore:gearWood>, <betterwithmods:material:9>, <ore:gearWood>], [<ore:plankWood>, <ore:gearWood>, <ore:plankWood>]]);
recipes.addShaped(<betterwithmods:saw>, [[<primal:vanadium_ingot>, <primal:vanadium_ingot>, <primal:vanadium_ingot>], [<ore:gearWood>, <betterwithmods:material:9>, <ore:gearWood>], [<betterwithmods:wood_siding:*>, <ore:gearWood>, <betterwithmods:wood_siding:*>]]);



//primalcore tweaks



//primalcore fixes
recipes.remove(<primal:nether_palm_stairs>);
recipes.remove(<primal:nether_palm_stick>);
recipes.remove(<primal:nether_palm_slab>);
recipes.remove(<primal:pressplate_nether_palm>);
recipes.remove(<primal:nether_gallagher>);
recipes.remove(<primal:worktable_netherstone>);
recipes.remove(<primal:salo>);
recipes.remove(<primal:pressplate_dirt>);
recipes.remove(<primal:pressplate_grass>);
recipes.remove(<primal:pressplate_glass>);
recipes.remove(<primal:silk_cordage_coiled>);
recipes.addShapeless(<primal:silk_cordage_coiled>, [<primal:lard>, <primal:silk_cordage>, <primal:silk_cordage>, <primal:silk_cordage>]);
recipes.addShapeless(<primal:torch_wood> * 4, [<primal:silk_cordage_coiled>, <ore:stickWood>]);
recipes.addShapeless(<primal:torch_wood> * 3, [<ore:stickWood>, <primal:plant_tinder>, <primal:plant_tinder>, <primal:plant_tinder>, <primal:plant_tinder>, <primal:plant_tinder>]);



# ================================================
# late game fixes
# ================================================

recipes.remove(<structuredcrafting:structuredCrafter>);
recipes.addShapeless(<structuredcrafting:structuredCrafter>, [<minecraft:crafting_table>, <hardcorewither:craftingItem:0>, <hardcorewither:craftingItem:0>, <minecraft:piston>]);
//awaiting fix in bwm
//mods.betterwithmods.Couldron.add(<snad:snad:0>, <betterwithmods:urn>, [<minecraft:sand>, <betterwithmods:urn:8>]);

# ================================================
# misc changes and nitpics
# ================================================

recipes.addShaped(<toughasnails:wool_chestplate>, [[<primal:plant_cloth>, null, <primal:plant_cloth>], [<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>], [<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>]]);
recipes.addShaped(<toughasnails:wool_leggings>, [[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>], [<primal:plant_cloth>, null, <primal:plant_cloth>], [<primal:plant_cloth>, null, <primal:plant_cloth>]]);
recipes.remove(<toughasnails:charcoal_filter>);
recipes.addShapedMirrored(<toughasnails:charcoal_filter> * 3, [[null, <minecraft:paper>, null], [null, <minecraft:coal:1>, null], [null, <minecraft:paper>, null]]);
recipes.remove(<minecraft:shield>);
recipes.remove(<toughasnails:jelled_slime>);


//recipes.addShaped(<minecraft:lead>
//recipes.addShaped(<minecraft:bookshelf>
//recipes.addShaped(<minecraft:tnt>
//recipes.addShaped(<minecraft:cake>
//wait for railcraft update.
//recipes.addShaped(<minecraft:rail>
//recipes.addShaped(<minecraft:golden_rail>
//recipes.addShaped(<minecraft:activator_rail>
//recipes.addShaped(<minecraft:detector_rail>
//recipes.addShaped(<minecraft:fishing_rod>
recipes.remove(<minecraft:painting>);
recipes.addShaped(<minecraft:painting>, [[<betterwithmods:material:38>, <betterwithmods:material:38>, <betterwithmods:material:38>], [<betterwithmods:material:38>, <minecraft:wool:*>, <betterwithmods:material:38>], [<betterwithmods:material:38>, <betterwithmods:material:38>, <betterwithmods:material:38>]]);
//recipes.addShaped(<minecraft:golden_apple>
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>], [<ore:cobblestone>, <betterwithmods:material:35>, <ore:cobblestone>]]);
//recipes.addShaped(<minecraft:enchanting_table>
//recipes.addShaped(<minecraft:hopper>
//recipes.addShaped(<charsetpipes:shifter>
recipes.remove(<spartanshields:shieldBasicWood>);
recipes.addShaped(<spartanshields:shieldBasicWood>, [[null, <primal:nether_palm_plank>, <primal:nether_palm_plank>], [<primal:nether_palm_plank>, <ore:stickWood>, <primal:nether_palm_plank>], [<primal:nether_palm_plank>, <primal:nether_palm_plank>, null]]);
recipes.remove(<spartanshields:shieldBasicStone>);
recipes.addShaped(<spartanshields:shieldBasicStone>, [[null, <primal:pigiron_ingot>, null], [<primal:pigiron_ingot>, <spartanshields:shieldBasicWood>, <primal:pigiron_ingot>], [null, <primal:pigiron_ingot>, null]]);
//recipes.addShaped(<spartanshields:shieldBasicIron>
//recipes.addShaped(<spartanshields:shieldBasicGold>
recipes.remove(<spartanshields:shieldBasicDiamond>);
recipes.addShaped(<spartanshields:shieldBasicDiamond>, [[null, <ore:gemDiamond>, null], [<ore:gemDiamond>, <spartanshields:shieldBasicGold>, <ore:gemDiamond>], [null, <ore:gemDiamond>, null]]);
recipes.addShaped(<toughasnails:wool_helmet>, [[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>], [<primal:plant_cloth>, null, <primal:plant_cloth>]]);
recipes.addShaped(<toughasnails:wool_boots>, [[<primal:plant_cloth>, null, <primal:plant_cloth>], [<primal:plant_cloth>, null, <primal:plant_cloth>]]);
recipes.remove(<snad:snad:*>);
// Redstone Latch (remove)
recipes.remove(<betterwithmods:material:35>);
recipes.addShapeless(<betterwithmods:material:35>, [<minecraft:redstone>, <primal:iron_sheet>]);







//plant cloth for wind mills. done.
//pig iron-iron. done
//saw using pig iron
//progression with out iron
//couldron with polished stone
//ferro carbonite slack as byproduct of iron processing, used to be processed into more iron. done
//knife from bwm made with pig iron. done, sortof
//pig iron made from smelting iron ore. done
//quartz tools now pig iron tools. done
//remove dirt, grass and glass pressure plates.
//remove iron strand recipe. done
//make unfired proclin require a cauldron
