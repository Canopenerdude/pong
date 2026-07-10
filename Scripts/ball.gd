extends RigidBody2D
var direction
var screen_size
@onready var BounceSound = $BounceSound


func _ready() -> void:
	screen_size = get_viewport_rect().size
	direction = 180
	direction += randf_range(-PI / 2, PI / 2)
	rotation = direction
	var velocity = Vector2(randf_range(800.0, 1500), 0.0)
	linear_velocity = velocity.rotated(direction)

func _process(delta):
	if position.x > 1700 or position.x < -100 or position.y > 1000 or position.y < -100:
		queue_free()

func _on_body_entered(body):
	if body is StaticBody2D:
		linear_velocity *= 1.08
		BounceSound.play()
