extends Control

@onready var character_name = $Character_Name
@onready var biome_location = $Biome_Location
@onready var Health = $Health_Bar
@onready var Armor = $Armor_Bar
@onready var pause = $PauseMenu

var save_progress = preload("user://Save/Progress/Save_Progress.tres")

func _ready():
	character_name.set_text(save_progress.player_name)
	biome_location.set_text("Location : "+ save_progress.player_biome_location)
	Health.set_value_no_signal(save_progress.player_health)
	Armor.set_value_no_signal(save_progress.player_armor)
	
	
func _on_player_health_changed(percentage:float):
	Health.set_value_no_signal(percentage)
	
func _on_player_armor_changed(percentage:float):
	Armor.set_value_no_signal(percentage)


