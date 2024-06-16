class_name ProgressedGame
extends Resource

@export_category("Save Data")
#Stage Biomes 
@export var Biomes_path : String
#Player Coordinates
@export var player_position: Vector2
#Player Health
@export var player_health : int
#Player Armor
@export var player_armor : int
#Save data for all dynamic part of the Stages
@export var save_data:Array[SavedData]
