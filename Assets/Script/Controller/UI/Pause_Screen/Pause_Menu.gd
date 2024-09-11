class_name pause_menu
extends Control

var save = ProgressedGame.new()
var save_menu = preload("res://Assets/Scences/UI/Saver/Saver_screen.tscn").instantiate()
var exit = preload("res://Assets/Scences/UI/Exit_Game_Over/Exit_Game_Over.tscn").instantiate()

@onready var sfx = $button

func set_save_game_image(img : Image):
	save.screnshoot_image = img

func _ready():
	if self.visible == true: 
		get_tree().paused = true



func _on_quit_pressed():
	sfx.play()
	get_tree().change_scene_to_packed(exit)


func _on_save_and_quit_pressed():
	sfx.play()
	heros.auto_save()
	get_parent().remove_child(self)
	


func _on_save_pressed():
	sfx.play()
	get_tree().change_scene_to_packed(save_menu)
	get_tree().root.add_child(save_menu)

func _on_resume_pressed():
	sfx.play()
	get_parent().remove_child(self)
	get_tree().paused = false
	self.visible = false
