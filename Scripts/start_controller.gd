extends Node

var scene = preload("res://Scenes/instructions.tscn").instantiate()



func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/instructions.tscn")
