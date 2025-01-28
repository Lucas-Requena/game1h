extends Node2D

func _ready() -> void:
    # Initialisation de la scène principale
    var game_scene = preload("res://scenes/game_scene.tscn").instantiate()
    add_child(game_scene) 