extends Control

var transitioned = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and not transitioned:
		SceneManager.start_transition()
		await SceneManager.transistion.transition_change_scene
		$TextureRect.visible = false
		$TextureRect2.visible = true
		transitioned = true
	elif event.is_action_pressed("ui_accept"):
		SceneManager.switch_scene("res://chose_character.tscn")
