extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Ui/Label.visible = false
	print($Ui/Label.visible)
	$Player/Bullet.visible = false

func _process(delta):
	if Global.kill_counter <= 0:
		$Ui/Gameover.visible = true
		$Ui/Label.visible = false
		get_tree().paused = true

func _on_Settings_toggled(button_pressed):
	pass # Replace with function body.

func _on_Deleter_body_entered(body):
	if Global.started:
		if Global.difficulty == Global.EASY:
			Global.kill_counter -= 1
		if Global.difficulty == Global.MEDIUM:
			Global.kill_counter -= 2
		if Global.difficulty == Global.HARD:
			Global.kill_counter -= 4

func _on_Deleter2_body_entered(body):
	if Global.started:
		if Global.difficulty == Global.EASY:
			Global.kill_counter -= 1
		if Global.difficulty == Global.MEDIUM:
			Global.kill_counter -= 2
		if Global.difficulty == Global.HARD:
			Global.kill_counter -= 4


func _on_Easy_pressed():
	Global.difficulty = Global.EASY
	if Global.difficulty == Global.EASY:
		$Ui/Label.visible = true
func _on_Medium_pressed():
	Global.difficulty = Global.MEDIUM
	if Global.difficulty == Global.MEDIUM:
		$Ui/Label.visible = true
func _on_Hard_pressed():
	Global.difficulty = Global.HARD
	if Global.difficulty == Global.HARD:
		$Ui/Label.visible = true
