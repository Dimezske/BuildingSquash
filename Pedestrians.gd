extends KinematicBody2D

var move_speed = 200
var move_direction = Vector2.RIGHT
var left_boundary = -150
var right_boundary = 750

func _ready():
	modulate = Color(
		rand_range(0, 1),
		rand_range(0, 1),
		rand_range(0, 1),  
		1
	)

func _physics_process(delta):
	if self.position.x >= right_boundary:
#		move_direction = Vector2.LEFT
		pass
	if self.position.x <= left_boundary:
		move_direction = Vector2.RIGHT
	var velocity = move_direction.normalized() * delta * move_speed

	self.move_and_collide(velocity)

