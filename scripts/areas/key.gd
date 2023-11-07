extends Area2D

@export var doortex: NodePath
@export var doorphis: NodePath


func _on_body_entered(body: Node) -> void:
	get_node(doortex).visible = false
	get_node(doorphis).queue_free()
	queue_free()
