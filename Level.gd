extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var spawns = [$PlayerSpawn1, $PlayerSpawn2, $PlayerSpawn3]
	var enemy_spawns = [$EnemySpawn1, $EnemySpawn2, $EnemySpawn3]
	
	for i in Global.fighters.size():
		var fighter = Global.fighters[i]
		if i < spawns.size():
			spawns[i].add_child(fighter)
			
	for i in Global.enemies.size():
		var enemy = Global.enemies[i]
		if i < enemy_spawns.size():
			enemy_spawns[i].add_child(enemy)
			
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
