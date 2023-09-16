extends CharacterBody2D

const SPEED = 300
var direction

func _ready():
	$NavigationAgent2D.target_position = Vector2(50, 50)

func _physics_process(delta):
	direction = global_position.direction_to($NavigationAgent2D.get_next_path_position())
	# Update animation
	$AnimationTree.tree_root.
	velocity = SPEED * direction
	move_and_slide()
