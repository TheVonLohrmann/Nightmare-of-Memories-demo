extends Node2D

signal Lamp_coletada

var lamp_light = false

func _ready():
	pass # Replace with function body.


func _process(delta):
	if lamp_light == true:
		
		if Input.is_action_just_pressed("interact"):
			print("lampada coletada")
			emit_signal("Lamp_coletada")

func _on_area_2d_body_entered(body: PhysicsBody2D):
	if lamp_light == false:
		lamp_light = true
		$lamp.queue_free()
