extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _unhandled_input(event):
	if event.is_action_pressed("move_unit"):
		move_units()

func move_units():
	for unit in $UnitSelection.selected_units.values():
		unit.get_parent().get_node("NavigationAgent2D").target_position = get_global_mouse_position()
