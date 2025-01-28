class_name BaseCharacter
extends CharacterBody2D

@export_category("Movement Properties")
@export var speed: float = 300.0
@export var acceleration: float = 15.0
@export var friction: float = 10.0

var input_direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	handle_movement(delta)

func handle_movement(delta: float) -> void:
	if input_direction != Vector2.ZERO:
		velocity = velocity.lerp(input_direction * speed, acceleration * delta)
	else:
		velocity = velocity.lerp(Vector2.ZERO, friction * delta)
	
	move_and_slide()

func get_input_direction() -> void:
	pass # À implémenter dans les classes enfants 
