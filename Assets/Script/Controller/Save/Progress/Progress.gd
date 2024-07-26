class_name ProgressedGame
extends Resource

@export_category("Save Data")
@export var player_position: Vector2
@export var speed :float= 8 
@export var player_name : String
@export var player_biome_location : String
@export var player_health : int
@export var player_armor : int

#Save data for all dynamic part of the Stages
@export var save_data:Array[SavedData] = []


func UpdatePos(value : Vector2):
	player_position = value


	
