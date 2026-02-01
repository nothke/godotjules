extends TextureButton

@export var mask_res: MaskResource
@export var mask_db: MasksDatabase

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	var random_int = rng.randi_range(0, mask_db.masks.size())
	mask_db.masks[random_int]
		
	texture_normal = mask_res.sprites[0]
	texture_hover = mask_res.sprites[1]
