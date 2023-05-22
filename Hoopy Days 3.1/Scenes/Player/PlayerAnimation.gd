extends AnimatedSprite

func _on_Player_animate(motion):
	if motion.y < 0:
		play("jump_p")
	elif motion.x > 0:
		play("walk_p")
		flip_h = false
	elif motion.x < 0:
		play("walk_p")
		flip_h = true
	else:
		play("idle_p")
	# Replace with function body. motion is the argument;
