extends Node2D

#Char
#var Blizzard_Wolf_Smith := preload("res://Assets/Scence/Character/Player/Male_Blizzard/Blizzard.tscn")
#var Luna_Wolf_Smith := preload("res://Assets/Scence/Character/Player/Female_Luna/Luna.tscn")


#Music
#onready var Music = $Backsound
#onready var Blizzard = $CanvasLayer/Blizzard_Button_Selector/Blizzard_Button
#onready var Luna = $CanvasLayer/Luna_Button_Selector/Luna_Button

#Backsound Music
func _ready():
	pass 
#	Music.play()
	
func _on_Blizzard_Button_Selector_pressed() -> void:
	pass
	#var Blizzard := Blizzard_Wolf_Smith.instance()
	#get_tree().current_scene.add_child(Blizzard)
	#$CanvasLayer.queue_free()
	#Music.stop()
	
	
func _on_Luna_Button_Selector_pressed() -> void:
	pass
	#var Luna : = Luna_Wolf_Smith.instance()
	#get_tree().current_scene.add_child(Luna)
	#$CanvasLayer.queue_free()
	#Music.stop()


func _on_Blizzard_Button_Selector_mouse_entered():
	pass
#	Blizzard.play()


func _on_Luna_Button_Selector_mouse_entered():
	pass
#Luna.play()
