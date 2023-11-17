extends Control



func _on_button_pressed():
	var _conf:bool = get_tree().change_scene_to_file("res://cenas/menu/menu.tscn")

func _on_zero_pressed():
	var _open_channel: bool = OS.shell_open("https://github.com/TheVonLohrmann")


func _on_judas_pressed():
	var _open_channel_dois: bool = OS.shell_open("https://github.com/jud-as")


func _on_carvas_pressed():
	var _open_channel_tres: bool = OS.shell_open("https://github.com/MCS-Lucas")


func _on_senhormorango_pressed():
	var _open_channel_quatro: bool = OS.shell_open("https://github.com/DuDuCoeio")
