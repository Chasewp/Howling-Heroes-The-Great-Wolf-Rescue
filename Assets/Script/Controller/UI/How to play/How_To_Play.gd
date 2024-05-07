extends Node2D

func _ready():
	start_dialog()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func start_dialog():
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.start("How To Play")

func _on_timeline_ended():
	Dialogic.timeline_ended.disconnect(_on_timeline_ended)
	LoadingScreen.load_scence("res://Assets/Scences/UI/Character_Name/Player_Name.tscn")

		

	
	
	
	
