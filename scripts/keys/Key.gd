extends StaticBody2D

signal Door_Open

var Keytaken = false
var In_Door_Zone = false




func _process(delta):
	if Keytaken == true:
		if In_Door_Zone == true:
			if Input.is_action_just_pressed("interact"):
				print("Door open")
				emit_signal("Door_Open")


func _on_area_2d_body_entered(body: PhysicsBody2D):
	if Keytaken == false:
		Keytaken = true
		$TextureKey.queue_free()


func _on_door_second_body_entered(body: PhysicsBody2D):
	In_Door_Zone = true
	print(In_Door_Zone)

func _on_door_second_body_exited(body):
	In_Door_Zone = false
	print(In_Door_Zone)
