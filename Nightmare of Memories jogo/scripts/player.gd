extends CharacterBody2D

@onready var animation: AnimationPlayer = get_node("AnimationPlayer")
@onready var sprite: Sprite2D = get_node("Sprite2D")
@export_category("Variables")
@export var _move_speed: float = 90.0
@export var _friction: float = 0.8
@export var _acceleration: float = 0.4

func _physics_process(_delta: float) -> void:
	_move()
	verify_position()
	_animate()

func _animate()->void:
	if velocity != Vector2.ZERO:
		animation.play("corrida")
	else :
		animation.play("parado")

func verify_position()->void:
	if velocity.x > 0:
		sprite.flip_h = false
	elif velocity.x<0:
		sprite.flip_h = true
		

func _move() -> void:
	var _direction: Vector2 = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
	)

	velocity.x = lerp(velocity.x, _direction.normalized().x * _move_speed, _acceleration)
	velocity.y = lerp(velocity.y, _direction.normalized().y * _move_speed, _acceleration)
	velocity = _direction.normalized() * _move_speed
	move_and_slide()

