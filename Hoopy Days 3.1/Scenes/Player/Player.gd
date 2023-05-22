extends KinematicBody2D

var motion = Vector2(0,0)

const SPEED = 1500
const GRAVITY = 300
const UP = Vector2(0,-1)
const JUMP_SPEED = 4000

signal animate
 
func _physics_process(delta):
	apply_gravity()
	jump()
	move()
	animate_pink_bunny()
	move_and_slide(motion, UP)
#put an if condition that if the bunny eats too much candy it becomes a beautiful sweet princess bunny, because bunny wants to be a drag queen.
func apply_gravity():
	if not is_on_floor():
		motion.y += GRAVITY
	else:
		motion.y = 0
func jump():
	if Input.is_action_pressed("jump") and is_on_floor():
		motion.y -= JUMP_SPEED
func move():
	if Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
	elif Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	else:
		motion.x = 0
func animate_pink_bunny():
	emit_signal("animate", motion)

