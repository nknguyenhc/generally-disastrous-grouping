extends Node2D

var selected_units = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("move_unit"):
		print("WALTER")
		move_units()

func move_units():
	for unit in selected_units:
		unit.get_parent().get_node("NavigationAgent2D").target_position = get_global_mouse_position()
