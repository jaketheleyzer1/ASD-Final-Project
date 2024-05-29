extends CharacterBody2D

const SPEED = 200
const ROTATION_SPEED = 2.0  # Adjust this value for faster or slower rotation

func _physics_process(delta):
	var direction = Vector2.ZERO
	
	# Handle rotation
	if Input.is_action_pressed("ui_left"):
		rotation += ROTATION_SPEED * delta
	if Input.is_action_pressed("ui_right"):
		rotation -= ROTATION_SPEED * delta
	
	# Handle movement
	if Input.is_action_pressed("ui_up"):
		direction = Vector2(SPEED, 0).rotated(rotation)
	elif Input.is_action_pressed("ui_down"):
		direction = Vector2(-SPEED * 0.8, 0).rotated(rotation)

	velocity = direction
	move_and_slide()
