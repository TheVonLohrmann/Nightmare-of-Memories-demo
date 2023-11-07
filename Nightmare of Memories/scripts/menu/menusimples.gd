extends Control
@export_category("Objects")
@export var _button: Button 

func _ready():
	_button.pressed.connect(self._button_pressed)
	add_child(_button)

func _button_pressed():
	match _button.name:
		"Button":
			var _game:bool = get_tree().change_scene_to_file("res://level.tscn")

