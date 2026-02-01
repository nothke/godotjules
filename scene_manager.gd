extends CanvasLayer

# Signal for when the scene actually changes
signal scene_changed

@onready var transistion = $TRANSITION
#@onready var color_rect = $ColorRect

var current_scene = null

func _ready():
	# Get the currently active scene (the one set in project settings)
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	
	# Start with the screen clear
	#color_rect.modulate.a = 0

func start_transition():
	transistion.transition()
# The main function to call from anywhere
func switch_scene(scene_path: String, params: Dictionary = {}):
	# 1. Start Fade Out
	transistion.transition()
	await transistion.transition_change_scene
	#animation_player.play("fade_to_black")
	#await animation_player.animation_finished
	
	# 2. Delete the old scene
	current_scene.free()
	
	# 3. Load and Instantiate the new scene
	var new_scene_resource = load(scene_path)
	var new_scene = new_scene_resource.instantiate()
	
	# 4. Pass Data (The "Call Down" logic from your previous question)
	# This checks if the new scene has an 'init_scene' function
	if new_scene.has_method("init_scene"):
		new_scene.init_scene(params)
	
	# 5. Add to tree
	get_tree().root.add_child(new_scene)
	get_tree().current_scene = new_scene
	current_scene = new_scene
	
	# 6. Fade In
	#animation_player.play_backwards("fade_to_black")
	scene_changed.emit()
