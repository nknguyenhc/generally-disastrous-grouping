extends MovingBody


func _on_hitbox_body_entered(body):
	body.die()
