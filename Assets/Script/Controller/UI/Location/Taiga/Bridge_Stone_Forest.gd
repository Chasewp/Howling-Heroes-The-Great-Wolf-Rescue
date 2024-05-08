class_name taiga_biome
extends Node2D

var crosshair = load("res://Assets/Image/images/Cursor/1x/Layer 1.png")

func _ready():
	Input.set_custom_mouse_cursor(crosshair)
	

