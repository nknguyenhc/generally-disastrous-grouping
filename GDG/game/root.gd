extends Node


const Game = preload("res://game/game.tscn")
var game


func restart():
	game.queue_free()
	game = Game.instantiate()
	add_child(game)


func start():
	$Start.queue_free()
	game = Game.instantiate()
	add_child(game)
