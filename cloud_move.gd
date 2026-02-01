extends Node2D

var original_pos: Vector2
var accum: float

func _ready() -> void:
	original_pos = position

func _process(delta: float) -> void:
	accum += delta * 0.5
	var offset: float = sin(accum)
	position.x = original_pos.x + offset * 20
	pass
