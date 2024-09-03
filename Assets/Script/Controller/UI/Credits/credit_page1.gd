class_name credits_1
extends Control

@onready var animation1 = $Animate1
@onready var button_sfx = $Button_Click

func _ready():
	animation1.play("Fade_in")
	await get_tree().create_timer(6).timeout

#back to main_menu
func _on_back_main_menu_button_pressed():
	button_sfx.play()
	animation1.play("Fade_out")
	await get_tree().create_timer(3).timeout
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")

#next page 2
func _on_next_page_2_button_pressed():
	button_sfx.play()
	animation1.play("Fade_out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Credits/credit_2.tscn")
