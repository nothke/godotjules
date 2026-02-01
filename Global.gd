extends Node
const FIGHTER = preload("uid://bqwgjronjdtkj")


var fighters:Array[Fighter] = []

func add_fighter(damage, attack_speed, health, max_health, range):
	var fighter_child = FIGHTER.instantiate()
	fighter_child.damage = damage
	fighter_child.attack_speed = attack_speed
	fighter_child.health = health
	fighter_child.max_health = max_health
	fighter_child.range = range
