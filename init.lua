local S = minetest.get_translator("purple_ore")

minetest.register_node("purple_ore:stone_with_purple", {
	description = S("Purple Ore"),
	tiles = {"default_stone.png^(default_mineral_diamond.png^[colorize:purple:211)"},
	groups = {cracky = 1},
	drop = "purple_ore:purple_lump",
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("purple_ore:purple_lump", {
	description = S("Purple Lump"),
	inventory_image = "default_tin_lump.png^[colorize:purple:211"
})
minetest.register_craftitem("purple_ore:purple_ingot", {
	description = S("Purple Ingot"),
	inventory_image = "default_tin_ingot.png^[colorize:purple:211"
})
minetest.register_node("purple_ore:purpleblock", {
	description = S("Purple Block"),
	tiles = {"default_tin_block.png^[colorize:purple:211"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
})
minetest.register_craft({
	type = "cooking",
	recipe = "purple_ore:purple_lump",
	output = "purple_ore:purple_ingot"
})
minetest.register_craft({
	output = "purple_ore:purpleblock",
	recipe = {
		{"purple_ore:purple_ingot", "purple_ore:purple_ingot", "purple_ore:purple_ingot"},
		{"purple_ore:purple_ingot", "purple_ore:purple_ingot", "purple_ore:purple_ingot"},
		{"purple_ore:purple_ingot", "purple_ore:purple_ingot", "purple_ore:purple_ingot"},
	}
})
minetest.register_craft({
	output = "purple_ore:purple_ingot 9",
	recipe = {
		{"purple_ore:purpleblock"},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "purple_ore:stone_with_purple",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 9,
	clust_size     = 3,
	height_max     = 31000,
	height_min     = 190,
})
if minetest.get_modpath("cloudlands") then
	minetest.register_decoration({
		deco_type = 'schematic',
		place_on = {"group:sand", "group:stone", "group:soil", "default:snowblock"},
		sidelen = 16,
		fill_ratio = 0.0025,
		biomes = {"tundra", "taiga", "snowy_grassland", "savanna", "sandstone_desert", "rainforest", "icesheet", "grassland", "desert", "deciduous_forest", "coniferous_forest", "cold_desert"},
		y_max = 31000,
		y_min = 190,
		schematic = minetest.get_modpath("purple_ore") .. "/schematics/node.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
	if minetest.get_modpath("everness") then
		minetest.register_decoration({
			deco_type = 'schematic',
			place_on = {"group:sand", "group:stone", "group:soil", "default:snowblock"},
			sidelen = 16,
			fill_ratio = 0.0025,
			biomes = {"everness:mineral_waters", "everness:frosted_icesheet", "everness:forsaken_tundra", "everness:forsaken_desert", "everness:cursed_lands", "everness:crystal_forest", "everness:coral_forest", "everness:bamboo_forest"},
			y_max = 31000,
			y_min = 190,
			schematic = minetest.get_modpath("purple_ore") .. "/schematics/node.mts",
			flags = "place_center_x, place_center_z",
			rotation = "random",
		})
	end
end
if minetest.get_modpath("sum_airship") then
	minetest.clear_craft({output = "sum_airship:boat"})
	minetest.register_craft({
		output = "sum_airship:boat",
		recipe = {
		{"sum_airship:canvas_roll","sum_airship:canvas_roll","sum_airship:canvas_roll",},
		{"farming:string", "purple_ore:purpleblock", "farming:string"},
		{"farming:string", "sum_airship:hull", "farming:string"}
    },

	})
end
if minetest.get_modpath("nether") and minetest.get_modpath("x_obsidianmese") then
	minetest.clear_craft({output = "x_obsidianmese:sword"})
	minetest.register_craft({
		output = "x_obsidianmese:sword",
		recipe = {
			{ "", "nether:nether_ingot", "" },
			{ "purple_ore:purpleblock", "nether:nether_ingot", "purple_ore:purpleblock" },
			{ "", "purple_ore:purpleblock", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:sword_engraved"})
	minetest.register_craft({
		output = "x_obsidianmese:sword_engraved",
		recipe = {
			{ "", "nether:nether_ingot", "" },
			{ "", "nether:nether_ingot", "" },
			{ "", "purple_ore:purpleblock", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:pick"})
	minetest.register_craft({
		output = "x_obsidianmese:pick",
		recipe = {
			{ "nether:nether_ingot", "nether:nether_ingot", "nether:nether_ingot" },
			{ "", "purple_ore:purpleblock", "" },
			{ "", "purple_ore:purpleblock", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:shovel"})
	minetest.register_craft({
		output = "x_obsidianmese:shovel",
		recipe = {
			{ "nether:nether_ingot" },
			{ "purple_ore:purpleblock" },
			{ "purple_ore:purpleblock" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:axe"})
	minetest.register_craft({
		output = "x_obsidianmese:axe",
		recipe = {
			{ "nether:nether_ingot", "nether:nether_ingot" },
			{ "nether:nether_ingot", "purple_ore:purpleblock" },
			{ "", "purple_ore:purpleblock" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:hoe"})
	minetest.register_craft({
		output = "x_obsidianmese:hoe",
		recipe = {
			{ "nether:nether_ingot", "nether:nether_ingot", '' },
			{ "", "purple_ore:purpleblock", "" },
			{ "", "purple_ore:purpleblock", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:pick_engraved"})
	minetest.register_craft({
		output = "x_obsidianmese:pick_engraved",
		recipe = {
			{ "nether:nether_ingot", 'default:diamond', "nether:nether_ingot" },
			{ "", "purple_ore:purpleblock", "" },
			{ "", "purple_ore:purpleblock", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:mese_apple"})
	minetest.register_craft({
		output = "x_obsidianmese:mese_apple 4",
		recipe = {
			{ "", 'default:apple', "" },
			{ "default:apple", "purple_ore:purpleblock", "default:apple" },
			{ "", 'default:apple', "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:chest"})
	minetest.register_craft({
		output = "x_obsidianmese:chest",
		recipe = {
			{ "default:obsidian", "default:obsidian", "default:obsidian" },
			{ "default:obsidian", "purple_ore:purpleblock", "default:obsidian" },
			{ "default:obsidian", "default:obsidian", "default:obsidian" }
		}
	})
elseif minetest.get_modpath("x_obsidianmese") then
	minetest.clear_craft({output = "x_obsidianmese:chest"})
	minetest.register_craft({
		output = "x_obsidianmese:chest",
		recipe = {
			{ "default:obsidian", "default:obsidian", "default:obsidian" },
			{ "default:obsidian", "purple_ore:purpleblock", "default:obsidian" },
			{ "default:obsidian", "default:obsidian", "default:obsidian" }
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:sword"})
	minetest.register_craft({
		output = "x_obsidianmese:sword",
		recipe = {
			{ "", "default:mese_crystal", "" },
			{ "purple_ore:purple_ingot", "default:mese_crystal", "purple_ore:purple_ingot" },
			{ "", "purple_ore:purple_ingot", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:sword_engraved"})
	minetest.register_craft({
		output = "x_obsidianmese:sword_engraved",
		recipe = {
			{ "", 'default:diamond', "" },
			{ "purple_ore:purple_ingot", "default:diamond", "purple_ore:purple_ingot" },
			{ "", "purple_ore:purple_ingot", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:pick"})
	minetest.register_craft({
		output = "x_obsidianmese:pick",
		recipe = {
			{ "default:mese_crystal", "default:mese_crystal", "default:mese_crystal" },
			{ "", "purple_ore:purple_ingot", "" },
			{ "", "purple_ore:purple_ingot", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:shovel"})
	minetest.register_craft({
		output = "x_obsidianmese:shovel",
		recipe = {
			{ "default:mese_crystal" },
			{ "purple_ore:purple_ingot" },
			{ "purple_ore:purple_ingot" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:axe"})
	minetest.register_craft({
		output = "x_obsidianmese:axe",
		recipe = {
			{ "default:mese_crystal", "default:mese_crystal" },
			{ "default:mese_crystal", "purple_ore:purple_ingot" },
			{ "", "purple_ore:purple_ingot" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:hoe"})
	minetest.register_craft({
		output = "x_obsidianmese:hoe",
		recipe = {
			{ "default:mese_crystal", "default:mese_crystal", "" },
			{ "", "purple_ore:purple_ingot", "" },
			{ "", "purple_ore:purple_ingot", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:pick_engraved"})
	minetest.register_craft({
		output = "x_obsidianmese:pick_engraved",
		recipe = {
			{ "default:diamond", "default:diamond", "default:diamond" },
			{ "", "purple_ore:purple_ingot", "" },
			{ "", "purple_ore:purple_ingot", "" },
		}
	})
	minetest.clear_craft({output = "x_obsidianmese:mese_apple"})
	minetest.register_craft({
		output = "x_obsidianmese:mese_apple 4",
		recipe = {
			{ "", 'default:apple', "" },
			{ "default:apple", "purple_ore:purpleblock", "default:apple" },
			{ "", 'default:apple', "" },
		}
	})
end
