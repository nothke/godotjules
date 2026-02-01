extends TextureButton

@export var mask_res: MaskResource
@export var mask_db: MasksDatabase

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	var random_int = rng.randi_range(0, mask_db.masks.size()-1)
	mask_res = mask_db.masks[random_int]
		
	texture_normal = mask_res.sprites[0]
	texture_hover = mask_res.sprites[1]


func _on_button_down() -> void:
	Global.add_mask(mask_res)
	SceneManager.switch_scene("res://Level.tscn")
