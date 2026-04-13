extends RigidBody2D
var direction
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	direction = 180
	direction += randf_range(-PI / 4, PI / 4)
	rotation = direction
	
	var velocity = Vector2(randf_range(500.0, 1000.0), 0.0)
	linear_velocity = velocity.rotated(direction)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x = clamp(position.x, 50, screen_size.x-50)
	position.y = clamp(position.y, 50, screen_size.y-50)
