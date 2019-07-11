extends Node2D

onready var characterAnimation = get_node("AnimationPlayer")

func _process(delta):
	
	if characterAnimation.current_animation != "idle" && characterAnimation.current_animation != "":
		pass
	
	elif Input.is_action_just_pressed("ui_up"):
		characterAnimation.play("jump")
		
	elif Input.is_action_just_pressed("ui_down"):
		characterAnimation.play("crouch")
	else:
		characterAnimation.play("idle")