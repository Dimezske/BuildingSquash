extends KinematicBody2D

var velocity = Vector2(0,1)
var speed = 300

func _physics_process(delta):
	var collision_info = move_and_collide(velocity.normalized() * delta * speed)
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("Pedestrians"):
		body.queue_free()
		Global.kill_counter += 5 
		Global.emit_signal("hit")
