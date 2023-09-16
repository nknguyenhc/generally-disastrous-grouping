extends StaticBody2D


var is_hovering = false


func _process(delta):
	if Input.is_action_just_pressed("block") and is_hovering:
		get_parent().is_hovering = false
		queue_free()
