extends Node

@export var score: int = 0
var scene = preload("res://Scenes/P1Win.tscn")
@onready var score_label = $"../UI/CanvasLayer/Player1Score"


func _on_body_entered(body):
	if body is RigidBody2D:
		print("Gooooooal")
		body.queue_free()
		score += 1
		score_label.text = str(score)
		if score >= 10:
			get_tree().change_scene_to_file("res://Scenes/P1Win.tscn")
