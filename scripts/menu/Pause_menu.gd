extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("Esc"):
		visible = true
		get_tree().paused = true

func _on_resume_btn_pressed():
	get_tree().paused = false
	visible = false

func _on_quit_btn_pressed():
	get_tree().quit()
