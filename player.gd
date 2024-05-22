 extends CharacterBody2D

const SPEED = 20
const ROTATION_SPEED = 2.0  # Adjust this value for faster or slower rotation

func _physics_process(delta):
	var direction = Vector2(0, 0)
	
	if Input.is_action_pressed("ui_left"):
		rotation -= ROTATION_SPEED * delta
	if Input.is_action_pressed("ui_right"):
		rotation += ROTATION_SPEED * delta
	
	if Input.is_action_pressed("ui_up"):
		direction = Vector2(SPEED, 0).rotated(rotation)
	if Input.is_action_pressed("ui_down"):
		direction = Vector2(-SPEED*0.8, 0).rotated(rotation)
	
	velocity = direction * SPEED
	move_and_slide()
