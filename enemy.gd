class_name Enemy
extends Node2D

@export var damage = 10
@export var attack_speed = 100
@export var health = 100
@export var max_health = 100
@export var range = 100

@export var mask = null

@export var texture: Texture2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = texture
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func damageMe(damage: int) -> void:
	health -= damage
	print("got damage health: ", health)
	
	if health <= 0:
		get_tree().queue_delete(self)
