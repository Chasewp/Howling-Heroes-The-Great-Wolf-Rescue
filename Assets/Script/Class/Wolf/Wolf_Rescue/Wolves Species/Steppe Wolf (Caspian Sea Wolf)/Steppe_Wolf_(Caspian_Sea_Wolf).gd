class_name Steppe_Wolf
extends CharacterBody2D

signal rescue

#var data
@export var howl: AudioStream
@export var get_wolf: AudioStream
var Steppe_Wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Steppe Wolf (Caspian Sea Wolf)/steppe_wolf_(caspian_sea_wolf)_almanac.tscn").instantiate()

#var node
@onready var rescue_area = $Area2D
@onready var howling = $Howling
@onready var sprites = $AnimatedSprite2D

func _on_area_2d_body_entered(body):
	if body as Players:
		_on_rescue()
		sprites.play("Howling")
		howl.play()
		if howling.finished:
			get_tree().root.remove_child(self)
			get_wolf.play()
		WolfData._set_Steppe_Wolf_Rescue_Status(true)
		#Image
		almanac.setter_Wolf_Image(WolfData._get_Steppe_Wolf_Image_Path())
		#Name
		almanac.setter_Wolf_Name(WolfData._get_Steppe_Wolf_Name())
		#Species
		almanac.setter_Wolf_Species(WolfData._get_Steppe_Wolf_Species())
		#Height
		almanac.setter_Wolf_Height(WolfData._get_Steppe_Wolf_Height())
		#Weight
		almanac.setter_Wolf_Weight(WolfData._get_Steppe_Wolf_Weight())
		#Lenght
		almanac.setter_Wolf_Lenght(WolfData._get_Steppe_Wolf_Lenght())
		#Conservation Status
		almanac.setter_Wolf_Conservation_Status(WolfData._get_Steppe_Wolf_Conservation_Status())
		#Region
		almanac.setter_Wolf_Region(WolfData._get_Steppe_Wolf_Location())
		#Morphology
		almanac.setter_Wolf_Morphology(WolfData._get_Steppe_Wolf_Morphology())
		#Diets
		almanac.setter_Wolf_Diets(WolfData._get_Steppe_Wolf_Diets())
		get_tree().change_scene_to_packed(Steppe_Wolf_almanac)
		get_tree().root.add_child(Steppe_Wolf_almanac)
	
func _on_rescue():
	mission_data_stat.update_wolf_rescue()
