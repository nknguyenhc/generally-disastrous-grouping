extends CharacterBody2D
class_name MovingBody


var rng = RandomNumberGenerator.new()
var dir
const SPEED = 100


func _ready():
	change_direction()


func change_direction():
	match rng.randi_range(1, 4):
		1:
			dir = 'up'
			$AnimationPlayer.play('up')
		2:
			dir = 'down'
			$AnimationPlayer.play('down')
		3:
			dir = 'left'
			$AnimationPlayer.play('left')
		4:
			dir = 'right'
			$AnimationPlayer.play('right')


func _physics_process(delta):
	match dir:
		'up', 'down':
			if velocity.y == 0:
				change_direction()
		'left', 'right':
			if velocity.x == 0:
				change_direction()
	
	match dir:
		'up':
			velocity = Vector2.UP * SPEED
		'down':
			velocity = Vector2.DOWN * SPEED
		'left':
			velocity = Vector2.LEFT * SPEED
		'right':
			velocity = Vector2.RIGHT * SPEED
	
	move_and_slide()
