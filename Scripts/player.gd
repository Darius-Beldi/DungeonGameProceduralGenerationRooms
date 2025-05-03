
extends CharacterBody2D

@export var speed = 350

func _ready() -> void:
	print("player.gd initialised")
	pass
	
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
