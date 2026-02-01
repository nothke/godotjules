class_name Fighter
extends Node2D

@export var damage = 10
@export var attack_speed = 1000
@export var health = 100
@export var max_health = 100
@export var range = 100

@export var mask = null
var mask_state = 0 

var dmg_scene = preload("res://dmg.tscn")

@export var texture: Texture2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = texture
	$Timer.wait_time = attack_speed / 1000
	$Timer2.wait_time = $Timer.wait_time / 4
	$Timer.start()
	$Timer.one_shot = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
		

func shoot():
	var all_dead = true
	for enemy in Global.enemies:
		if enemy != null:
			enemy.damageMe(damage, Color("yellow"))
			all_dead = false	
	
	if all_dead:
		SceneManager.switch_scene("res://win_screen.tscn")
		

func _on_timer_timeout() -> void:
	shoot()
	
func damageMe(damage: int, color) -> void:
	health -= damage
	print("Fighter damage health: ", health)
	var dmg = dmg_scene.instantiate()
	dmg.modulate = color
	add_child(dmg)
	
	$Yuuuu.play()
	
	if health <= 0:
		get_tree().queue_delete(self)

func _on_timer_2_timeout() -> void:
	mask_state += 1
	texture = mask.sprites[mask_state % 4]
	
