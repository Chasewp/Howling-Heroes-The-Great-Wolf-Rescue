extends Control

@onready var Warning = $Warning
@onready var Button_Sound = $Button_sound
@onready var Bye = $Bye
@onready var window = $ConfirmationDialog
@onready var gbye = $Good_Bye_Label
#For sound
func _ready():
	Warning.play()
	
#Yes	
func _on_confirmation_dialog_confirmed():
	Button_Sound.play()
	Bye.play()
#No 
func _on_confirmation_dialog_canceled():
	Button_Sound.play()
	LoadingScreen.load_scence("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")
	gbye.hide()
#Qoutes
func _on_bye_finished():
	get_tree().quit()
