extends StaticBody2D

signal Lamp_coletada
var Lamp = false

func _process(delta):
	if Lamp == true:
		if Input.is_action_just_pressed("interact"):
			emit_signal("Lamp_coletada")
			print("lampada coletada")
			$lamp.visible = false

func _on_lamp_area_body_entered(body: PhysicsBody2D):
	if Lamp == false:
		Lamp = true
