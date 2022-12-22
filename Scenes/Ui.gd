extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.connect("hit", self, "on_hit")
func _process(_delta):
	$Label.text = str(Global.kill_counter)
	
func on_hit():
	$Label.text = str(Global.kill_counter)
