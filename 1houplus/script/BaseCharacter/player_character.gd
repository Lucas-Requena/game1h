extends BaseCharacter

func _physics_process(delta: float) -> void:
    get_input_direction()
    super._physics_process(delta)

func get_input_direction() -> void:
    input_direction = Vector2.ZERO
    input_direction.x = Input.get_axis("ui_left", "ui_right")
    input_direction.y = Input.get_axis("ui_up", "ui_down")
    input_direction = input_direction.normalized() 