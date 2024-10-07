extends Node
func _ready():
	change_Scence()

func change_Scence():
	$AnimationPlayer.play("Fade_In")
	await get_tree().create_timer(6).timeout
	$AnimationPlayer.play("Fade_Out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://Assets/Scences/UI/Main_Menu/main_menu.tscn")
