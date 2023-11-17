extends StaticBody2D


func _ready():
	$DoorTexture.visible = true

func _on_key_loud_door_open_second():
	$DoorTexture.visible = false
	$DoorLock.queue_free()
