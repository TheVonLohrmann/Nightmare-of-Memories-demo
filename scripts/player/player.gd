extends CharacterBody2D

var _state_machine
var is_dead: bool = false
var _is_attacking: bool = false

@export_category("variables")
@export var _move_speed: float = 64.0

@export var _friction: float = 0.8
@export var _acceleration: float = 0.4

@export_category("Objects")
@export var _timer: Timer = null
@export var _animation_tree: AnimationTree = null
@export var _lamp_lihgt: PointLight2D


func _ready() ->void:
	_animation_tree.active = true
	_state_machine = _animation_tree["parameters/playback"]
	_lamp_lihgt.visible = false
	

func _physics_process(_delta: float) -> void:
	if is_dead:
		return
		
	_move()
	_attack()
	_animate()
	move_and_slide()
	
	
func _move() -> void:
	var _direction: Vector2 = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
	)
	
	if _direction != Vector2.ZERO:
		_animation_tree["parameters/idie/blend_position"] = _direction
		_animation_tree["parameters/walk/blend_position"] = _direction
		_animation_tree["parameters/attack/blend_position"] = _direction
		
		velocity.x = lerp(velocity.x, _direction.normalized().x * _move_speed, _acceleration)
		velocity.y = lerp(velocity.y, _direction.normalized().y * _move_speed, _acceleration)
		return
		
	velocity.x = lerp(velocity.x, _direction.normalized().x * _move_speed, _friction)
	velocity.y = lerp(velocity.y, _direction.normalized().y * _move_speed, _friction)

func _attack()->void:
	if Input.is_action_just_pressed("attack") and not _is_attacking:
		set_physics_process(false)
		_timer.start()
		_is_attacking = true

func _animate()->void:
		
	if _is_attacking:
		_state_machine.travel("attack")
		return
		
	if velocity.length() > 2:
		_state_machine.travel("walk")
		return
		
		
	_state_machine.travel("idie")
	


func _on_attack_timer_timeout()->void:
	set_physics_process(true)
	_is_attacking = false
	


func _on_attack_area_body_entered(_body) -> void:
	if _body.is_in_group("enemy"):
		_body.update_health()
	if _body.is_in_group("enemydois"):
		_body.update_health()


func _on_areaload_body_entered(body):
	get_tree().change_scene_to_file("res://cenas/load screen/LoadingScreen.tscn")


func _on_segundo_andar_body_entered(body):
	get_tree().change_scene_to_file("res://cenas/levels/level_2.tscn")


func _on_lamp_lamp_coletada():
	_lamp_lihgt.visible = true


func _on_gardenarea_body_entered(body):
	get_tree().change_scene_to_file("res://cenas/levels/level_3.tscn")
