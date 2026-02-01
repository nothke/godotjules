extends TextureButton

@export var player_stats: Dictionary[String, int] = {
	"health": 100,
	"max_health": 100,
	"damage": 30, 
	"attack_speed": 1000,
	"range": 50,
}

@export var texture: Texture2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture_normal = texture
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
