extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -550.0
const GRAVITY = 45

	
	
func restart_game() -> void:
	get_tree().call_deferred("reload_current_scene")


func _physics_process(_delta: float) -> void:
	if position.y > 440:
		restart_game()

	velocity.y += GRAVITY 
	
	$Sprite.flip_v = velocity.y > 0 and not is_on_floor()

		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction != 0: $Sprite.flip_h = direction == -1
	
	velocity.x = SPEED * direction

	move_and_slide()

var cake = 0
func collect_cake():
	cake += 1
	$UI/Control/Contador.text = "Queques: " + str(cake)
	
