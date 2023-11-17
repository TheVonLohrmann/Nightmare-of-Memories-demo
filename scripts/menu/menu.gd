extends Control


func _ready()-> void:
	pass
			

func _on_play_pressed():
	var _game:bool = get_tree().change_scene_to_file("res://cenas/levels/level.tscn")


func _on_controles_pressed():
	var _conf:bool = get_tree().change_scene_to_file("res://cenas/menu/control.tscn")


func _on_sair_pressed():
	get_tree().quit()


func _on_strongmouse_pressed():
	var _Devs:bool = get_tree().change_scene_to_file("res://cenas/menu/strongmouse.tscn")
