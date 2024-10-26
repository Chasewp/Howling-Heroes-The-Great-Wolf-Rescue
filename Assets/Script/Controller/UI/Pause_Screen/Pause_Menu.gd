class_name pause_menu
extends Control

@onready var _save_progress:SaveLoadManagerFile =%Data_Progress
var save_menu = load("res://Assets/Scences/UI/Saver/Saver_screen.tscn").instantiate()
var exit = load("res://Assets/Scences/UI/Exit_Game_Over/Exit_Game_Over.tscn").instantiate()

@onready var sfx = $button


func _ready():
	if self.visible == true: 
		get_tree().paused = true



func _on_quit_pressed():
	sfx.play()
	get_tree().quit()


func _on_save_and_quit_pressed():
	sfx.play()
	_save_progress.save_game()
	get_parent().remove_child(self)
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Exit_Game_Over/Exit_Game_Over.tscn")
	print("save success")

func _on_save_pressed():
	sfx.play()
	_save_progress.save_game()
	get_parent().remove_child(self)

func _on_resume_pressed():
	sfx.play()
	get_parent().remove_child(self)
	self.visible = false
