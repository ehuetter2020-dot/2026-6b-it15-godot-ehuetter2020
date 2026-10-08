extends Sprite2D
signal health_depleted(final_score: int)
@export var speed: float = 400.0
func _ready() -> void:
	print("Player initialisiert am BRG Kepler!")

func take_damage() -> void:
	health_depleted.emit(100)
	
func _process(delta: float) -> void:
	var direction: Vector2 = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	if direction.length() > 0:
		direction = direction.normalized()

	position += direction * speed * delta
