extends Control

@onready var character_name = $CanvasLayer/Character_Name
@onready var biome_location = $CanvasLayer/Biome_Location
@onready var Health = $CanvasLayer/Health_Bar
@onready var Armor = $CanvasLayer/Armor_Bar
@onready var Coordinate = $CanvasLayer/Coordinate
var _char = Player.new()

func _ready():
	character_name.set_text(_char.getter_name())
	biome_location.set_text("Location : "+ _char.getter_location())
	Health.set_value_no_signal(_char.get_health())
	Armor.set_value_no_signal(_char.getter_Armor())
	#Coordinate.set_text(user.)
