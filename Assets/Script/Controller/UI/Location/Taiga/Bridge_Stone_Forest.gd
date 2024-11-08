extends Node2D

@export var _victory : AudioStream
@export var _game_over : AudioStream
@onready var _camera : Camera2D = $Camera2D
@onready var _player_character : CharacterBody2D = $Player
@onready var _game_controller : Node = $Player/Game_Control
@onready var _inventory_menu : Control = $User_Interface/Inventory_UI
@onready var _pause_menu : Control = $User_Interface/PauseMenu
@onready var _inventory : Control = $User_Interface/Inventory_UI
@onready var _game_over_menu : Control = $User_Interface/GameOver
@onready var _alamanac_index : Control = $User_Interface/Alamanac_Main_Menu
@onready var _fade: ColorRect = $Fade



var save_progress = Data_Progress.new()
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
	_player_character.global_position = _Stage.get_checkpoint_position(save_progress.checkpoints)
	_player_character.velocity = Vector2.ZERO

func _load_stage():
	_Stage = load("res://Assets/Scences/Stages/"+str(save_progress.player_biome_location)+"level"+str(save_progress.Worlds) + "-" +str(save_progress.Level)+".tcsn")

	
func game_over():
	_game_over.play()
	_game_over_menu.visible = true
	
func _return_to_check_points():
	_player_character.set_enabled(false)
	await _fade.fade_to_black()
	_spawn_player()
	_player_character.revive()
	_player_character.set_enambled(true)


func _on_inventory_ui_closed():
	get_tree().paused = false


func _on_inventory_ui_opened():
	get_tree().paused = true
