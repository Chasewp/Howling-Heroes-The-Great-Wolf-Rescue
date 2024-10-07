class_name Wolf_alamanac_Main_Menu_Index
extends Control

signal opened
signal closed

"Cursor"
var normal_cursor = load("res://Assets/Image/Cursor/Cursor 32x32.png")
var hand_cursor = load("res://Assets/Image/Cursor/hand_paw.png")

"""Instance Index Page Wolf Almanac"""
var indexpage1 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 1/Wolf_Almanac_Index_Page_1.tscn").instantiate()
var indexpage2 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 2/Wolf_Alamac_Index_Page_2.tscn").instantiate()
var indexpage3 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 3/Wolf_Alamac_Index_Page_3.tscn").instantiate()
var indexpage4 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 4/Wolf_Alamac_Index_Page_4.tscn").instantiate()
var indexpage5 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 5/Wolf_Alamac_Index_Page_5.tscn").instantiate()
var indexpage6 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 6/Wolf_Alamac_Index_Page_6.tscn").instantiate()
var indexpage7 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 7/Wolf_Alamac_Index_Page_7.tscn").instantiate()
var indexpage8 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 8/Wolf_Alamac_Index_Page_8.tscn").instantiate()
var indexpage9 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 9/Wolf_Alamac_Index_Page_9.tscn").instantiate()

#Button Click Sound
@onready var Button_Click_SFX = $Button_Click

func _on_page_1_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage1)
	get_tree().root.add_child(indexpage1)

func _on_page_2_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage2)
	get_tree().root.add_child(indexpage2)

func _on_page_3_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage3)
	get_tree().root.add_child(indexpage3)

func _on_page_4_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage4)
	get_tree().root.add_child(indexpage4)

func _on_page_5_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage5)
	get_tree().root.add_child(indexpage5)

func _on_page_6_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage6)
	get_tree().root.add_child(indexpage6)
	
func _on_page_7_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage7)
	get_tree().root.add_child(indexpage7)

func _on_page_8_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage8)
	get_tree().root.add_child(indexpage8)

func _on_page_9_pressed():
	Button_Click_SFX.play()
	get_tree().change_scene_to_packed(indexpage9)
	get_tree().root.add_child(indexpage9)

func on_mouse_entered()-> void:
	Input.set_custom_mouse_cursor(hand_cursor)
	
func on_mouse_exited()->void:
	Input.set_custom_mouse_cursor(normal_cursor)


