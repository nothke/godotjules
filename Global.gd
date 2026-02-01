extends Node
const FIGHTER = preload("uid://bqwgjronjdtkj")
const ENEMY = preload("uid://b4awr2nj23kx7")

var fighters:Array[Fighter] = []

var enemies:Array[Enemy] = []

func add_fighter(dict: Dictionary[String, int], texture, enemy_texture):
	var fighter_child = FIGHTER.instantiate()
	fighter_child.damage = dict["damage"]
	fighter_child.attack_speed = dict["attack_speed"]
	fighter_child.health = dict["health"]
	fighter_child.max_health = dict["max_health"]
	fighter_child.range = range
	fighter_child.texture = texture
	fighters.append(fighter_child)

func add_mask(mask_res: MaskResource):
	# OVDE TREBA DA SE STAVI MASKA
	
	var enemy_child = ENEMY.instantiate()
	enemy_child.damage = dict["damage"]-5
	enemy_child.attack_speed = dict["attack_speed"]
	enemy_child.health = dict["health"]
	enemy_child.max_health = dict["max_health"]
	enemy_child.range = range
	enemy_child.texture = texture
	enemies.append(enemy_child)
