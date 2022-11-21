extends Node

var values = [
	[1, 2, 3, 4],
	[5, 6, 7, 8],
	[9, 10, 11, 12],
	[13, 14, 15, 16]] 

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
			var val = column[j]
			if val == null:
				continue
			var b = block.instance()
			self.add_child(b)
			b.number = val
			b.global_scale = Vector2(block_scale, block_scale)	
			b.position = Vector2(
				block_offset.x + i * spacing,
				block_offset.y + j * spacing)
			blocks.append(b)
			
