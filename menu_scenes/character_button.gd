extends TextureButton

@export var player_stats: Dictionary[String, int] = {
	"health": 100,
	"max_health": 100,
	"damage": 30, 
	"attack_speed": 1000,
	"range": 50,
}
@export var tooltip_texture: Texture2D

@export var texture: Texture2D
#@export var maskres: MaskResource
var hovered = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#texture = maskres.sprites[]\
	#texture_normal = texture
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	hovered = true


func _on_mouse_exited() -> void:
	hovered = false
