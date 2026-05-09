extends Node

var score: int = 0
@onready var score_label = $"../UI/CanvasLayer/Player1Score"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body is RigidBody2D:
		print("Gooooooal")
		body.queue_free()
		score += 1
		score_label.text = str(score)
