class_name Enemy
extends Node2D

@export var damage = 50
@export var attack_speed = 1000
@export var health = 100
@export var max_health = 100
@export var range = 100

@export var mask = null

var dmg_scene = preload("res://dmg.tscn")

@export var texture: Texture2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = texture
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func damageMe(damage: int, color) -> void:
	health -= damage
	print("Enemy damage health: ", health)
	var dmg = dmg_scene.instantiate()
	dmg.modulate = color
	add_child(dmg)
	
	
	if health <= 0:
		get_tree().queue_delete(self)

func shoot():
	var all_dead = true
	for fighter in Global.fighters:
		if fighter != null:
			fighter.damageMe(damage, Color("red"))
			all_dead = false	
	
	if all_dead:
		SceneManager.switch_scene("res://lose_screen.tscn")


func _on_timer_timeout() -> void:
	shoot()
