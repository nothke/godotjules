extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var spawns = [$PlayerSpawn1, $PlayerSpawn2, $PlayerSpawn3]

	for i in Global.fighters.size():
		var fighter = Global.fighters[i]
		if i < spawns.size():
			spawns[i].add_child(fighter)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
