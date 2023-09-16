extends CharacterBody2D

const SPEED = 300
var direction

func _ready():
	pass
#	$NavigationAgent2D.target_position = get_global_mouse_position()

func _physics_process(delta):
	$NavigationAgent2D.target_position = get_global_mouse_position()
	direction = global_position.direction_to($NavigationAgent2D.get_next_path_position())
	# Update animation
	$AnimationTree.set("parameters/blend_position", direction)
	velocity = SPEED * direction
	move_and_slide()
