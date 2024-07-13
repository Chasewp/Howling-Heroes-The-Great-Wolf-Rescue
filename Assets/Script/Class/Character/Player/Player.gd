#class_name Player 
extends CharacterBody2D

# Variables class
@export var _name_character : String : set = setter_name, get= getter_name
@export var _location : String : set = setter_location, get=getter_location
@export var _health : int : set = setter_health, get = getter_health
#@export var coolingdown
@export var _Armor : int : set = setter_armor, get = getter_armor
#@export var _Bullets : PackedScene
#@export var _Biome_Stage : NodePath


#@export var _has_machete : bool

signal died()

var _machete : RigidBody2D
var _riffle : RigidBody2D


#Variables Scence Tree Node Reffrence 
#@onready var Wolf_Almanac_Menu = $"Wolf almanac"
#@onready var Inventory_UI = $Inventory
#@onready var _Projectiles_Spawns : Node2D = $"Brust Garou-Riffle-Player/Projectile"

#var _executed = false
#var _cooling_down : float = 0
#var _biomes_root : Node2D = null

func _ready():
	pass
	#_biomes_root = get_node(_Biome_Stage)
	
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
	
#Setter Health 
func setter_health(hlt):
	_health = hlt
	
#Getter Health
func getter_health():
	return _health
	
#Setter Armor
func setter_armor(arm):
	_Armor = arm

#Getter Armor
func getter_armor():
	return _Armor

#func is_Dead():
		#pass
		#
#func take_damage(damage:float):
	#pass
	

	

	

