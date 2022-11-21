extends Node

var values = [
	[0, 0, 0, 0],
	[0, 2, 0, 0],
	[0, 0, 0, 0],
	[0, 0, 0, 0]] 

export var spacing: float = 1.0
export var block_offset: Vector2 = Vector2(0.0, 0.0)
export var block_scale: float = 1.0

onready var block = preload("res://Scenes/Board/Block/Block.tscn")

var blocks = []

func _draw():
	for b in blocks:
		b.queue_free()
	blocks = []
	for i in values.size():
		var column = values[i]
		for j in column.size():
			var value = column[j]
			var b = block.instance()
			b.value = value
			self.add_child(b)
			b.update_block()
			b.global_scale = Vector2(block_scale, block_scale)	
			b.position = Vector2(
				block_offset.x + i * spacing,
				block_offset.y + j * spacing)
			blocks.append(b)

func _process(delta):
	if Input.is_action_pressed("swipe_up"):
		print("up")
	if Input.is_action_pressed("swipe_down"):
		print("down")
	if Input.is_action_pressed("swipe_left"):
		print("left")
	if Input.is_action_pressed("swipe_right"):
		print("right")
