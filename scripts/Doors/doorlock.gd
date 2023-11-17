extends Node2D

const _DIALOG_SCREEN: PackedScene = preload("res://cenas/dialogo/dialog_screem.tscn")
var _dialog_data: Dictionary = {
	0: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Então, não tem como sair com a porta trancada",
		"title": "Frank"
	},
	
	1: {
		"faceset": "res://assets/characters/frank-0001.png",
		"dialog": "Vai procurar uma chave, idiota!",
		"title": "Frank"
	},
	
}

@export_category("Objects")
@export var _hud: CanvasLayer = null
@onready var area_sign = $Door_area
@onready var texture = $texture
var Doorclouse = false


func _process(_delta: float)->void:
	if area_sign.get_overlapping_bodies().size() > 0:
		if Input.is_action_just_pressed("interact") and Doorclouse == false:
			var _new_dialog: DialogScreem = _DIALOG_SCREEN.instantiate()
			_new_dialog.data = _dialog_data
			_hud.add_child(_new_dialog)

func _on_key_door_open():
	Doorclouse = true
	
