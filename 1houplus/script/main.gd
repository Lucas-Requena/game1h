extends CharacterBody2D

@export var speed: float = 300.0

func _physics_process(delta: float) -> void:
    # Obtenir les entrées du joueur
    var input_direction = Vector2.ZERO
    input_direction.x = Input.get_axis("ui_left", "ui_right")
    input_direction.y = Input.get_axis("ui_up", "ui_down")
    input_direction = input_direction.normalized()
    
    # Appliquer le mouvement
    velocity = input_direction * speed
    move_and_slide() 