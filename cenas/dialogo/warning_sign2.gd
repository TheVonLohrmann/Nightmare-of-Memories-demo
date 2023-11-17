extends Node2D


@onready var area_sign = $Area_sign
@onready var texture = $texture

const lines: Array[String] =[
	"Acorda logo se não vai se atrasar!",
	"O cafe da manha está la na cozinha",
	"Não esquece...",
	"* ruído estático *",
	"Filho estou indo trabalhar!",
	]

func _unhandled_input(event):
	if area_sign.get_overlapping_bodies().size() > 0:
		texture.show()
		if event.is_action_pressed("interact") && !Genrente.is_message_active:
			texture.hide()
			Genrente.start_message(global_position, lines)
	else:
		texture.hide()
		if Genrente.dialog_box != null:
			Genrente.dialog_box.queue_free()
			Genrente.is_message_active = false
