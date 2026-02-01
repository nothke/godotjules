extends TextureButton

func _button_pressed():
	var transition = get_node("/root/intro/TRANSITION")
	transition.transition()
