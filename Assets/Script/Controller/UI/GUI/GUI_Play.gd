extends Control

@onready var character_name = $CanvasLayer/Character_Name
@onready var biome_location = $CanvasLayer/Biome_Location
@onready var Health = $CanvasLayer/Health_Bar
@onready var Armor = $CanvasLayer/Armor_Bar
@onready var Coordinate = $CanvasLayer/Coordinate


func _ready():
	character_name.set_text(player.getter_name())
	biome_location.set_text("Location : "+ player.getter_location())
	Health.set_value_no_signal(player.getter_health())
	Armor.set_value_no_signal(player.getter_armor())
	#Coordinate.set_text(user.)
