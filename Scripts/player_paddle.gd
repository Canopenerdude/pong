extends CharacterBody2D


const SPEED = 35000.0
var screen_size

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
		# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED * delta
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 200, screen_size.y-200)
