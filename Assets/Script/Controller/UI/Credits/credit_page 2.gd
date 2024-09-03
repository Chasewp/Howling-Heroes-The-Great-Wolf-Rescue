class_name credits_2
extends Control

@onready var Animate2 = $Animate2
@onready var button_sfx = $Button_Click
func _ready():
	Animate2.play("Fade_in")
	await get_tree().create_timer(6).timeout
	
func _on_back_page_1_pressed():
	button_sfx.play()
	Animate2.play("Fade_out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Credits/credit_1.tscn")

func _on_next_page_3_pressed():
	pass # Replace with function body.
