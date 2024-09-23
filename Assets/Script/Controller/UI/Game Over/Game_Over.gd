extends Control

@onready var sfx = $SFX

func _ready():
	sfx.play()
	
func _on_quit_pressed():
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Exit_Game_Over/Exit_Game_Over.tscn")


func _on_retry_pressed():
	get_tree().
