extends Node2D

var top_start: Vector2
var bottom_start: Vector2
var tween_top: Tween
var tween_bottom: Tween

signal transition_change_scene

func _ready() -> void:
	top_start = $top.position
	bottom_start = $bottom.position

func transition() -> void:
	tween_top = get_tree().create_tween()
	tween_top.tween_property($top, "position", $top_target.position, 1)\
		.set_ease(Tween.EASE_OUT)\
		.set_trans(Tween.TRANS_BOUNCE)
		
	tween_bottom = get_tree().create_tween()
	tween_bottom.tween_property($bottom, "position", $bottom_target.position, 1)\
		.set_ease(Tween.EASE_OUT)\
		.set_trans(Tween.TRANS_BOUNCE)
	
	tween_bottom.tween_callback(switch_scene)
	
	$AudioStreamPlayer.play()

func switch_scene():
	transition_change_scene.emit()
	tween_top.kill();
	tween_top = get_tree().create_tween()
	tween_top.tween_property($top, "position",  top_start, 1)\
		.set_ease(Tween.EASE_IN)
		
	tween_bottom.kill()
	tween_bottom = get_tree().create_tween()
	tween_bottom.tween_property($bottom, "position", bottom_start, 1)\
		.set_ease(Tween.EASE_IN)
		
	print("BOOM")
