extends Node2D

@export var _victory : AudioStream
@export var _game_over : AudioStream
@onready var _camera : Camera2D = $Camera2D
@onready var _player_character : CharacterBody2D = $Player
@onready var _game_controller : Node = $Player/Game_Control
@onready var _inventory_menu : Control = $User_Interface/Inventory_UI
@onready var _pause_menu : Control = $User_Interface/PauseMenu
@onready var _inventory : Control = $User_Interface/Inventory_UI



var _stage : Area2D
var save_progress = ProgressedGame.new()
var _crosshair = load("res://Assets/Image/images/Cursor/1x/Layer 1.png")
var _Stage = Area2D

func _ready():
	Input.set_custom_mouse_cursor(_crosshair)
	_init_boundaries()
	_spawn_player()
	_game_controller.set_enable(true)
	
func _init_boundaries():
	# get the level boundaries from the level
	var min_boundary : Vector2 = _Stage.get_min()
	var max_boundary : Vector2 = _Stage.get_max()
	# and tell them to the camera and player character
	_camera.set_bounds(min_boundary, max_boundary)
	_player_character.set_bounds(min_boundary, max_boundary)
	
func _spawn_player():
	_player_character.global_position = _stage.get_checkpoint_position(save_progress.checkpoints)
	_player_character.velocity = Vector2.ZERO

func _load_stage():
	pass
