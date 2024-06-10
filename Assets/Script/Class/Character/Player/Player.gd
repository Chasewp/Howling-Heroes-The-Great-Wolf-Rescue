class_name Player extends Character

# Variables class
@export var _name_character : String : set = setter_name, get= getter_name
@export var _location : String : set = setter_location, get=getter_location
#@export var _xpos : int : set = setter_Xpos, get = getter_Xpos
#@export var _ypos : int : set = setter_Ypos, get = getter_Ypos
@export var _Armor : int : set = setter_Armor, get = getter_Armor
@export var _has_machete : bool

var Player_Data =  Save_Progress_Player.new()
var _machete : RigidBody2D
var _riffle : RigidBody2D
var _save_file_player_save_path = "user://Save/Progress/"
var _save_file_player_name = "saveprogress_player.res"

#Variables Scence Tree Node Reffrence 
@onready var Wolf_Almanac_Menu = $"Wolf almanac"
@onready var Inventory_UI = $Inventory
@onready var _attack_input_buffer : Timer = $Hit_Box/InputBuffer
@onready var _cooldown : Timer = $Hit_Box/Cooldown

#Warning Info
@warning_ignore("unused_private_class_variable")

#Vector2
#Setter Name Character
func setter_name(name):
	_name_character = name
	
#Getter Name Character
func getter_name():
	return _name_character
	
	
#Setter Location
func setter_location(lct):
	_location = lct

#Getter Location
func getter_location():
	return _location
	

#Setter Armor
func setter_Armor(arm):
	_Armor = arm
	
func getter_Armor():
	return _Armor



#Player Input	
func _input(event):
	#Open Wolf Almanac
	if event.is_action_pressed("open_wolf_almanac"):
		Wolf_Almanac_Menu.visible = !Wolf_Almanac_Menu.visible
		get_tree().paused = !get_tree().paused
	
	#Open Inventory
	if event.is_action_pressed("open_inventory"):
		Inventory_UI.visible = !Inventory_UI.visible
		get_tree().paused = !get_tree().paused
		
	#Jump
	if event.is_action_pressed("Jump"):
		super.jump()
	
	if event.is_action_released("Jump")	:
		super.stop_jump()
	
func is_Dead():
	#get_tree().change_scene_to_file("res://Assets/Scences/UI/Game over/Game_Over.tscn")
	super._die()
	
func _on_hit_box_area_entered(area : Area2D):
	if _is_dead || not _is_attacking:
		return
	if not is_on_floor() && area.global_position.y > global_position.y:
		velocity.y = _jump_velocity / 2
	super._on_hit_box_area_entered(area)
	
func _process(delta:float):	
	super.run(Input.get_axis("move_left","move_right"))
	Player_Data.Update_Coordinate(self.position)
	
func _ready():
	verify_save_directory(_save_file_player_save_path)

func verify_save_directory(path: String):
	DirAccess.make_dir_absolute(path)

func save():
	ResourceSaver.save(Player_Data, _save_file_player_name + _save_file_player_name)
	print("save")

#func load_data():
	#playerData = ResourceLoader.load(save_file_path + save_file_name).duplicate(true)
	#on_start_load()
	#print("loaded")
