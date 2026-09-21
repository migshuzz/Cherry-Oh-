extends StaticBody2D

func _on_area_mortal_body_entered(body: Node2D) -> void:
	print("Colisión")
	if body.is_in_group("rudi"):
		get_tree().reload_current_scene()
		
