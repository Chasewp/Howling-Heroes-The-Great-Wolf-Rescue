class_name credits_1
extends Control

@onready var animation1 = $Animate1
@onready var button_sfx = $Button_Click
#cursor image 
var normal_cursor = load("res://Assets/Image/Cursor/Cursor 32x32.png")
var hand_cursor = load("res://Assets/Image/Cursor/hand_paw.png")

#Credit stage others
var _credit_sfx = preload("res://Assets/Scences/UI/Credits/credit_3.tscn").instantiate()
var _credit_image = preload("res://Assets/Scences/UI/Credits/credit_4.tscn").instantiate()
var _credit_music 




func _ready():
	animation1.play("Fade_in")
	await get_tree().create_timer(6).timeout

#back to main_menu
func _on_back_main_menu_button_pressed()->void:
	button_sfx.play()
	animation1.play("Fade_out")
	await get_tree().create_timer(3).timeout
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")

#next page 2
func _on_next_page_2_button_pressed()->void:
	button_sfx.play()
	animation1.play("Fade_out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Credits/credit_2.tscn")


func _on_mouse_entered()->void:
	Input.set_custom_mouse_cursor(hand_cursor)


func _on_mouse_exited()->void:
	Input.set_custom_mouse_cursor(normal_cursor)


func _on_sfx_pressed()->void:
	button_sfx.play()
	animation1.play("Fade_out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_packed(_credit_sfx)
	


func _on_image_pressed()->void:
	button_sfx.play()
	animation1.play("Fade_out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_packed(_credit_image)
	

func _on_music_pressed()->void:
	button_sfx.play()
	animation1.play("Fade_out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_packed(_credit_image)
	
