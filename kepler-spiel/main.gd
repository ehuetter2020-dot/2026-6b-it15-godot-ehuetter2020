extends Node2D


func _ready() -> void:
	$Button.pressed.connect(_on_custom_button_clicked)

func _on_custom_button_clicked() -> void:
	print("Event via Code-Signal empfangen!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	pass # Replace with function body
