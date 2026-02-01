extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.fighters = []
	Global.enemies = []


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_button_down() -> void:
	SceneManager.switch_scene("res://slideshow.tscn")
