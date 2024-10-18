extends Node2D

func _ready():
	start_dialog()
	
func start_dialog():
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.start("Intro_Player")

func _on_timeline_ended():
	Dialogic.timeline_ended.disconnect(_on_timeline_ended)
	LoadingScreen.load_scence("res://Assets/Scences/UI/Character_Name/Player_Name.tscn")
