extends KinematicBody2D

const bulletPath = preload("res://Scenes/Bullet.tscn")
var freeze: bool = false

func _ready():
	pass # Replace with function body.
func _process(delta):
	if Input.is_action_just_pressed("finger_tap") and not freeze:
		freeze = true
		$Timer.wait_time = 200.000/Global.cooldown
		if Global.started:
			shoot()

func shoot():
	var bullet = bulletPath.instance()
	bullet.speed = 300
	print(bullet.velocity)
	get_parent().add_child(bullet)
	bullet.global_position = $Node2D/Position2D.global_position
	bullet.velocity = get_global_mouse_position() - bullet.global_position

func _on_Timer_timeout():
	freeze = false
	
