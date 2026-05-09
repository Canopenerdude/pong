extends Node2D

var score: int = 0
@onready var score_label: Label = $CanvasLayer/Player1Score

func _ready():
	update_score_display()

func add_score(amount: int):
	score += amount
	update_score_display()

func update_score_display():
	score_label.text = str(score)
