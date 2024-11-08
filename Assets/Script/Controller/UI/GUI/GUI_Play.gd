extends Control

@onready var character_name = $Character_Name
@onready var biome_location = $Biome_Location
@onready var Health = $Health_Bar
@onready var Armor = $Armor_Bar


var save = load("user://Save/Progress/Save_Progress.tres")

func _ready():
	if save is Data_Progress:
		player_singleton.setter_name(save.player_name)
		player_singleton.setter_armor(save.player_armor)
		player_singleton.setter_health(save.player_health)
		player_singleton.setter_location(save.player_biome_location)
		character_name.set_text(player_singleton.getter_name())
		biome_location.set_text("Location : "+ player_singleton.getter_location())
		Health.set_value_no_signal(player_singleton.getter_health())
		Armor.set_value_no_signal(player_singleton.getter_armor())
	else:
		print("Failed to load resource data.")
	
	
func _on_player_health_changed(percentage:float):
	Health.set_value_no_signal(percentage)
	
func _on_player_armor_changed(percentage:float):
	Armor.set_value_no_signal(percentage)


