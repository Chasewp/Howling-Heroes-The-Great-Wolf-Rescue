class_name ProgressedGame
extends Resource

@export_category("Save Data")

@export var player_position: Vector2
@export var speed :float= 8 
@export var player_name : String
@export var player_biome_location : String
@export var player_health : int
@export var player_armor : int
@export var mission_wolf_rescued : int
#@export var mmission
# @export var health : int
#Save data for all dynamic part of the Stages


func UpdatePos(value : Vector2):
	player_position = value


	
