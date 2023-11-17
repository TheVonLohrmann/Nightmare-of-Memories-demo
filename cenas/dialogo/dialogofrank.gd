extends Node2D

const _DIALOG_SCREEN: PackedScene = preload("res://cenas/dialogo/dialog_screem.tscn")
var _dialog_data: Dictionary = {
	0: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Ei, garoto! Você não acha isso tudo bizarro?",
		"title": "Frank"
	},
	
	1: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Fala sério, você está falando com um peixe!",
		"title": "Frank"
	},
	
	2: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": " É... bem, eu estava tentando não pensar muito nisso.",
		"title": "Garoto"
	},
	
	3: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Não pensar muito nisso? Você deveria estar surtando!",
		"title": "Frank"
	},
	
	4: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "Eu sei, Frank. Tudo isso é muito estranho.",
		"title": "Garoto"
	},
	
	5: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Ouvi o telefone tocar lá embaixo. Talvez seja sua mãe.",
		"title": "Frank"
	},
	
	6: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "Sério? Tenho que descer e atender então.",
		"title": "Garoto"
	},
	
	7: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Cuidado aí. Ouvi uns barulhos estranhos vindo de fora do quarto. Parece que tem algo muito errado acontecendo.",
		"title": "Frank"
	},
	
	8: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "Barulhos estranhos? Como assim?",
		"title": "Garoto"
	},
	
	9: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Sei lá. Coisas que eu nunca ouvi antes!",
		"title": "Frank"
	},
	
	10: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": " Ei, pega aquela lanterna ali. Vai te ajudar a ver melhor.",
		"title": "Frank"
	},
	
	11: {
		"faceset": "res://assets/characters/Garoto-0001.png",
		"dialog": "Certo, Frank. Espero que isso não seja tão assustador quanto parece.",
		"title": "Garoto"
	},
	
	12: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Claro, claro. Agora vá e tome cuidado.",
		"title": "Frank"
	},
	
	13: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Não quero ser o peixe que tem que explicar para a sua mãe como você virou o jantar de algum monstro noturno.",
		"title": "Frank"
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
