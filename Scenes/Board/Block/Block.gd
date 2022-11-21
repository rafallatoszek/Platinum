extends Node2D

export var value: int

func _ready():
	update_block()
	
func update_block():
	if value == 0:
		$Background.color = Color(0.6, 0.6, 0.6)
		$ValueLabel.text = ""
	else:
		$Background.color = Color(0.9, 0.8, 0.5)
		$ValueLabel.text = str(value)
