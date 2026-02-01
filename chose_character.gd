extends Control
class_name chose_character

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var is_any_hovered = false
	for box in $hbox.get_children():
		if box.hovered:
			$tooltip.texture = box.tooltip_texture
			is_any_hovered = true
	if not is_any_hovered:
		$tooltip.texture = null

func play_level():
	SceneManager.switch_scene("res://level.tscn")

func _on_character_fast_pressed() -> void:
	Global.add_fighter($hbox/CharacterFast.player_stats, $hbox/CharacterFast.texture)
	play_level()

func _on_character_smart_pressed() -> void:
	Global.add_fighter($hbox/CharacterSmart.player_stats, $hbox/CharacterSmart.texture)
	play_level()


func _on_character_strong_pressed() -> void:
	Global.add_fighter($hbox/CharacterStrong.player_stats, $hbox/CharacterStrong.texture)
	play_level()


func _on_character_fast_mouse_entered() -> void:
	pass # Replace with function body.
