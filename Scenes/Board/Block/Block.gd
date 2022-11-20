extends Node2D

export var number: int = 0

func _draw():
	$ColorRect/Label.text = str(number)
