extends Control

@onready var character_name = $CanvasLayer/Character_Name
@onready var biome_location = $CanvasLayer/Biome_Location

func _ready():
	character_name.set_text(user.getter_name())
	biome_location.set_text("Location : "+user.getter_location())
