extends Node

# func _ready():
func _on_Play_pressed():
	get_tree().change_scene("res://mainscreen.tscn")

func _on_Settings_pressed():
	get_tree().change_scene("res://settings.tscn")
