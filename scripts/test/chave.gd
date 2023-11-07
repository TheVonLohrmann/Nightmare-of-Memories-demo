extends Area2D

@export var door: NodePath
@export var porta: NodePath


func _on_body_entered(_body: Node) -> void:
	get_node(door).get_node("Doortest").visible = false
	get_node(porta).queue_free()
	queue_free()
