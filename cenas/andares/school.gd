extends Node2D


var point_light: PointLight2D
var timer: Timer

func _ready():
	point_light = $PointLight2D
	timer = $Timer
	timer.wait_time = 0.5
	timer.start()

func _on_timer_timeout():
	if point_light.enabled:
		point_light.enabled = false
	else:
		point_light.enabled = true
	timer.start()
