class_name mission_log
extends Control

@onready var Total_Wolf_Rescue = $VBoxContainer/TLT_WR
@onready var total_enemy_executed = $VBoxContainer/TLT_EE
@onready var total_boss_eleminated = $VBoxContainer/TLT_BE



func _ready():
	if user.getter_location() == "Taiga":
		Total_Wolf_Rescue.set_text(str(1))
		total_boss_eleminated.set_text(str(2))
		total_boss_eleminated.set_text(str(1))
