extends Area2D

@export var speed = 25
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Player")
	screen_size = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.animation = "run"
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.animation = "idle"
		$AnimatedSprite2D.play()
		
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	pass





func _on_area_2d_area_entered(area):
	get_tree().change_scene_to_file("res://cenas/andares/school.tscn")
	pass # Replace with function body.
