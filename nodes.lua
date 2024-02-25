--[[
                  .___             
  ____   ____   __| _/____   ______
 /    \ /  _ \ / __ |/ __ \ /  ___/
|   |  (  <_> ) /_/ \  ___/ \___ \ 
|___|  /\____/\____ |\___  >____  >
     \/            \/    \/     \/ 

    Estudo sobre os blocos e suas variações e atributos
    curiosidade: foi o primeiro aquivo a ser feito
]]--

-- oque são nodes --> cubos ou qualquer coisa que ocupe o espaço de um cubo no minetest

--luz e bug
--bloco normais
minetest.register_node("tutorialmod:placademetal", {
    description = "placa de metal",
    tiles = {"tutorialmod_placadeferro.png"},
    groups = {cracky=6}
})

minetest.register_node("tutorialmod:pior", {
    description = "pior",
    tiles = {"piorqe.png"},
    groups = {cracky=3}
})

minetest.register_node("tutorialmod:renat", {
    description = "renato",
    tiles = {"renato.png"},
    groups = {cracky=3}
})

minetest.register_node("tutorialmod:end", {
    description = "end",
    tiles = {"end.png"},
    groups = {cracky=3}
})

minetest.register_node("tutorialmod:blox", {
    description = "blox",
    tiles = {"tutorialmod_roblox.png"},
    groups = {cracky=3}
})

minetest.register_node("tutorialmod:blocoazul", {
    description = "blocoAzul",
    tiles = {"tutorialmod_bloconormal.png"},
    groups = {cracky=3}
})

minetest.register_node("tutorialmod:chao", {
    description = "chao",
    tiles = {"chaoCCBJ.png"},
    groups = {cracky=3}
})

minetest.register_node("tutorialmod:parede", {
    description = "parede ",
    tiles = {"paredeCCBJ.png"},
    groups = {cracky=3}
})

minetest.register_node("tutorialmod:teto", {
    description = "teto ",
    tiles = {"tetoCCBJ.png"},
    groups = {cracky=3}
})

--GRUPOS
-- crumbly
    --terra, areia
--cracky
    --coisas duras, mas racháveis, como pedra.
--snappy
    --algo que pode ser cortado usando coisas como tesoura, tesoura, cortadores de parafusos e similares, por exemplo, folhas, pequenas plantas, fios, chapas de metal
--choppy
    --algo que pode ser cortado por um machado; por exemplo, árvores, tábuas de madeira
--fleshy
    --Seres vivos como animais e o jogador. Isso pode implicar alguns efeitos do sangue ao bater.
--explody
    --destruido por explosoes
--oddly_breakable_by_hand
    --Pode ser adicionado a nós para serem quebrados a mão


minetest.register_node("tutorialmod:vidro", {
    description = "vidro",
    drawtype="glasslike",
    tiles = {"tutorialmod_vidro.png"},
    paramtype = "light",--Alguns blocos ficam escuros por motivos desconhecidos adicionar esse paramtype resolve
    sunlight_propagates = true,

    groups = {cracky=3}
})

--allfaces
minetest.register_node("tutorialmod:folhas", {
    description = "folhas",
    drawtype="allfaces",
    tiles = {"tutorialmod_folhas.png"},
    paramtype = "light",
    sunlight_propagates = true,
    groups = {cracky=3}
})

--firelike
minetest.register_node("tutorialmod:fogo", {
    description = "fogo",
    drawtype="firelike",
    paramtype = "light",  
    sunlight_propagates = true,
    tiles = {"tutorialmod_fogo.png"},
    groups = {cracky=3},
    light_source = 13,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	floodable = true,
	damage_per_second = 4,
	groups = {igniter = 2, dig_immediate = 3, fire = 1},
	drop = "",
})

--plantlike
minetest.register_node("tutorialmod:flor", {
    description = "flor",
    drawtype = "plantlike",
    paramtype = "light",  
    sunlight_propagates = true,
    tiles = {"tutorialmod_flor.png"},
    groups = {cracky=3}
})

--SETAS
minetest.register_node("tutorialmod:setacima", {
    description = "seta pra cima",
    drawtype = "signlike", 
    tiles = {"tutorialmod_setacima.png"},
    paramtype = "light",
    sunlight_propagates = true,
    paramtype2 = "wallmounted",
    selection_box = {
        type = "wallmounted",
    },
    groups = {cracky=1}

})

minetest.register_node("tutorialmod:setabaixo", {
    description = "seta pra baixo",
    drawtype = "signlike", 
    tiles = {"tutorialmod_setabaixo.png"},
    paramtype = "light",
    sunlight_propagates = true,
    paramtype2 = "wallmounted",
    selection_box = {
        type = "wallmounted",
    },
    groups = {cracky=1}

})

minetest.register_node("tutorialmod:setadir", {
    description = "seta pra direita",
    drawtype = "signlike", 
    tiles = {"tutorialmod_setadir.png"},
    paramtype = "light",
   
    paramtype2 = "wallmounted",
    selection_box = {
        type = "wallmounted",
    },
    groups = {cracky=1}

})

minetest.register_node("tutorialmod:setaesq", {
    description = "seta pra esquerda",
    drawtype = "signlike", 
    tiles = {"tutorialmod_setaesq.png"},
    paramtype = "light",
   
    paramtype2 = "wallmounted",
    selection_box = {
        type = "wallmounted",
    },
    groups = {cracky=1}

})

--torchlikes
minetest.register_node("tutorialmod:tocha", {
    description = "tocha",
    drawtype = "torchlike",
    paramtype = "light",   
    light_source = 480,
    tiles = {"tutorialmod_tocha.png"},
    groups = {cracky=3}
})

--nodebox
-- Node Box Editor, version 0.9.0
-- Namespace: test

minetest.register_node("tutorialmod:arbusto", {
    description = "arbusto",
	tiles = {
		"tutorialmod_arbusto.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.0625, 0.5}, -- NodeBox2
			{-0.375, -0.5, -0.375, 0.375, 0.1875, 0.3125}, -- NodeBox3
			{-0.25, -0.5, -0.25, 0.25, 0.375, 0.1875}, -- NodeBox4
		}
	}
})

--PARAMTYPES 
--param1 e param2 são números inteiros de 8 bits que variam de 0 a 255. O mecanismo usa para certas funções automatizadas.
--A função de param1 é determinado por paramtype

minetest.register_node("tutorialmod:macaco", {
    description="macaco blende",
    drawtype = "mesh",
    paramtype = "light",
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},

    mesh = "macaco.obj",
    tiles = "tutorialmod_madeiralados.png"
   
})

minetest.register_node("tutorialmod:dado", {
    description = "dado",
    tiles = {
        "dado1.png",    -- y+
        "dado2.png",  -- y-
        "dado3.png", -- x+
        "dado4.png",  -- x-
        "dado5.png",  -- z+
        "dado6.png", -- z-
    },
    paramtype = "light",
    sunlight_propagates = true,
    paramtype2 = "facedir",
    groups = {explody},

})

--retorno de chamada
-- todo: espinhos, lava, killbloc invisivel, trampolin, fogo espalhar

minetest.register_node("tutorialmod:espinhos", {
	description = "espinhos",
	tiles = {"tutorialmod_espinhos.png"},
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	drawtype = "plantlike",
	groups = { attached_node = 1, creative_breakable = 1 },
	damage_per_second = 1,
	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.1, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.1, 0.5}
	}
})

minetest.register_node("tutorialmod:killblock", {
	description = "morte invisivel",
	tiles = {"tutorialmod_espinhos.png"},
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	drawtype = "airlike",
	groups = { attached_node = 1, creative_breakable = 1 },
	damage_per_second = 10,
})

minetest.register_node("tutorialmod:trampolim", {
    description = "trampolim",

    tiles = {
        "tutorialmod_trampolimcima.png",    -- y+
        "tutorialmod_trampolimcima.png",  -- y-
        "tutorialmod_trampolinlados.png", -- x+
        "tutorialmod_trampolinlados.png",  -- x-
        "tutorialmod_trampolinlados.png",  -- z+
        "tutorialmod_trampolinlados.png", -- z-
    },
    paramtype = "light",
    sunlight_propagates = true,

    groups = {cracky = 3, oddly_breakable_by_hand = 1, fall_damage_add_percent = -100, bouncy = 120},

})

minetest.register_abm({
		nodenames = {"group:flammable"},
		neighbors = {"tutorialmod:fogo"},
		interval = 0.01,
		chance = 1,
		catch_up = false,
		action = function(pos)
			local p = minetest.find_node_near(pos, 1, {"air"})
			if p then
				minetest.set_node(p, {name = "tutorialmod:fogo"})
			end
		end
})

minetest.register_abm({
		nodenames = {"tutorialmod:fogo"},
		neighbors = "group:flammable",
		interval = 1,
		chance = 12,
		catch_up = false,
		action = function(pos)
			local p = minetest.find_node_near(pos, 1, {"group:flammable"})
			if not p then
				return
			end
			local flammable_node = minetest.get_node(p)
			local def = minetest.registered_nodes[flammable_node.name]
			if def.on_burn then
				def.on_burn(p)
			else
				minetest.remove_node(p)
				minetest.check_for_falling(p)
			end
		end
	})

minetest.register_node("tutorialmod:ccbjplan",{
    description="boratumauma",
    drawtype="mesh",
    mesh="ccbj.obj",
    visual_scale = 0.5,
    tiles={"plantaCCBJ.png"},
    paramtype = "light",
    sunlight_propagates = true,
    groups = {cracky=3}

})

minetest.register_node("tutorialmod:ccbjplan2",{
    description="boratumauma2",
    --drawtype="mesh",
    --mesh="ccbj.obj",
    visual_scale = 0.5,
    tiles={"plantaCCBJ.png"},
    paramtype = "light",
    sunlight_propagates = true,
    groups = {cracky=3}

})

--dialog
local tm = minetest.get_modpath("tutorialmod")
local MP = minetest.get_modpath("dialog")


if MP and minetest.is_singleplayer() or minetest.settings:get_bool("dialog_register_example", false) then
    dofile(MP .. "/api.lua")
	dofile(tm .. "/dialog.lua")
end

--todo: ferramentas de gaburita e armadura

--NPCS
----tutorialmod:ccbjmen
----tutorialmod:master

minetest.register_node("tutorialmod:ccbjmen",{
    description="ccbbjmen",
    drawtype="mesh",
    mesh="bodymodel.obj",
    tiles={"ccbjmen.png"},
    paramtype = "light",
    paramtype2 = "4dir",
    collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
	},
    sunlight_propagates = true,
    groups = {cracky=3}
    

})

minetest.register_node("tutorialmod:master",{
    description="master",
    drawtype="mesh",
    mesh="bodymodel.obj",
    tiles={"master.png"},
    paramtype = "light",
    paramtype2 = "4dir",
    collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
	},
    sunlight_propagates = true,
    groups = {cracky=3}
    

})

--Gatos e animais
---tutorialmod:gato
---tutorialmod:gatopreto

minetest.register_node("tutorialmod:gato", {
    description="gato branco",
    drawtype = "mesh",
    paramtype = "light",
    visual_scale = 0.5,
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},

    mesh = "gatov1.obj",
    tiles = {"gatov1.png"}
   
})


minetest.register_node("tutorialmod:gatopreto", {
    description="gato preto",
    drawtype = "mesh",
    paramtype = "light",
    visual_scale = 0.5,
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},

    mesh = "gatov2.obj",
    tiles = {"gatov2.png"}
   
})

--Decoraçoes
---tutorialmod:mesape
---tutorialmod:mesameio
---tutorialmod:cadeiraplastico
---tutorialmod:lixeira

minetest.register_node("tutorialmod:mesape", {
    description="mesa1",
    drawtype = "mesh",
    paramtype = "light",
    visual_scale = 0.5,
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},

    mesh = "mesap1.obj",
    tiles = {"mesap1.png"}
   
})

minetest.register_node("tutorialmod:mesameio", {
    description="mesa meio",
    drawtype = "mesh",
    paramtype = "light",
    visual_scale = 0.5,
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},

    mesh = "mesameio.obj",
    tiles = {"mesameio.png"}
   
})

minetest.register_node("tutorialmod:cadeiraplastico", {
    description="cadeira de plastico",
    drawtype = "mesh",
    paramtype = "light",
    visual_scale = 1.0,
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},

    mesh = "cadeiraplastico.obj",
    tiles = {"cadeiraplastico.png"}
   
})

minetest.register_node("tutorialmod:lixeira", {
    description="lixeira",
    drawtype = "mesh",
    paramtype = "light",
    visual_scale = 0.85,
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},

    mesh = "lixeira.obj",
    tiles = {"lixeira.png"}
   
})

minetest.register_node("tutorialmod:calos", {
    description="calos",
    drawtype = "mesh",
    paramtype = "light",
    visual_scale = 0.5,
    sunlight_propagates = true,
    paramtype2 = "4dir",
    groups={oddly_breakable_by_hand=1},
    collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.0, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.0, 0.5}
	},

    mesh = "calos.obj",
    tiles = {"calos.png"}
   
})


