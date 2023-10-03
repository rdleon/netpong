extends CharacterBody2D

const SPEED = 300

var motion = Vector2()
var left = Vector2(1, 0)
var right = Vector2(-1, 0)
var direction = left

func _ready():
	rotation = 1.0
	position = Vector2(644, 347)
	velocity = Vector2(SPEED, 0).rotated(rotation)

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
