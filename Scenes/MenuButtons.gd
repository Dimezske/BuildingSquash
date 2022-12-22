extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Start_pressed():
#	print(Global.test_var)
	get_node("Start").move(Vector2(-576, 0))
	get_node("Difficulty").move(Vector2(0, 0))
	

func _on_Back_pressed():
	get_node("Start").move(Vector2(0, 0))
	get_node("Difficulty").move(Vector2(576, 0))

func _on_Easy_pressed():
	get_node("Start").move(Vector2(-1024, 0))
	get_node("Difficulty").move(Vector2(-576, 0))
	Global.started = true


func _on_Medium_pressed():
	get_node("Start").move(Vector2(-1024, 0))
	get_node("Difficulty").move(Vector2(-576, 0))
	Global.started = true

func _on_Hard_pressed():
	get_node("Start").move(Vector2(-1024, 0))
	get_node("Difficulty").move(Vector2(-576, 0))
	Global.started = true

func _on_Settings_toggled(toggled):
	for node in get_tree().get_nodes_in_group("Lighting"):
		if toggled:
			node.modulate= Color.black
		else:
			node.modulate= Color( 1, 0.894118, 0.768627, 1 )

func _on_Quit_pressed():
	get_tree().quit()



