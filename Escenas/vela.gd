extends StaticBody2D




func _on_llama_body_entered(body: Node2D) -> void:
	body.restart_game()
