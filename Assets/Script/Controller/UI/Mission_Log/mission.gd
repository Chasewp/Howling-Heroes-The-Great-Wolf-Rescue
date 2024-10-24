class_name mission_log
extends Control



@onready var Total_Wolf_Rescue = $VBoxContainer/TLT_WR
@onready var total_enemy_executed = $VBoxContainer/TLT_EE
@onready var total_boss_eleminated = $VBoxContainer/TLT_BE

var data = Data_Progress.new()


func _ready():
	if data.player_biome_location == "Taiga":
		Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.set_total_wolf_rescue(10)))
		total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.set_total_boss_killed(10)))
		total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.set_total_enemy_kills(20)))
		print(str(mission_data_stat.total_wolf_rescued) + "\n" + str(mission_data_stat.total_boss_kills)+"\n"+str(mission_data_stat.total_enemy_kills))	
	elif data.player_biome_location == "Tundra":
		Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.set_total_wolf_rescue(5)))
		total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.set_total_boss_killed(5)))
		total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.set_total_enemy_kills(10)))	
	elif data.player_biome_location == "Grassland":
		Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.set_total_wolf_rescue(8)))
		total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.set_total_boss_killed(8)))
		total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.set_total_enemy_kills(16)))	
	else :
		Total_Wolf_Rescue.set_text(str(mission_data_stat.wolf_rescued) + "/" + str(mission_data_stat.set_total_wolf_rescue(4)))
		total_boss_eleminated.set_text(str(mission_data_stat.boss_kill) + "/" + str(mission_data_stat.set_total_boss_killed(4)))
		total_enemy_executed.set_text(str(mission_data_stat.enemy_kill) + "/" + str(mission_data_stat.set_total_enemy_kills(8)))	

		
	


	
