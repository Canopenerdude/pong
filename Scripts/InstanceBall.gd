extends Node2D

@export var ball_scene: PackedScene
var ball_instance

var spawn_pos: Vector2 = Vector2(789, 436)

func _ready() -> void:
	spawn_ball()

func spawn_ball() -> void:
	ball_instance = ball_scene.instantiate()
	ball_instance.global_position = spawn_pos
	
	ball_instance.tree_exited.connect(_on_ball_freed)
	
	add_child(ball_instance)

func _on_ball_freed() -> void:
	print("Ball died")
	$Timer.start()

func _on_timer_timeout() -> void:
	print("Should spawn now")
	spawn_ball()
