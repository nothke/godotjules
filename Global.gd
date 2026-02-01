extends Node
const FIGHTER = preload("uid://bqwgjronjdtkj")
const ENEMY = preload("uid://b4awr2nj23kx7")

@onready var enemy_textures: Array[Texture2D] = [
	preload("res://assets/karrakonjules/karrakonjula_1.png"),
	preload("res://assets/karrakonjules/karrakonjula_2.png"),
	preload("res://assets/karrakonjules/karrakonjula_3.png")
]

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
	
	var fighter = fighters[0]
	
	var enemy_child = ENEMY.instantiate() 
	enemy_child.damage = fighter.damage - 5
	enemy_child.attack_speed = fighter.attack_speed
	enemy_child.health =fighter.health
	enemy_child.max_health = fighter.max_health
	enemy_child.range = range        
	enemy_child.texture = enemy_textures.pick_random()
	enemies.append(enemy_child) 

func add_mask(mask_res: MaskResource):
	# OVDE TREBA DA SE STAVI MASKA4
	pass
