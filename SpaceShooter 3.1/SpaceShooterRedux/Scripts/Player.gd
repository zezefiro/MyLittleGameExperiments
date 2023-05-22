extends KinematicBody2D

onready var screen_size = get_viewport_rect().size

var motion = Vector2(0,0)

const SPEED = 650
const GRAVITY = 0
const UP = Vector2(0,-1)

func _physics_process(delta):
	#lembrar de fazer a nave escolhida no menu a que será usada.
	move()
	player_limitations()
	shoot()
	shield()
	boost()
	move_and_slide(motion, UP)

func move():
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0

	if Input.is_action_pressed("up") and not Input.is_action_pressed("down"):
		motion.y = -SPEED
	elif Input.is_action_pressed("down") and not Input.is_action_pressed("up"):
		motion.y = SPEED
	else:
		motion.y = 0

func player_limitations():
	position.x = wrapf(position.x, 0, screen_size.x)
	position.y = wrapf(position.y, 0, screen_size.y)

func shoot():
	#lembre-se de criar um comportamento pro tiro também.
	
	pass

func shield():
	pass

func boost():
	pass
