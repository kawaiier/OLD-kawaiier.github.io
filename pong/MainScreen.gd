extends Node

func _ready():
	randomize()
	randomBall()

func randomBall():
	$ball.set_position(Vector2(rand_range(1, 600), rand_range(1,600)))

func _on_Button_pressed():
	get_tree().change_scene("res://startscreen.tscn")
