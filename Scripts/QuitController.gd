extends Node

var scene = preload("res://Scenes/start.tscn").instantiate()
@onready var button = %ButtonClick


func _on_return_to_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/start.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_return_to_start_button_down():
	button.play()

func _on_quit_button_down():
	button.play()
