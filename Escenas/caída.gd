extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	if _body.has_method("restart_position"):
		get_tree().reload_current_scene()
