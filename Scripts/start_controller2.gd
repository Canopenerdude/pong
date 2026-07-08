extends Node

var scene = preload("res://Scenes/main.tscn").instantiate()



func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
