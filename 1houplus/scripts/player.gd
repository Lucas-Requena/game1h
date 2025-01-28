extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
    # Obtenir les entrées du joueur
    var direction = Vector2.ZERO
    direction.x = Input.get_axis("ui_left", "ui_right")
    direction.y = Input.get_axis("ui_up", "ui_down")
    
    # Normaliser le vecteur pour éviter une vitesse plus rapide en diagonale
    if direction.length() > 0:
        direction = direction.normalized()
        $AnimatedSprite2D.play("walk")
    else:
        $AnimatedSprite2D.play("idle")
        
    # Appliquer le mouvement
    velocity = direction * SPEED
    move_and_slide()