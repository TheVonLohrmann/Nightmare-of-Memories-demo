extends Node2D

const _DIALOG_SCREEN: PackedScene = preload("res://cenas/dialogo/dialog_screem.tscn")
var _dialog_data: Dictionary = {
	0: {
		"faceset": "res://assets/characters/Mae-0003.png",
		"dialog": "Filho, você está acordado?",
		"title": "Mãe"
	},
	
	1: {
		"faceset": "res://assets/characters/Mae-0003.png",
		"dialog": "Meu amor, você precisa levantar agora dessa cama, ou vai se atrasar para a escola.",
		"title": "Mãe"
	},
	
	2: {
		"faceset": "res://assets/characters/Mae-0003.png",
		"dialog": "Seu café da manhã já está na cozinha. Não se esqueça...",
		"title": "Mãe"
	},
	
	3: {
		"faceset": "res://assets/characters/Mae-0003.png",
		"dialog": "* A ligação fica cheia de interferência, obscurecendo as palavras da mãe. *",
		"title": "Mãe"
	},
	
	4: {
		"faceset": "res://assets/characters/Mae-0003.png",
		"dialog": "...cuidado... não esqueça",
		"title": "Mãe"
	},
	
	5: {
		"faceset": "res://assets/characters/Mae-0003.png",
		"dialog": "* A interferência diminuí, tornando as palavras mais fáceis de entender.*",
		"title": "Mãe"
	},
	
	6: {
		"faceset": "res://assets/characters/Mae-0003.png",
		"dialog": "Eu já estou indo para o trabalho. Meu amor, eu te amo muito.",
		"title": "Mãe"
	},
}

@export_category("Objects")
@export var _hud: CanvasLayer = null
@onready var area_sign = $mae_area
@onready var texture = $texturemae


func _process(_delta: float)->void:
	if area_sign.get_overlapping_bodies().size() > 0:
		
		if Input.is_action_just_pressed("interact"):
			var _new_dialog: DialogScreem = _DIALOG_SCREEN.instantiate()
			_new_dialog.data = _dialog_data
			_hud.add_child(_new_dialog)
