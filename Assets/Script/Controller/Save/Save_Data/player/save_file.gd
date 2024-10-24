extends Node
class_name SaveLoadManagerFile

@onready var play:Players =  %Player as Players
@onready var _world_root:WorldRoot = %WorldRoot as WorldRoot


#func _ready():
	#new_game()
# Function to save game data
func save_game():
	var save_progress: Data_Progress = Data_Progress.new()
	
		# save the path to the currently loaded level
	save_progress.level_path = _world_root.get_current_level_path()
	
	#store player health, position, biome_location, armor, mission log, ammo and mag
	save_progress.player_position = play.global_position
	save_progress.player_name = player_singleton.name_character
	save_progress.player_biome_location = player_singleton.location
	save_progress.player_health = player_singleton.health
	save_progress.player_armor = player_singleton.armor
	save_progress.mission_wolf_rescued = mission_data_stat.wolf_rescued
	save_progress.mission_boss_elimated = mission_data_stat.boss_kill
	save_progress.mission_enemy_elimated = mission_data_stat.enemy_kill

	
	# collect all dynamic game elements	
	var saved_data:Array[SavedData] = []
	get_tree().call_group("game_events", "on_save_game", saved_data)
	
	# store them in the savegame
	save_progress.saved_data = saved_data
	
	# write the savegame to disk
	ResourceSaver.save(save_progress, "user://Save/Progress/Save_Progress.tres")
	print("Game saved successfully.")


# Function to load game data
func load_game():
	# fix any paths that may be broken after a game update
	var fixing_path = Path_Fixer.fix_paths("user://Save/Progress/Save_Progress.tres")
	print("Loading from ", fixing_path)
	
	# load the savegame securely
	var save_progress:Data_Progress = SafeResourceLoader.load(fixing_path) as Data_Progress
	if save_progress == null:
		return
	
	# first restore the level
	# this may take a few frames, so we wait with await
	await _world_root.load_level_async(save_progress.level_path)
	
	# clear the stage
	get_tree().call_group("game_events", "on_before_load_game")
	
	# restore player position
	play.global_position = save_progress.player_position
	# restore player name
	player_singleton.name_character = save_progress.player_name 
	#restore player biome location
	player_singleton.location = save_progress.player_biome_location
	
	# verify & restore player health
	player_singleton.health = min(save_progress.player_health, 100)
	# verify & restore player armor
	player_singleton.armor = min(save_progress.player_armor,100)
	# verify & restore player ammo
	play.bullet = min(save_progress.ammmo,30)
	# verify & restore player Mag
	play.magazine = min(save_progress.mag,150)
	
	# restore all dynamic game elements	
	for item in save_progress.saved_data:
		# skip over data we don't use anymore
		if item is UnusedData:
			continue
		
		# load the scene of the saved item and create a new instance
		var scene := load(item.scene_path) as PackedScene
		var restored_node = scene.instantiate()
		# add it to the world root
		_world_root.add_child(restored_node)
		# and run any custom load logic
		if restored_node.has_method("on_load_game"):
			restored_node.on_load_game(item)
	
	
func save_file_exist()->bool:
	return ResourceLoader.exists("user://Save/Progress/Save_Progress.tres")
	
func new_game():
	var save_progress: Data_Progress = Data_Progress.new()
	
	
