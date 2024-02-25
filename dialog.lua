--[[
    .___.__       .__                 
  __| _/|__|____  |  |   ____   ____  
 / __ | |  \__  \ |  |  /  _ \ / ___\ 
/ /_/ | |  |/ __ \|  |_(  <_> ) /_/  >
\____ | |__(____  /____/\____/\___  / 
     \/         \/           /_____/ 
]]--
--Arquivo destinado para o estudo e teste da criação de dialogos, ate o momento usando a API do mod Dialog e ativando dialogos por comandos de chat
--Fase de teste; esta escondido do jogador; feito com base exemplos do mod
----COMO FUNCIONA?:
------registra-se um interlocutor/personagem/falante por meio do comando "register_speaker" apos isso esse personagem pode ser usado em linhas de dialogos usando o comando "register_dialogtree" como exemplificado na linha 38


local S = minetest.get_translator("dialog")

local CCBJmen = "dialog:CCBJmen"
local player = "dialog:player"
local sol = "dialog:sol"
--pla,hpl,sys

dialog.register_speaker(player, {
	name = S("Player"),
	portrait = "dialog2.png",
})

dialog.register_speaker(sol, {
	name = S("sol"),
	portrait = "dialog3.png",
})

dialog.register_speaker(CCBJmen, {
	name = "CCBJmen",
	portrait = "dialog1.png",
})

dialog.register_dialogtree("dialog:conversa", {
	speeches = {
		start = {
			text = S("bem vindo ao CCBJcraft!!!\n"),
			speaker = CCBJmen,
			options = {{ action = "speech", next_speech = "step2" }},
		},
		step2 = {
			text = S("man tu se ajeita viu"),
			speaker = sol,
			options = function()
				return {{ action = "speech", next_speech = "step3" }}
			end,
		},
		step3 = {
			text = S("Voce gostaria de perguntar algo sobre o CCBJ?"),
			speaker = CCBJmen,
			options = {
				{ action = "speech", next_speech = "step4_opt1", text = S("Aonde fica a ilha digital?") },
				{ action = "speech", next_speech = "step4_opt2", text = S("aaonde fica a sala da musica?") },
				{ action = "speech", dialogtree_id = "dialog:example_2", text = S("aonde posso conseguir o mapa o CCBJ?") },
				{ action = "quit", text = S("não. tchau") },
			}
		},
		step4_opt1 = {
			text = S("nsei n faço ideia"),
			speaker = player,
			options = {
				{ action = "speech", next_speech = "step3" }
			},

		},
		step4_opt2 = {
			text = S("Prato. "),
			speaker = HLP,
			options = {{ action = "speech", next_speech = "step4_opt2_2" }},
		},
		step4_opt2_2 = {
			text = S("BRUH."),
			speaker = PLA,
			options = {{ action = "speech", next_speech = "step3" }},
		},
	}
})

minetest.register_chatcommand("conversar", {
	description = ("abrir dialogo."),
	func = function(name,param)
		glitch_dialog.show_dialogtree(minetest.get_player_by_name(name),"dialog:conversa")
	end
})


--NPCS

function iniciar(name,param)
	glitch_dialog.show_dialogtree(minetest.get_player_by_name(name),"dialog:conversa")
end


