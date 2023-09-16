extends MovingBody


func die():
	get_parent().decrease_sheep_count()
	queue_free()
