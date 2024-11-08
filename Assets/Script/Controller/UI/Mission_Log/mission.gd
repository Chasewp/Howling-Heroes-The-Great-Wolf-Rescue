class_name mission_log
extends Control



@onready var Total_Wolf_Rescue = %TLT_WR
@onready var total_enemy_executed = %TLT_EE
@onready var total_boss_eleminated = %TLT_BE
@export var wolf_total_taiga : int
@export var boss_total_taiga : int
@export var enemy_total_taiga : int
@export var wolf_total_tundra : int
@export var boss_total_tundra : int
@export var enemy_total_tundra : int
@export var wolf_total_grassland : int
@export var boss_total_grassland : int
@export var enemy_total_grassland : int
@export var wolf_total_dessert : int
@export var boss_total_dessert : int
@export var enemy_total_dessert : int

var data = load("user://Save/Progress/Save_Progress.tres")


func _ready():
	if data is Data_Progress:
		player_singleton.setter_location(data.player_biome_location)
		if player_singleton.getter_location() == "Taiga":
			mission_data_stat.set_total_wolves_rescued(wolf_total_taiga)
			mission_data_stat.set_total_boss_killed(boss_total_taiga)
			mission_data_stat.set_total_enemies_killed(enemy_total_taiga)
			Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.get_total_wolves_rescued()))
			total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.get_total_boss_killed()))
			total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.get_total_enemies_killed()))
	
		elif player_singleton.location == "Tundra":
			mission_data_stat.set_total_wolves_rescued(wolf_total_tundra)
			mission_data_stat.set_total_boss_killed(boss_total_tundra)       
			mission_data_stat.set_total_enemies_killed(enemy_total_tundra)
			Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.get_total_wolves_rescued()))
			total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.get_total_boss_killed()))
			total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.get_total_enemies_killed()))
		elif player_singleton.location == "Grassland":
			mission_data_stat.set_total_wolves_rescued(wolf_total_grassland)
			mission_data_stat.set_total_boss_killed(boss_total_grassland)
			mission_data_stat.set_total_enemies_killed(enemy_total_grassland)
			Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.get_total_wolves_rescued()))
			total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.get_total_boss_killed()))
			total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.get_total_enemies_killed()))	
		else :
			mission_data_stat.set_total_wolves_rescued(wolf_total_dessert)
			mission_data_stat.set_total_boss_killed(boss_total_dessert)
			mission_data_stat.set_total_enemies_killed(enemy_total_dessert)
			Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.get_total_wolves_rescued()))
			total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.get_total_boss_killed()))
			total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.get_total_enemies_killed()))	
	else : 
		print("Failed to load resource data.")
	


	
