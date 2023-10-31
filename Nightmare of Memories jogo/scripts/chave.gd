extends Area2D


@export var door: NodePath


func _on_body_entered(body: Node)->void:
	queue_free()
