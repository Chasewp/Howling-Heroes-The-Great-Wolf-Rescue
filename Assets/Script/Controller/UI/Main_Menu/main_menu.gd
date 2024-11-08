class_name Main_Menu
extends Control

#variable nodes
@onready var backsound = $Back_Sound
@onready var startbtn = $StartBtn
@onready var normalbutton = $Normal_button
@onready var _continue_button = $"Background/Continue Button"
var save_load = SaveLoadManagerFile.new()

"Cursor"
var normal_cursor = load("res://Assets/Image/Cursor/Cursor 32x32.png")
var hand_cursor = load("res://Assets/Image/Cursor/hand_paw.png")

func _ready():
	backsound.play()
	if save_load.save_file_exist() == false:
		_continue_button.disabled = true
		
#New Game Button
func _on_new_game_main_menu_buttons_pressed():
	LoadingScreen.load_scence("res://Assets/Scences/UI/suggestion.tscn")
	startbtn.play()

#Continue Game Button
func _on_continue_main_menu_buttons_pressed():
	startbtn.play()
	if save_load.save_file_exist()== true:
		get_tree().change_scene_to_file("res://Assets/Scences/World/World_Games.tscn")
	else :
		print("Failed open stage")
	

#Options Button
func _on_options_main_menu_buttons_pressed():
	LoadingScreen.load_scence("res://Assets/Scences/UI/Options/Options_Menu.tscn")
	normalbutton.play()

#Quit Button
func _on_quit_main_menu_buttons_pressed():
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Exit_Confirmation/Exit_Confirmation.tscn")
	normalbutton.play()

#Credits Button
func _on_credits_pressed():
	normalbutton.play()
	LoadingScreen.load_scence("res://Assets/Scences/UI/Credits/credit_1.tscn")

#FurAfinity
func _on_furafinity_pressed():
	normalbutton.play()
	OS.shell_open("https://www.furaffinity.net/user/mariqblizzardwp03")

#Github
func _on_github_pressed():
	normalbutton.play()
	OS.shell_open("https://github.com/Blizzard03/Howling-Heroes---The-Great-Wolf-Rescue-4.3.1/tree/main")
	
#Discord Server
func _on_discord_pressed():
	normalbutton.play()
	OS.shell_open("https://discord.gg/t5NPDvTZKd")

func on_mouse_entered()-> void:
	Input.set_custom_mouse_cursor(hand_cursor)
	
func on_mouse_exited()->void:
	Input.set_custom_mouse_cursor(normal_cursor)
