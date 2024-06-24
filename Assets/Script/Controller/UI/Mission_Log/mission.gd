class_name mission_log
extends Control

@onready var Total_Wolf_Rescue = $VBoxContainer/TLT_WR
@onready var total_enemy_executed = $VBoxContainer/TLT_EE
@onready var total_boss_eleminated = $VBoxContainer/TLT_BE
var player = Player.new()
#var wolves = 
#var bos = 
#var enemy = 

func _ready():
	if player.getter_location() == "Taiga":
		Total_Wolf_Rescue.set_text("" + "/" + str(10))
		total_boss_eleminated.set_text( "" + "/" + str(10))
		total_enemy_executed.set_text("" + "/" + str(20))	
	elif player.getter_location() == "Tundra":
		Total_Wolf_Rescue.set_text(""+"/"+str(5))
		total_boss_eleminated.set_text(""+"/"+str(5))
		total_enemy_executed.set_text(""+"/"+str(10))	
	elif player.getter_location() == "Grassland":
		Total_Wolf_Rescue.set_text(""+"/"+str(8))
		total_boss_eleminated.set_text(""+"/"+str(8))
		total_enemy_executed.set_text(""+"/"+str(0))	
	else :
		Total_Wolf_Rescue.set_text(""+"/"+str(4))
		total_boss_eleminated.set_text(""+"/"+str(4))
		total_enemy_executed.set_text(""+"/"+str(8))	
		

