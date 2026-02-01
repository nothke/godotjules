extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Game.fighters.all(func(fighter):add_child(fighter))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
