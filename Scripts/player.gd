extends CharacterBody2D

@export var SPEED : int = 300

func _physics_process(delta):
	var direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = 0

	move_and_slide()
