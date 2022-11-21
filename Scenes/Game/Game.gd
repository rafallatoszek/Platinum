extends Node

var score = 0

func update_score(score):
	$ScoreLabel.text = "Score: " + str(score)
