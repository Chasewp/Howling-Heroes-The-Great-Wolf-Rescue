extends Node2D

@onready var _world_root:WorldRoot = %WorldRoot
@onready var _save_progress:SaveLoadManagerFile =%SaveLoadManagerFile
@onready var _pause_screen = %PauseMenu
@onready var _alamac = %Alamanac_Main_Menu
var _paused:bool = false

var cros_hair_cursor = load("res://Assets/Image/Cursor/Cross_Hair/Layer 1.png")
var hand_cursor = load("res://Assets/Image/Cursor/hand_paw.png")
func _ready():
	Input.set_custom_mouse_cursor(cros_hair_cursor)
	_world_root.level_exit_reached.connect(_on_level_exit_reached)
	
func _on_level_exit_reached(next_level):
	_world_root.load_level_async(next_level)
	
	
func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		_pause(not _paused)
	if Input.is_action_just_pressed("Quick_Save"):
		_save_progress.save_game()
	if Input.is_action_just_pressed("Quick_Load"):
		_save_progress.load_game()
	if Input.is_action_just_pressed("open_wolf_almanac"):
		_pause_alamac(not _paused)
			
func _pause(value:bool):
	_paused = value
	_pause_screen.visible = _paused
	get_tree().paused = _paused

func _pause_alamac(value:bool):
	_paused = value
	_alamac.visible = _paused
	get_tree().paused = _paused


# Called when the save game button is pressed
func _on_save_game():
	print("Save game!")
	_save_progress.save_game()
	
# Called when the load game button is pressed
func _on_load_game():
	print("Load game!")
	_save_progress.load_game()
	# _pause(true)
	
func mouse_exited():
	Input.set_custom_mouse_cursor(cros_hair_cursor)

func mouse_entered():
	Input.set_custom_mouse_cursor(hand_cursor)
