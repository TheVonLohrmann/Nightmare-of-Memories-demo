extends Node2D

@onready var textura_call = $textura_call
@onready var area_call = $Area_call

const lines: Array[String] =[
	"Filho vamos acorda!",
	"Esta na hora de ir para a aula",
	"O café da manha esta lá embaixo",
	"Já vou para o trabalho!",
	"Coma depois vá para a aula!!!",
	]

func _unhandled_input(event):
	if area_call.get_overlapping_bodies().size() > 0:
		textura_call.show()
		if event.is_action_pressed("interact") && !Genrente.is_message_active:
			textura_call.hide()
			Genrente.start_message(global_position, lines)
	else:
		textura_call.hide()
		if Genrente.dialog_box != null:
			Genrente.dialog_box.queue_free()
			Genrente.is_message_active = false
