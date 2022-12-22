extends Node2D

var node_creation_parent

func instance_node(node, location, parent):
	var node_instance = node.instance()
	parent.add_child(node_instance)
	node_instance.global_position = location
	return node_instance
	
#var kill_counter = 5
signal hit
var kill_counter = 5 setget set_kill_counter
var speed = 300
var cooldown = 200.000
var started = false
enum{
	EASY,
	MEDIUM,
	HARD
}
var difficulty = EASY


func set_kill_counter(value):
#	if not started:
#		return
	kill_counter = value
#	speed = 300 + floor(kill_counter / 50) * 25
	speed = 300 + floor(kill_counter / (50-(10*difficulty))) * 25
	cooldown = 200.000 + floor(kill_counter / 50) * 25
