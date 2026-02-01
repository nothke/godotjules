extends Node
const FIGHTER = preload("uid://bqwgjronjdtkj")

var fighters:Array[Fighter] = []

func add_fighter(dict: Dictionary[String, int], texture):
	var fighter_child = FIGHTER.instantiate()
	fighter_child.damage = dict["damage"]
	fighter_child.attack_speed = dict["attack_speed"]
	fighter_child.health = dict["health"]
	fighter_child.max_health = dict["max_health"]
	fighter_child.range = range
	fighter_child.texture = texture
	fighters.append(fighter_child)

func add_mask(mask_res: MaskResource):
	pass
