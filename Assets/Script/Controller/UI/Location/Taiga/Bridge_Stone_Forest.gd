class_name game
extends Node2D

@export var _victory : AudioStream
@export var _death : AudioStream
@export var _game_over : AudioStream

##AAriq
@onready var _player_character : CharacterBody2D = $Player
#@onready var game_controller : Node = $Player/Game_Control

var _crosshair = load("res://Assets/Image/images/Cursor/1x/Layer 1.png")
var _Stage = Area2D

func _ready():
	Input.set_custom_mouse_cursor(_crosshair)
	#_init_boundaries()
	
	

	
#func _init_boundaries():
	## get the level boundaries from the level
	#var min_boundary : Vector2 = _Stage.get_min()
	#var max_boundary : Vector2 = _Stage.get_max()
	## and tell them to the camera and player character
	#_camera.set_bounds(min_boundary, max_boundary)
	#_player_character.set_bounds(min_boundary, max_boundary)
	
func _spawn_player():
	pass
	#_player_character.global_position = _level.get_checkpoint_position(Save.data.checkpoint)
	#_player_character.velocity = Vector2.ZERO

