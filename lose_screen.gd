extends TextureRect


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		SceneManager.switch_scene("res://intro.tscn")
