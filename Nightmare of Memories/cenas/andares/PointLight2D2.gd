extends PointLight2D

var min_intensity: float = 0.5
var max_intensity: float = 1.0
var intensity: float  # Variável para armazenar a intensidade da luz
var blink_duration: float = 0.5
var time_passed: float = 0.0

func _process(delta: float) -> void:
	time_passed += delta

	if time_passed >= blink_duration:
		time_passed = 0.0

	# Use a interpolação linear (Lerp) para suavemente transicionar entre as intensidades
	intensity = lerp(min_intensity, max_intensity, time_passed / blink_duration)
