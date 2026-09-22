extends StaticBody2D

func _on_area_mortal_body_entered(_body: Node2D) -> void:
	print("Colisión")
	if _body.on_area_mortal_body_entered("restart_position"):
		get_tree().reload_current_scene()
		
