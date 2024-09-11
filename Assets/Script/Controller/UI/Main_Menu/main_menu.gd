class_name Main_Menu
extends Control

@onready var backsound = $Back_Sound
@onready var startbtn = $StartBtn
@onready var normalbutton = $Normal_button
@onready var continuebutton = $"Background/Continue Button"

func _ready():
	backsound.play()
	#show Cursor 
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
# Close Notification
func _notification(exit):
	if exit == NOTIFICATION_WM_CLOSE_REQUEST:
		get_tree().change_scene_to_file("res://Assets/Scences/UI/Exit_Confirmation/Exit_Confirmation.tscn")
		
#New Game Button
func _on_new_game_main_menu_buttons_pressed():
	startbtn.play()
	_on_start_btn_finished("res://Assets/Scences/Location/How_to_Play/How_To_Play.tscn")
	
	

#Continue Game Button
func _on_continue_main_menu_buttons_pressed():
	startbtn.play()
	_on_start_btn_finished("res://Assets/Scences/UI/Load_slot/loader_screen.tscn")
	

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
	OS.shell_open("https://github.com/Chasewp/Howling-Heroes-The-Great-Wolf-Rescue")
	
#Discord Server
func _on_discord_pressed():
	normalbutton.play()
	OS.shell_open("https://discord.gg/t5NPDvTZKd")


func _on_start_btn_finished(path : String):
	LoadingScreen.load_scence(path)
