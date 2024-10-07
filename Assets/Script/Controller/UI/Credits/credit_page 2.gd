class_name credits_2
extends Control

@onready var animation2 = $Animate2
@onready var button_sfx = $Button_Click
#cursor image 
var normal_cursor = load("res://Assets/Image/Cursor/Cursor 32x32.png")
var hand_cursor = load("res://Assets/Image/Cursor/hand_paw.png")

func _ready():
	animation2.play("Fade_in")
	await get_tree().create_timer(6).timeout
	
func _on_back_page_1_pressed():
	button_sfx.play()
	animation2.play("Fade_out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Credits/credit_1.tscn")

func _on_mouse_entered()->void:
	Input.set_custom_mouse_cursor(hand_cursor)

func _on_mouse_exited()->void:
	Input.set_custom_mouse_cursor(normal_cursor)

