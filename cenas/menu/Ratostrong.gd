extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite

func _physics_process(_delta: float) -> void:
	_animate()
	
func _animate()->void:
	_animated_sprite.play("dança do rato")
	
