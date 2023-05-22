extends KinematicBody2D

export (int) var speed = 1000

var velocity = Vector2()

func _ready():
	velocity = Vector2()
	velocity.x += speed
	_on_Timer_timeout()

func _on_Timer_timeout():
	velocity = Vector2()
	velocity.x -= speed

func _physics_process(delta):
	_on_Timer_timeout()
	velocity = move_and_slide(velocity)
	#how to put a timer in this shit? like, if 1s is walking right, go left and vice versa.
