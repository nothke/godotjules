extends TextureRect

var transitioned = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and not transitioned:
		SceneManager.start_transition()
		await SceneManager.transistion.transition_change_scene
		$TextureRect.visible = false
		$TextureRect2.visible = true
		transitioned = true
	elif event.is_action_pressed("ui_accept"):
		get_tree().quit()
