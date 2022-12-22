extends Node2D

export (PackedScene) var ped_scene = preload("res://Scenes/Pedestrians.tscn")

func _ready():
	randomize()

func _process(delta):
	$Timer.wait_time = 750.000/Global.speed
	
func _on_Timer_timeout():
	var ped = ped_scene.instance()
	var ped_spawn_location = self.position
	add_child(ped)
