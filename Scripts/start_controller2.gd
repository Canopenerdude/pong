extends Node

var scene = preload("res://Scenes/main.tscn").instantiate()

@onready var button = %ButtonClick

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_button_button_down():
	button.play()
