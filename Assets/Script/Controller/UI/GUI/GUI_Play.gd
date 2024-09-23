extends Control

@onready var character_name = $Character_Name
@onready var biome_location = $Biome_Location
@onready var Health = $Health_Bar
@onready var Armor = $Armor_Bar
@onready var pause = $PauseMenu

var pausemenu = load("res://Assets/Scences/UI/Pause Menu/Pause_Menu.tscn").instantiate()
func _ready():
	character_name.set_text(player.getter_name())
	biome_location.set_text("Location : "+ player.getter_location())
	Health.set_value_no_signal(player.getter_health())
	Armor.set_value_no_signal(player.getter_armor())

func _input(_event):
	if Input.is_action_just_pressed("pause"):
		pause.visible = !pause.visible
		var img = get_viewport().get_texture().get_image()
		pausemenu.set_save_game_image(img)
		
	
func _on_player_health_changed(percentage:float):
	Health.set_value_no_signal(percentage)
	
func _on_player_armor_changed(percentage:float):
	Armor.set_value_no_signal(percentage)


