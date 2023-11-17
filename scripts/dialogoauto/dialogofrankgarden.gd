extends Node2D

const _DIALOG_SCREEN: PackedScene = preload("res://cenas/dialogo/dialog_screem.tscn")
var _dialog_data: Dictionary = {
	0: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Ei, O que diabos está acontecendo aqui?",
		"title": "Frank"
	},
	
	1: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Deveria ser dia, mas parece que estamos no meio da noite. Isso é bizarro.",
		"title": "Frank"
	},
	
	2: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "É como se algo estivesse errado.",
		"title": "Garoto"
	},
	
	3: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Bem, seja lá o que for, você precisa ir para a escola.",
		"title": "Frank"
	},
	
	4: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Ei, olhe para o céu! Não é hora de estar escuro desse jeito.",
		"title": "Frank"
	},
	
	5: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "Frank. Mas o que eu faço? Parece tão perigoso lá fora.",
		"title": "Garoto"
	},
	
	6: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "O caminho pela rua? Esqueça. ",
		"title": "Frank"
	},
	
	7: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Parece mais um caminho para o inferno do que para a escola. ",
		"title": "Frank"
	},
	
	8: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Você deveria ir pela passagem da lateral do jardim. ",
		"title": "Frank"
	},
	
	9: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "É mais seguro, pelo menos é o que minha intuição de peixe me diz.",
		"title": "Frank"
	},
	
	10: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "Tudo bem, Frank. Eu vou pela passagem lateral. Parece uma boa ideia.",
		"title": "Garoto"
	},
	
	11: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Claro que é uma boa ideia. Quem mais aqui entende alguma coisa? ",
		"title": "Frank"
	},
	
	12: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Agora vá, e não seja pego por nenhum desses monstros ou o que quer que esteja por aí.",
		"title": "Frank"
	},
	
	13: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "Vou tentar, Frank. Vejo você mais tarde.",
		"title": "Garoto"
	},
}

@export_category("Objects")
@export var _hud: CanvasLayer = null
@onready var area_sign = $frankarea
@onready var texture = $texture


func _process(_delta: float)->void:
	if area_sign.get_overlapping_bodies().size() > 0:
		
		if Input.is_action_just_pressed("interact"):
			var _new_dialog: DialogScreem = _DIALOG_SCREEN.instantiate()
			_new_dialog.data = _dialog_data
			_hud.add_child(_new_dialog)
