extends Node

var score = 0

var game = preload("res://Scenes/Game/Game.tscn")

func new_game():
	if get_tree().change_scene_to(game):
		print("Cannot load the main game... Panic")
