extends Node
func _ready():
	#Hide Cursor 
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	change_scence()
	
func change_scence():
	$AnimationPlayer.play("Fade_In")
	await get_tree().create_timer(6).timeout
	$AnimationPlayer.play("Fade_Out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Splash/Splash_Screen.tscn")
