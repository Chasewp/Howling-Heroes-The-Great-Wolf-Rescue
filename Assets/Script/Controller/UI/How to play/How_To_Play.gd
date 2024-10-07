extends Node2D

func _ready():
	start_dialog()
	
func start_dialog():
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.start("How To Play")

func _on_timeline_ended():
	Dialogic.timeline_ended.disconnect(_on_timeline_ended)
	LoadingScreen.load_scence("res://Assets/Scences/UI/Word map/World Map.tscn")

		

	
	
	
	
