extends Control


func _ready()-> void:
	pass



func _on_button_pressed():
	var _conf:bool = get_tree().change_scene_to_file("res://cenas/menu/menu.tscn")
