extends Node2D


const HEIGHT = 630
const WIDTH = 1136
const SPAWN_COUNT = 10
var count = SPAWN_COUNT

const Sheep = preload("res://sheep/sheep.tscn")
var rng = RandomNumberGenerator.new()
const SCALE = 0.2

var time = 120

var is_hovering = false
const Block = preload("res://block/block.tscn")


func _ready():
	$UI.set_count(count)
	$UI.set_time(time)
	for i in range(SPAWN_COUNT):
		spawn_sheep()


func _physics_process(delta):
	if Input.is_action_just_pressed("block"):
		if not is_hovering:
			var block = Block.instantiate()
			block.position = get_global_mouse_position()
			block.scale = Vector2(SCALE, SCALE)
			add_child(block)


func spawn_sheep():
	var sheep = Sheep.instantiate()
	sheep.position = Vector2(16, 16)
	sheep.scale = Vector2(SCALE, SCALE)
	add_child(sheep)


func decrease_sheep_count():
	count -= 1
	$UI.set_count(count)


func _on_timer_timeout():
	time -= 1
	$UI.set_time(time)
