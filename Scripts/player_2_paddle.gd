extends AnimatableBody2D

@export var SPEED = 400.0
var screen_size

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("Player2Up", "Player2Down")
	
	var movement = Vector2(0, direction*SPEED*delta)
	
	position += movement
	
	position.y = clamp(position.y, 200, screen_size.y-200)
