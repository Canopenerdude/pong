extends Node

var score: int = 0
@onready var score_label = $"../UI/CanvasLayer/Player1Score"


func _on_body_entered(body):
	if body is RigidBody2D:
		print("Gooooooal")
		body.queue_free()
		score += 1
		score_label.text = str(score)
