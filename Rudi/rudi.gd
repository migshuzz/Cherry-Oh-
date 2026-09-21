extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -550.0
const GRAVITY = 45

var position_initial : Vector2

func _ready() -> void: 
	
	position_initial = global_position
	
func restart_position() -> void:
	
	velocity = Vector2.ZERO


func _physics_process(_delta: float) -> void:

	velocity.y += GRAVITY 
	
	if velocity.y > 0 and not is_on_floor():
		$Sprite2D.flip_v = true
	else: 
		$Sprite2D.flip_v = false
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	if Input.is_action_pressed("ui_right"):
		$Sprite2D.flip_h=false
		velocity.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		$Sprite2D.flip_h=true
		velocity.x = -SPEED
	else:
		velocity.x=0

	move_and_slide()

	
