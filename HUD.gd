extends CanvasLayer

signal start_game


func _on_StartButton_pressed():
	$StartButton.hide()
	$QuitButton.hide()
	$GameNameLabel.hide()
	emit_signal("start_game")


func _on_QuitButton_pressed():
	get_tree().quit()

func update_score(score):
	$ScoreLabel.text = "Score: " + str(score)
