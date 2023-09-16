extends MovingBody

var direction
var is_selected = false

func _physics_process(delta):
	if $NavigationAgent2D.is_navigation_finished():
		direction = Vector2.ZERO
	else:
		direction = global_position.direction_to($NavigationAgent2D.get_next_path_position())
	# Update animation
	$AnimationTree.set("parameters/blend_position", direction)
	velocity = SPEED * direction
	move_and_slide()

func select_preview():
	$UnitSelectPreviewBorder.visible = true
	
func deselect_preview():
	$UnitSelectPreviewBorder.visible = false
	
func select():
	is_selected = true
	$UnitSelectedBorder.visible = true
	deselect_preview()
	
func deselect():
	is_selected = false
	$UnitSelectedBorder.visible = false

func die():
	get_parent().decrease_sheep_count()
	queue_free()
