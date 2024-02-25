--Minérios
----tutorialmod:minerio_gaburita
----tutorialmod:minerio_salada
----tutorialmod:minerio_freddy

minetest.register_node("tutorialmod:minerio_gaburita", {
	description = ("minerio gaburita"),
	tiles = {"default_stone.png^minerio_gaburita.png"},
	groups = {cracky = 3},
	--drop = "default:coal_lump",
	
})

minetest.register_node("tutorialmod:minerio_salada", {
	description = ("minerio salada"),
	tiles = {"default_stone.png^minerio_salada.png"},
	is_ground_content = true,
	groups = {cracky = 3},
	paramtype = "light",   
    light_source = 480,
	--drop = "default:coal_lump",
	
})

minetest.register_node("tutorialmod:minerio_freddy", {
	description = ("minerio freddy"),
	tiles = {"default_stone.png^minerio_freddy.png"},
	is_ground_content = true,
	groups = {cracky = 3},
	--drop = "default:coal_lump",
	
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "tutorialmod:minerio_salada",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})