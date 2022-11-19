extends Node

var score = 0

func new_game():
	print("Game started!")
	$HUD.update_score(score)
