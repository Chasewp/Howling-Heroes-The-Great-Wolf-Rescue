class_name Data_Progress
extends Resource

@export var player_position: Vector2
@export var level_path:String
@export var player_name : String
@export var player_health : int
@export var player_armor : int
@export var player_biome_location : String
@export var mission_wolf_rescued : int
@export var mission_boss_elimated : int
@export var mission_enemy_elimated : int
@export var ammmo : int = 30
@export var mag : int = 150
@export var saved_data:Array[SavedData]=[]

func UpdatePos(value : Vector2):
	player_position = value

func add_magazine():
	if mag <=150:
		mag += 30
