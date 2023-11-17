extends StaticBody2D


func _ready():
	$DoorTexure.visible = true


func _on_key_door_open():
	$DoorTexure.visible = false
	$DoorLock.queue_free()
