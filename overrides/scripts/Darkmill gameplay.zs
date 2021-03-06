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

//PlastiTech
var diamantine_ingot = <plastitech:ItemDiamantine_ingot>;

//Vanilla
var stick = <minecraft:stick>;


# =================================================
# bop
# =================================================
//this is all writen by hand.

//readd later
recipes.remove(<biomesoplenty:dull_flower_band>);
recipes.remove(<biomesoplenty:plain_flower_band>);
recipes.remove(<biomesoplenty:exotic_flower_band>);
recipes.remove(<biomesoplenty:biome_finder>);
recipes.remove(<biomesoplenty:enderporter>);


# ================================================
# primalcore + bwm changes
# ================================================
//remove iron from iron ore, and make iron ore smelt into pig iron
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.addRecipe(<plastitech:ItemSlag_iron_ingot>, <minecraft:iron_ore>, 0.5);

//rename all the things
<primal:pigiron_block>.displayName = "Slag Iron Block";
<primal:carbonate_ferro_slack>.displayName = "Slag";
<primal:iron_sheet>.displayName = "Slag Iron Sheet";
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
mods.betterwithmods.Cauldron.add(<embers:nuggetIron> * 3, <primal:carbonate_ferro_slack> * 5,
		[<plastitech:ItemSlag_iron_dust> * 3]);
mods.betterwithmods.Crucible.add(<minecraft:iron_ingot>, <primal:carbonate_ferro_slack> * 3,
    [<plastitech:ItemSmelted_iron_dust> * 5]);
mods.betterwithmods.StokedCrucible.add(<minecraft:iron_ingot>, <primal:carbonate_ferro_slack> * 2, [<plastitech:ItemSmelted_iron_dust> * 2, hellfire_dust]);
mods.betterwithmods.StokedCrucible.add(<embers:nuggetIron> * 3, <primal:rock>,
		[<primal:carbonate_ferro_slack> * 5]);
furnace.addRecipe(<plastitech:ItemSmelted_iron_ingot> * 4, <plastitech:ItemSlag_iron_dust> * 3, 0.5);
mods.betterwithmods.Kiln.add(<primal:vanadium_block>, [<minecraft:iron_block>]);
mods.betterwithmods.StokedCrucible.add(<minecraft:stone>, null, [<primal:rock> * 9]);
mods.betterwithmods.Cauldron.add(<primal:nether_palm_plank>, null, [<primal:netherstone>]);
mods.betterwithmods.Cauldron.add(<betterwithmods:material:13>, null, [<primal:lard> * 2]);
mods.betterwithmods.Cauldron.add(<betterwithmods:material:13>, null, [<primal:suet> * 2]);
mods.betterwithmods.Cauldron.add(<betterwithmods:material:12>, null, [<primal:horse_meat_cooked>]);
mods.betterwithmods.StokedCrucible.add(<minecraft:blaze_rod>, null, [<primal:golden_stick>, hellfire_dust]);
mods.betterwithmods.StokedCauldron.add(<minecraft:water_bucket>, null,
		[<minecraft:bucket>, <biomesoplenty:hard_ice>]);
furnace.addRecipe(<embers:nuggetIron> * 5, <plastitech:ItemSmelted_iron_dust> * 15, 0.5);





//add grinding recipes
mods.betterwithmods.Mill.add(<plastitech:ItemSlag_iron_dust>, null, [<plastitech:ItemSlag_iron_ingot>]);
mods.betterwithmods.Mill.add(<primal:wheat_ground>, null, [<minecraft:wheat>]);
mods.betterwithmods.Mill.add(<primal:corn_ground>, null, [<primal:corn_seeds>]);
mods.betterwithmods.Cauldron.add(<primal:corn_seeds>, null, [<primal:corn_cob>]);
mods.betterwithmods.Mill.add(<plastitech:ItemSmelted_iron_dust>, null, [<plastitech:ItemSmelted_iron_ingot>]);
mods.betterwithmods.Mill.add(<primal:rock> * 4, null, [<minecraft:stone:1>]);
mods.betterwithmods.Mill.add(<primal:rock> * 4, null, [<minecraft:stone:3>]);
mods.betterwithmods.Mill.add(<primal:rock> * 4, null,[<minecraft:stone:5>]);
mods.betterwithmods.Mill.add(<primal:nether_cloth> * 4, null, [<primal:rush_seeds> * 8]);
mods.betterwithmods.Mill.add(<primal:wheat_ground> * 3, null, [<primal:nether_cloth> * 2]);


//fix stuff
recipes.remove(<betterwithmods:single_machine:3>);
recipes.addShaped(<betterwithmods:single_machine:3>,
		[[<primal:iron_sheet>, <minecraft:bone>, <primal:iron_sheet>],
		[<primal:iron_sheet>, <minecraft:water_bucket>, <primal:iron_sheet>],
		[<primal:iron_sheet>, <primal:iron_sheet>, <primal:iron_sheet>]]);
recipes.remove(<primal:iron_sheet>);
recipes.addShapeless(<primal:iron_sheet>, [<plastitech:ItemSlag_iron_ingot>, <primal:stone_gallagher:*>]);
recipes.addShapeless(<primal:iron_sheet>, [<plastitech:ItemSlag_iron_ingot>, <primal:quartz_gallagher:*>]);
recipes.remove(<primal:iron_strands>);
recipes.addShapeless(<primal:iron_strands>, [<minecraft:iron_ingot>, <primal:iron_clippers:*>]);
recipes.addShaped(<primal:pigiron_block>,
		[[<plastitech:ItemSlag_iron_ingot>, <plastitech:ItemSlag_iron_ingot>, <plastitech:ItemSlag_iron_ingot>],
		[<plastitech:ItemSlag_iron_ingot>, <plastitech:ItemSlag_iron_ingot>, <plastitech:ItemSlag_iron_ingot>],
		[<plastitech:ItemSlag_iron_ingot>, <plastitech:ItemSlag_iron_ingot>, <plastitech:ItemSlag_iron_ingot>]]);
recipes.addShapeless(<plastitech:ItemSlag_iron_ingot> * 9, [<primal:pigiron_block>]);
recipes.remove(<primal:carbonate_ferro_stone>);
recipes.addShapeless(<minecraft:cobblestone>,
		[<primal:rock>, <primal:rock>, <primal:rock>,
		<primal:rock>, <primal:rock>, <primal:rock>,
		<primal:rock>, <primal:rock>, <primal:rock>]);
recipes.remove(<primal:iron_plate>);
recipes.addShapeless(<primal:iron_plate>, [<primal:quartz_gallagher>, <minecraft:iron_ingot>]);
recipes.addShapeless(<plastitech:ItemSlag_iron_nugget> * 9, [<plastitech:ItemSlag_iron_ingot>]);
recipes.addShapeless(<plastitech:ItemSlag_iron_ingot>,
		[<plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_nugget>,
		<plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_nugget>,
		<plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_nugget>]);
recipes.addShaped(<primal:vanadium_block>,
		[[<plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>],
		[<plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>],
		[<plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>]]);


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
recipes.addShaped(<primal:quartz_gallagher>,
		[[<plastitech:ItemSlag_iron_ingot>, <ore:cordageGeneral>, <plastitech:ItemSlag_iron_ingot>],
		[<plastitech:ItemSlag_iron_ingot>, <ore:stickWood>, <plastitech:ItemSlag_iron_ingot>], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_workblade>,
		[[null, <plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_ingot>],
		[<plastitech:ItemSlag_iron_nugget>, <ore:cordageGeneral>, <plastitech:ItemSlag_iron_nugget>],
		[<ore:stickWood>, <plastitech:ItemSlag_iron_nugget>, null]]);
recipes.addShaped(<primal:quartz_pickaxe>,
		[[<plastitech:ItemSlag_iron_nugget>, <ore:cordageGeneral>, <plastitech:ItemSlag_iron_nugget>],
		[<plastitech:ItemSlag_iron_nugget>, <ore:stickWood>, <plastitech:ItemSlag_iron_nugget>], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_axe>,
		[[<plastitech:ItemSlag_iron_nugget>, <ore:cordageGeneral>, <plastitech:ItemSlag_iron_nugget>],
		[<plastitech:ItemSlag_iron_nugget>, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_shovel>,
		[[null, <plastitech:ItemSlag_iron_ingot>, null], [null, <ore:cordageGeneral>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<primal:quartz_hoe>,
		[[<plastitech:ItemSlag_iron_nugget>, <plastitech:ItemSlag_iron_nugget>, <ore:cordageGeneral>],
		[null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);
recipes.addShaped(<primal:quartz_hatchet>,
		[[<plastitech:ItemSlag_iron_nugget>, <ore:cordageGeneral>], [null, <ore:stickWood>]]);
recipes.addShaped(<primal:quartz_shears>,
		[[null, <plastitech:ItemSlag_iron_nugget>], [<plastitech:ItemSlag_iron_nugget>, <ore:cordageGeneral>]]);


//bwm tweaks
recipes.addShapeless(<betterwithmods:material:33>,
		[<betterwithmods:material:6>, <primal:quartz_workblade:*>]);
recipes.remove(<betterwithmods:material:11>);
recipes.addShaped(<betterwithmods:material:11>,
		[[null, hemp_cloth, hemp_cloth],
		[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.addShaped(<betterwithmods:material:11>,
		[[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>],
		[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>],
		[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.remove(<primal:netherstone>);
recipes.addShapeless(<primal:netherstone> * 5,
		[<minecraft:planks:5>, <betterwithmods:material:13>, <minecraft:planks:5>,
		<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]);
recipes.addShaped(<betterwithmods:saw>,
		[[<plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>],
		[<ore:gearWood>, <betterwithmods:material:9>, <ore:gearWood>],
		[<ore:plankWood>, <ore:gearWood>, <ore:plankWood>]]);
recipes.addShaped(<betterwithmods:saw>,
		[[<plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_ingot>],
		[<ore:gearWood>, <betterwithmods:material:9>, <ore:gearWood>],
		[<betterwithmods:wood_siding:*>, <ore:gearWood>, <betterwithmods:wood_siding:*>]]);
mods.betterwithmods.Cauldron.add(<minecraft:ice>, <minecraft:bucket>,
		[<toughasnails:ice_cube> * 4, <minecraft:water_bucket>]);
mods.betterwithmods.Cauldron.add(<minecraft:water_bucket>, null, [<minecraft:bucket>, <minecraft:ice>]);
mods.betterwithmods.StokedCrucible.remove(<minecraft:iron_ingot> * 3);
mods.betterwithmods.StokedCrucible.add(<minecraft:iron_ingot> * 3, null, [<minecraft:iron_pickaxe>]);
mods.betterwithmods.StokedCrucible.add(<minecraft:iron_ingot> * 3, null, [<minecraft:iron_axe>]);
mods.betterwithmods.StokedCrucible.add(<minecraft:iron_ingot> * 3, null, [<minecraft:rail> * 8]);
mods.betterwithmods.StokedCrucible.add(<minecraft:iron_ingot> * 3, null, [<minecraft:iron_bars> * 8]);
mods.betterwithmods.Cauldron.add(<toughasnails:jelled_slime>, null,
		[<toughasnails:ice_cube> * 5, <minecraft:slime_ball>, <betterwithmods:material:1>]);
mods.betterwithmods.Crucible.add(<minecraft:redstone> * 63, null, [<betterwithmods:material:17> * 4, <minecraft:glowstone> * 7]);




//primalcore tweaks



//primalcore fixes
recipes.remove(<primal:nether_palm_stairs>);
recipes.remove(<primal:nether_palm_stick>);
recipes.remove(<primal:nether_palm_slab>);
recipes.remove(<primal:pressplate_nether_palm>);
recipes.remove(<primal:nether_gallagher>);
recipes.remove(<primal:worktable_netherstone>);
recipes.remove(<primal:pressplate_dirt>);
recipes.remove(<primal:pressplate_grass>);
recipes.remove(<primal:pressplate_glass>);
recipes.remove(<primal:silk_cordage_coiled>);
recipes.addShapeless(<primal:silk_cordage_coiled>,
		[<primal:lard>, <primal:silk_cordage>, <primal:silk_cordage>, <primal:silk_cordage>]);
recipes.addShapeless(<primal:torch_wood> * 4, [<primal:silk_cordage_coiled>, <ore:stickWood>]);
recipes.addShapeless(<primal:torch_wood> * 3,
		[<ore:stickWood>, <primal:plant_tinder>, <primal:plant_tinder>,
		<primal:plant_tinder>, <primal:plant_tinder>, <primal:plant_tinder>]);
recipes.addShapeless(<primal:golden_stick>,
		[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]);
mods.betterwithmods.Cauldron.add(<betterwithmods:donut> * 5, null,
		[<betterwithmods:material:37>, <primal:rush_seeds> * 10]);
recipes.remove(<primal:carbonate_stone>);
recipes.removeShapeless(<minecraft:flint_and_steel>, [<minecraft:iron_ingot>, <minecraft:flint>]);
recipes.remove(<primal:iron_ring>);
recipes.addShapeless(<primal:iron_ring> * 6, [<primal:quartz_gallagher>, <ore:plateIron>]);
recipes.remove(<primal:nether_cloth>);
		<primal:nether_cloth>.displayName = "Rush Seed Flour";
recipes.addShapeless(<primal:nether_cloth>,
		[<primal:rush_seeds>, <primal:rush_seeds>, <primal:rush_seeds>,
		<primal:rush_seeds>, <primal:rush_seeds>, <primal:rush_seeds>,
		<primal:rush_seeds>, <primal:rush_seeds>, <primal:rush_seeds>]);
recipes.addShapeless(<primal:wheat_ground> * 4,
		[<primal:nether_cloth>, <primal:nether_cloth>, <primal:nether_cloth>, <ore:foodSalt>]);
recipes.addShaped(<minecraft:bucket>,
		[[<primal:iron_sheet>, null, <primal:iron_sheet>],
		[<primal:iron_sheet>, null, <primal:iron_sheet>],
		[<primal:iron_sheet>, <primal:iron_sheet>, <primal:iron_sheet>]]);
recipes.remove(<primal:carbonate_flag>);
recipes.remove(<primal:carbonate_ferro_flag>);
mods.betterwithmods.Cauldron.add(<primal:rush_seeds> * 5, null, [<primal:rush_tips_bloom> * 4]);





# ===============================================
# embers fixes and changes
# ===============================================



furnace.remove(<embers:ingotLead>);
furnace.remove(<embers:ingotSilver>);
furnace.remove(<embers:ingotCopper>);
recipes.remove(<embers:blendCaminite>);
//hows' this formating?
recipes.remove(<embers:itemPipe>);
recipes.addShapedMirrored(<embers:itemPipe> * 4,
  	[[null, <betterwithmods:material:14>, null],
    [<ore:ingotLead>, <ore:plateLead>, <ore:ingotLead>],
		[null, <betterwithmods:material:14>, null]]);
recipes.remove(<embers:blockFurnace>);
recipes.addShaped(<embers:blockFurnace>,
		[[<embers:brickCaminite>, <embers:plateCaminite>, <embers:brickCaminite>],
		[<embers:brickCaminite>, <embers:blockCopper>, <embers:brickCaminite>],
		[<ore:ingotIron>, <minecraft:furnace:*>, <ore:ingotIron>]]);
recipes.remove(<embers:mechCore>);
recipes.addShaped(<embers:mechCore>,
		[[<ore:ingotIron>, <betterwithmods:single_machine:5>, <ore:ingotIron>],
		[null, <ore:plateLead>, null],
		[<ore:ingotIron>, null, <ore:ingotIron>]]);
mods.betterwithmods.StokedCauldron.add(<primal:salt_netjry_dust> * 2,
    <minecraft:bucket> * 5, [<minecraft:water_bucket> * 5]);
recipes.remove(<embers:axeClockwork>);
recipes.remove(<embers:pickaxeClockwork>);
recipes.remove(<embers:staffEmber>);
recipes.remove(<embers:grandhammer>);


# ================================================
# ore dictionary fixes
# ================================================

<ore:ingotBrass>.remove(<primal:brass_ingot>);
<ore:ingotBronze>.remove(<primal:bronze_ingot>);
<ore:ingotCopper>.remove(<primal:copper_ingot>);
<ore:ingotLead>.remove(<primal:lead_ingot>);
<ore:ingotPigiron>.remove(<plastitech:ItemSlag_iron_ingot>);
<ore:ingotSilver>.remove(<primal:silver_ingot>);
<ore:ingotTin>.remove(<primal:tin_ingot>);
<ore:ingotVanadium>.remove(<plastitech:ItemSmelted_iron_ingot>);
<ore:ingotWootz>.remove(<primal:wootz_ingot>);
<ore:ingotZinc>.remove(<primal:zinc_ingot>);
<ore:dustCopper>.remove(<primal:copper_dust>);
<ore:dustBronze>.remove(<primal:bronze_dust>);
<ore:dyeBlack>.add(<embers:dustAsh>);


# ================================================
# copper + lead + silver fixes
# ================================================

<primal:copper_dust>.displayName = "Dirty Copper Dust";
<primal:bronze_dust>.displayName = "Copper Sludge";
<primal:bronze_ingot>.displayName = "Crude Slag Copper Ingot";
<primal:copper_ingot>.displayName = "Refined Slag Copper Ingot";
<primal:brass_dust>.displayName = "Clean Copper Dust";
<primal:carbonate_slack>.displayName = "Mixed Sludge";
<primal:lead_dust>.displayName = "Unrefined Lead Dust";
<primal:silver_dust>.displayName = "Unrefined Silver Dust";
<primal:silver_ingot>.displayName = "Slag Silver Ingot";
<primal:lead_ingot>.displayName = "Slag Lead Ingot";
<primal:carbonate_stone>.displayName = "Volcanic Mixed Slag";
<primal:carbonate_ferro_stone>.displayName = "Volcanic Ferro Slag";



mods.betterwithmods.Mill.add(<primal:copper_dust>, <primal:bronze_dust>, [<embers:oreCopper>]);
mods.betterwithmods.Mill.add(<primal:silver_dust>, <primal:rock>, [<embers:oreSilver>]);
mods.betterwithmods.Mill.add(<primal:lead_dust>, <primal:rock>, [<embers:oreLead>]);
mods.betterwithmods.StokedCrucible.add(<primal:bronze_ingot>,
		<primal:carbonate_slack>,
		[<primal:copper_dust>]);
mods.betterwithmods.StokedCauldron.add(<primal:brass_dust>,
		<primal:carbonate_slack>,
		[<primal:copper_dust>, <minecraft:ice>]);
mods.betterwithmods.StokedCrucible.add(<primal:copper_ingot>,
		<primal:carbonate_slack>,
		[<primal:brass_dust>]);
mods.betterwithmods.StokedCrucible.add(<embers:ingotCopper>,
		<primal:carbonate_slack> * 3,
		[<primal:bronze_ingot>]);
mods.betterwithmods.StokedCrucible.add(<embers:ingotCopper> * 3,
		<primal:carbonate_slack> * 1,
		[<primal:copper_ingot>]);
mods.betterwithmods.StokedCrucible.add(<embers:blendCaminite> * 3, null,
		[<minecraft:clay>, <minecraft:clay>, <minecraft:clay>,
		<ore:foodSalt>, <primal:carbonate_slack>, <primal:carbonate_slack>,
		<primal:carbonate_slack>]);
mods.betterwithmods.StokedCrucible.add(<primal:lead_ingot>,
		<primal:carbonate_slack>,
		[<primal:lead_dust>]);
mods.betterwithmods.StokedCrucible.add(<primal:silver_ingot>,
		<primal:carbonate_slack>,
		[<primal:silver_dust>]);
mods.betterwithmods.StokedCrucible.add(<embers:ingotSilver>,
		<primal:carbonate_slack> * 3,
		[<primal:silver_ingot>]);
mods.betterwithmods.StokedCrucible.add(<embers:ingotLead>,
		<primal:carbonate_slack> * 3,
		[<primal:lead_ingot>]);



# ==============================================
# roots ballence
# ==============================================


<primal:carbonate_flag>.displayName = "Purifyed Magical Rock";
<primal:carbonate_ferro_flag>.displayName = "Scoured Refined Slag Iron Block";
<primal:carbonate_brick>.displayName = "Soaked Magical Brick";
<roots:mortar>.displayName = "Botanical Mortar";

recipes.remove(<roots:runeStone>);
recipes.addShaped(<roots:runeStone>,
		[[<ore:dyeBlue>, <primal:carbonate_flag>],
		[<primal:carbonate_flag>, <ore:dyeBlue>]]);
recipes.remove(<roots:runedTablet>);
recipes.remove(<roots:healingPoultice>);
mods.betterwithmods.StokedCrucible.add(<primal:carbonate_flag>, <betterwithmods:urn:0>,
		[<betterwithmods:urn:8>, <minecraft:stone>, <minecraft:stone>,
		<adobeblocks:adobe_mixture>, <betterwithmods:material:1>]);
// remove all the useless recipes.
recipes.remove(<primal:carbonate_flag_stairs>);
recipes.remove(<primal:carbonate_brick>);
recipes.remove(<primal:carbonate_ferro_brick>);
recipes.remove(<primal:carbonate_ferro_flag_stairs>);
recipes.remove(<primal:carbonate_brick_stairs>);
recipes.addShapeless(<roots:runeStone> * 3,
		[<roots:runeStoneStairs>, <roots:runeStoneStairs>, <roots:runeStoneStairs>, <roots:runeStoneStairs>]);
recipes.addShapeless(<roots:runeStone>, [<roots:runeStoneSlabItem>, <roots:runeStoneSlabItem>]);
recipes.addShaped(<roots:runedTablet>,
		[[<roots:verdantSprig>, <roots:oldRoot>, <roots:verdantSprig>],
		[<roots:verdantSprig>, <primal:carbonate_flag>, <roots:verdantSprig>],
		[<roots:verdantSprig>, <roots:verdantSprig>, <roots:verdantSprig>]]);
recipes.remove(<roots:mortar>);
recipes.addShaped(<roots:mortar>,
		[[<primal:carbonate_ferro_flag>, null, <primal:carbonate_ferro_flag>],
		[<primal:carbonate_ferro_flag>, null, <primal:carbonate_ferro_flag>],
		[null, <primal:carbonate_ferro_flag>, null]]);
mods.betterwithmods.Mill.add(<primal:carbonate_ferro_flag>,
		<plastitech:ItemSmelted_iron_dust> * 2,
		[<primal:vanadium_block>]);
furnace.addRecipe(<plastitech:ItemSmelted_iron_ingot>, <plastitech:ItemSmelted_iron_dust>, 0.5);
mods.betterwithmods.Cauldron.add(<primal:carbonate_brick>, <minecraft:bucket>,
		[<minecraft:water_bucket>, <minecraft:stonebrick>, <minecraft:dye:1> * 4,
		<minecraft:dye:11> * 4, <roots:verdantSprig> * 2]);
recipes.remove(<roots:pestle>);
recipes.addShaped(<roots:pestle>,
		[[<primal:carbonate_brick>, null, null],
		[null, <primal:carbonate_brick>, <primal:carbonate_brick>],
		[null, <primal:carbonate_brick>, <primal:carbonate_brick>]]);



# ===============================================
# moar changes and fixes
# ===============================================

recipes.remove(<charsettweaks:graphite>);
mods.betterwithmods.StokedCrucible.add(<charsettweaks:graphite>, null, [<primal:ash> * 4]);
mods.betterwithmods.Cauldron.add(<primal:copper_dust>, <primal:carbonate_slack> * 9,
		[<primal:bronze_dust>, <minecraft:ice>]);
mods.betterwithmods.StokedCrucible.add(<plastitech:ItemSlag_iron_dust>, <primal:copper_dust> * 2,
		[<primal:carbonate_slack> * 5, <betterwithmods:material:39> * 3]);
recipes.remove(<ceramics:unfired_clay:4>);
mods.betterwithmods.Crucible.add(<ceramics:unfired_clay:4> * 5, null,
		[<embers:blendCaminite>, <minecraft:dye:15> * 3]);
recipes.remove(<adobeblocks:adobe_mixture>);
mods.betterwithmods.Crucible.add(<adobeblocks:adobe_mixture> * 3, null,
		[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>, <primal:ash>, <primal:bronze_dust>]);
mods.betterwithmods.Crucible.add(<primal:terraclay_clump> * 9, null,
		[<primal:carbonate_slack> * 4, <minecraft:clay>]);


# ===============================================
# XL food mod tweaks
# ===============================================

recipes.remove(<xlfoodmod:empty_can>);
recipes.remove(<xlfoodmod:speedy_energy_drink>);
recipes.remove(<xlfoodmod:healthy_energy_drink>);
recipes.remove(<xlfoodmod:stealthy_energy_drink>);
recipes.remove(<xlfoodmod:strong_energy_drink>);
recipes.remove(<xlfoodmod:deadly_energy_drink>);
recipes.remove(<xlfoodmod:super_energy_drink>);
recipes.remove(<xlfoodmod:glass_mug>);
recipes.remove(<xlfoodmod:beer>);
recipes.remove(<xlfoodmod:coffee_cup>);
recipes.remove(<xlfoodmod:coffee>);
recipes.remove(<xlfoodmod:cheese>);
recipes.remove(<xlfoodmod:dough>);
recipes.remove(<xlfoodmod:butter>);
recipes.remove(<xlfoodmod:chips>);


# ===============================================
# "Better Questing" Tweaks
# ===============================================

recipes.remove(<bqt:bqt>);
recipes.remove(<betterquesting:submit_station>);


# ===============================================
# "mo' Creatures" tweaks (mocreatures isnt working)
# ===============================================

//<ore:plankWood>.add(<mocreatures:MoCWoodPlank:*>);
//<ore:dirt>.add(<mocreatures:MoCStone:*>);
//<ore:grass>.add(<mocreatures:MoCGrass:*>);
//<ore:treeWood>.add(<mocreatures:MoCLog:*>);
//<ore:stone>.add(<mocreatures:MoCStone:*>);



# ================================================
# "Vanilla Automation" tweaks
# ================================================

recipes.remove(<va:blockplacer>);
recipes.remove(<va:xphopper>);
recipes.remove(<va:filteredhopper>);
recipes.remove(<va:redstoneclock>);
recipes.addShapeless(<va:blockplacer>, [<betterwithmods:urn:8>, <minecraft:dispenser>, <va:pokestick>]);
recipes.addShapeless(<va:filteredhopper>, [<minecraft:hopper>, <betterwithmods:single_machine:4>, <betterwithmods:urn:8>]);
recipes.addShapeless(<va:redstoneclock>, [<minecraft:comparator>, <minecraft:redstone_torch>, <minecraft:repeater>]);

# ===============================================
# "storage drawers" tweaks
# ===============================================

recipes.remove(<storagedrawers:customDrawers>);
recipes.remove(<storagedrawers:customTrim>);




# ===============================================
# "Chisels & Bits" tweaks
# ===============================================

recipes.remove(<chiselsandbits:chisel_diamond>);
recipes.remove(<chiselsandbits:chisel_stone>);
recipes.remove(<chiselsandbits:chisel_iron>);
recipes.remove(<chiselsandbits:chisel_gold>);
recipes.addShapedMirrored(<chiselsandbits:chisel_diamond>, [[<minecraft:diamond>], [<betterwithmods:material:38>]]);


# ===============================================
# "literal ascension" tweaks
# ===============================================

recipes.remove(<literalascension:wood_carving_tool>);
recipes.remove(<literalascension:stone_carving_tool>);
recipes.remove(<literalascension:gold_carving_tool>);


# ===============================================
# "toughasnails" tweaks
# ===============================================

recipes.remove(<toughasnails:season_clock>);
recipes.addShaped(<toughasnails:season_clock>, [[null, <plastitech:ItemSlag_iron_ingot>, null], [<plastitech:ItemSlag_iron_ingot>, <minecraft:redstone>, <plastitech:ItemSlag_iron_ingot>], [null, <plastitech:ItemSlag_iron_ingot>, null]]);
<toughasnails:glowstone_torch>.displayName = "Mystical Glowstone Torch";
recipes.addShapeless(<toughasnails:glowstone_torch>,
    [<betterwithmods:material:17>, <betterwithmods:material:17>, <betterwithmods:material:17>,
    <betterwithmods:material:17>, <primal:torch_wood>, <minecraft:glowstone_dust>]);


# ===============================================
# "spice of life" tweaks
# ===============================================

recipes.remove(<spiceoflife:lunchbox>);
recipes.addShapedMirrored(<spiceoflife:lunchbox>,
    [[<plastitech:ItemSlag_iron_ingot>, null, <plastitech:ItemSlag_iron_ingot>],
    [null, <plastitech:ItemSlag_iron_ingot>, null]]);


# ===============================================
# "antique atlas" tweaks
# ===============================================

recipes.remove(<antiqueatlas:emptyAntiqueAtlas>);
recipes.addShaped(<antiqueatlas:emptyAntiqueAtlas>,
    [[<minecraft:map>, <minecraft:map>, <minecraft:map>],
    [<minecraft:map>, <minecraft:book>, <minecraft:map>],
    [<minecraft:map>, <minecraft:map>, <minecraft:map>]]);



# ================================================
# "modular routers" tweaks
# ================================================

recipes.remove(<modularrouters:blankModule>);
recipes.remove(<modularrouters:itemRouter>);
recipes.remove(<modularrouters:blankUpgrade>);
recipes.addShaped(<modularrouters:blankModule>,
    [[<betterwithmods:material:14>, <betterwithmods:material:17>, <betterwithmods:material:14>],
    [<betterwithmods:material:14>, <minecraft:redstone_block>, <betterwithmods:material:14>],
    [<betterwithmods:material:14>, <betterwithmods:material:14>, <betterwithmods:material:14>]]);
recipes.addShaped(<modularrouters:itemRouter>,
    [[<betterwithmods:aesthetic:2>, <minecraft:piston>, <betterwithmods:aesthetic:2>],
    [<betterwithmods:aesthetic:2>, <minecraft:beacon>, <betterwithmods:aesthetic:2>],
    [<betterwithmods:aesthetic:2>, <modularrouters:blankModule>, <betterwithmods:aesthetic:2>]]);
recipes.addShaped(<modularrouters:blankUpgrade>,
    [[<betterwithmods:material:14>, <minecraft:gold_ingot>, <betterwithmods:material:14>],
    [<betterwithmods:material:14>, <modularrouters:blankModule>, <betterwithmods:material:14>],
    [<betterwithmods:material:14>, <minecraft:gold_ingot>, <betterwithmods:material:14>]]);


# ================================================
# "PlastiTech" tweaks
# ================================================

recipes.remove(<plastitech:ItemDiamantine_ingot>);
mods.betterwithmods.StokedCrucible.add(<plastitech:ItemDiamantine_ingot>,
    null, [<plastitech:ItemSoul_ash>, <minecraft:iron_ingot>, <minecraft:diamond>]);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.addShapedMirrored(<minecraft:diamond_sword>,
		[[null, diamantine_ingot, null],
		[leather_strap, diamantine_ingot, leather_strap],
		[null, stick, null]]);
recipes.addShapedMirrored(<minecraft:diamond_shovel>,
		[[null, diamantine_ingot, null],
		[leather_strap, stick, leather_strap],
		[null, stick, null]]);
recipes.addShapedMirrored(<minecraft:diamond_pickaxe>,
		[[diamantine_ingot, diamantine_ingot, diamantine_ingot],
		[leather_strap, stick, leather_strap],
		[null, stick, null]]);
recipes.addShapedMirrored(<minecraft:diamond_axe>,
		[[diamantine_ingot, diamantine_ingot, leather_strap],
		[diamantine_ingot, stick, leather_strap],
		[null, stick, null]]);
recipes.addShapedMirrored(<minecraft:diamond_hoe>,
		[[diamantine_ingot, diamantine_ingot, null],
		[leather_strap, stick, leather_strap],
		[null, stick, null]]);
recipes.addShapeless(<plastitech:ItemSlag_iron_ingot>, [<primal:pigiron_ingot>]);
recipes.addShapeless(<plastitech:ItemSlag_iron_dust>, [<primal:pigiron_dust>]);
recipes.addShapeless(<plastitech:ItemSlag_iron_nugget>, [<primal:pigiron_nugget>]);
recipes.addShapeless(<plastitech:ItemSmelted_iron_dust>, [<primal:vanadium_dust>]);
recipes.addShapeless(<plastitech:ItemSmelted_iron_ingot>, [<primal:vanadium_ingot>]);
recipes.addShapeless(<plastitech:ItemSmelted_iron_nugget>, [<primal:vanadium_nugget>]);


# ================================================
# late game fixes
# ================================================

recipes.remove(<structuredcrafting:structuredCrafter>);
recipes.addShapeless(<structuredcrafting:structuredCrafter>,
		[<minecraft:crafting_table>, <hardcorewither:craftingItem:0>, <hardcorewither:craftingItem:0>,
		<minecraft:piston>]);
mods.betterwithmods.Cauldron.add(<snad:snad:0>, <betterwithmods:urn:0>,
		[<minecraft:sand>, <betterwithmods:urn:8>]);

# ================================================
# misc changes and nitpics
# ================================================

recipes.addShaped(<toughasnails:wool_chestplate>,
		[[<primal:plant_cloth>, null, <primal:plant_cloth>],
		[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>],
		[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>]]);
recipes.addShaped(<toughasnails:wool_leggings>,
		[[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>],
		[<primal:plant_cloth>, null, <primal:plant_cloth>],
		[<primal:plant_cloth>, null, <primal:plant_cloth>]]);
recipes.remove(<toughasnails:charcoal_filter>);
recipes.addShapedMirrored(<toughasnails:charcoal_filter> * 3,
		[[null, <minecraft:paper>, null],
		[null, <minecraft:coal:1>, null],
		[null, <minecraft:paper>, null]]);
recipes.remove(<minecraft:shield>);
recipes.remove(<toughasnails:jelled_slime>);
recipes.addShapeless(<minecraft:flint>,
		[<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);


//recipes.addShaped(<minecraft:lead>
//recipes.addShaped(<minecraft:bookshelf>
//recipes.addShaped(<minecraft:tnt>
//recipes.addShaped(<minecraft:cake>
//wait for railcraft update for this to be implemented.
//recipes.addShaped(<minecraft:rail>
//recipes.addShaped(<minecraft:golden_rail>
//recipes.addShaped(<minecraft:activator_rail>
//recipes.addShaped(<minecraft:detector_rail>
//recipes.addShaped(<minecraft:fishing_rod>
recipes.remove(<minecraft:painting>);
recipes.addShaped(<minecraft:painting>,
		[[<betterwithmods:material:38>, <betterwithmods:material:38>, <betterwithmods:material:38>],
		[<betterwithmods:material:38>, <minecraft:wool:*>, <betterwithmods:material:38>],
		[<betterwithmods:material:38>, <betterwithmods:material:38>, <betterwithmods:material:38>]]);
//recipes.addShaped(<minecraft:golden_apple>
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>,
		[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>],
		[<ore:cobblestone>, <betterwithmods:material:35>, <ore:cobblestone>]]);
//recipes.addShaped(<minecraft:enchanting_table>
//recipes.addShaped(<minecraft:hopper>
//recipes.addShaped(<charsetpipes:shifter>
recipes.remove(<spartanshields:shieldBasicWood>);
recipes.addShaped(<spartanshields:shieldBasicWood>,
		[[null, <primal:nether_palm_plank>, <primal:nether_palm_plank>],
		[<primal:nether_palm_plank>, <ore:stickWood>, <primal:nether_palm_plank>],
		[<primal:nether_palm_plank>, <primal:nether_palm_plank>, null]]);
recipes.remove(<spartanshields:shieldBasicStone>);
recipes.addShaped(<spartanshields:shieldBasicStone>,
		[[null, <plastitech:ItemSlag_iron_ingot>, null],
		[<plastitech:ItemSlag_iron_ingot>, <spartanshields:shieldBasicWood>, <plastitech:ItemSlag_iron_ingot>],
		[null, <plastitech:ItemSlag_iron_ingot>, null]]);
//recipes.addShaped(<spartanshields:shieldBasicIron>
//recipes.addShaped(<spartanshields:shieldBasicGold>
recipes.remove(<spartanshields:shieldBasicDiamond>);
recipes.addShaped(<spartanshields:shieldBasicDiamond>,
		[[null, <ore:gemDiamond>, null],
		[<ore:gemDiamond>, <spartanshields:shieldBasicGold>, <ore:gemDiamond>],
		[null, <ore:gemDiamond>, null]]);
recipes.addShaped(<toughasnails:wool_helmet>,
		[[<primal:plant_cloth>, <primal:plant_cloth>, <primal:plant_cloth>],
		[<primal:plant_cloth>, null, <primal:plant_cloth>]]);
recipes.addShaped(<toughasnails:wool_boots>,
		[[<primal:plant_cloth>, null, <primal:plant_cloth>],
		[<primal:plant_cloth>, null, <primal:plant_cloth>]]);
recipes.remove(<snad:snad:*>);
// Redstone Latch (remove)
recipes.remove(<betterwithmods:material:35>);
recipes.addShapeless(<betterwithmods:material:35>,
		[<minecraft:redstone>, <primal:iron_sheet>]);









//balanece embers more around better with mods.
// do silver and lead
//make caminite blend require mixed sludge. done.

//plant cloth for wind mills. done.
//pig iron-iron. done
//saw using pig iron
//progression with out iron
//couldron with polished stone
//ferro carbonite slack as byproduct of iron processing, used to be processed into more iron. done.
//knife from bwm made with pig iron. done.
//pig iron made from smelting iron ore. done
//quartz tools now pig iron tools. done
//remove dirt, grass and glass pressure plates. done.
//remove iron strand recipe. done
//make unfired proclin require a cauldron. done
