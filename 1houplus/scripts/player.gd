extends CharacterBody2D

const SPEED = 300.0

func _ready():
    # Positionner le joueur au centre de l'écran au démarrage
    position = get_viewport_rect().size / 2

func _physics_process(delta: float) -> void:
    # Obtenir les entrées du joueur
    var direction = Vector2.ZERO
    direction.x = Input.get_axis("ui_left", "ui_right")
    direction.y = Input.get_axis("ui_up", "ui_down")
    
    # Normaliser le vecteur pour éviter une vitesse plus rapide en diagonale
    if direction.length() > 0:
        direction = direction.normalized()
        # Retourner le sprite selon la direction
        if direction.x < 0:
            $Sprite2D.flip_h = true
        elif direction.x > 0:
            $Sprite2D.flip_h = false
            
    # Appliquer le mouvement
    velocity = direction * SPEED
    move_and_slide() 