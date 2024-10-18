class_name Data_Progress
extends Resource

@export_category("Save Progress")
@export var player_position: Vector2
@export var player_name : String
@export var player_biome_location : String
@export var player_health : int
@export var player_armor : int
@export var mission_wolf_rescued : int
@export var screnshoot_image : Image
@export var checkpoints : int
@export var stage : PackedScene

func UpdatePos(value : Vector2):
	player_position = value

func load_data()->void:
	var saveAndLoad = SaveProgress.new()
	
	var saveFile = saveAndLoad.load_data(saveAndLoad.SAVE_PATH, get_resource_name())
	if not saveFile: return
	
	player_position = saveFile.player_position
	player_name = saveFile.player_name
	player_biome_location = saveFile.player_biome_location 
	player_health = saveFile.player_health
	player_armor = saveFile.player_armor
	mission_wolf_rescued = saveFile.mission_wolf_rescued
	screnshoot_image = saveFile.screnshoot_image 
	checkpoints = saveFile.checkpoints
	stage = saveFile.stage
	
func get_resource_name()->String:
	return resource_path.get_file()
