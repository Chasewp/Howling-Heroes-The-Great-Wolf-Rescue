class_name Player
extends CharacterBody2D


signal update_coordinate
var Progress = ProgressedGame.new()

# Variables class
@export var name_character : String : set = setter_name, get= getter_name
@export var health : int : set = setter_health, get= getter_health
@export var armor : int : set = setter_armor, get = getter_armor
@export var location : String : set = setter_location, get=getter_location
@export var speed : int : set = setter_speed, get = getteer_speed
@export var xpos : int : set = setter_Xpos, get = getter_Xpos
@export var ypos : int : set = setter_Ypos, get = getter_Ypos

#Variables Scence Tree Node Reffrence 
@onready var Wolf_Almanac_Menu = $"Wolf almanac/WolfAlmanacIdex"
var game_over = preload("res://Assets/Scences/UI/Game over/Game_Over.tscn").instantiate()

#Vector2
#Setter Name Character
func setter_name(name):
	name_character = name
	
#Getter Name Character
func getter_name():
	return name_character
	
#Setter Health
func setter_health(hlt):
	health = hlt

#Getter Health
func getter_health():
	return health
	
#Setter Location
func setter_location(lct):
	location = lct

#Getter Location
func getter_location():
	return location
	
#Setter Speed
func setter_speed(spd):
	speed = spd
	
#Getter Speed
func getteer_speed():
	return speed
	
#Setter Xpos
func setter_Xpos(xloc):
	xpos = xloc

#Getter Xpos
func getter_Xpos():
	return xpos

#Setter YPost
func setter_Ypos(yloc):
	ypos = yloc

#Getter YPost
func getter_Ypos():
	return ypos

#Setter Armor
func setter_armor(arm):
	armor = arm

#Getter Armor
func getter_armor():
	return armor
	
func ready():
	pass
	#getter_name()
	#getter_location()
	#getter_health()
	

func moveCharacter():
	pass

func _process(delta):
	emit_signal("update_coordinate",self.position)	
	Progress.UpdatePos(self.position)
	
func is_Dead():
	if getter_health()==0:
		get_tree().change_scene_to_packed(game_over)
		get_tree().root.add_child(game_over)
		
func _start_load():
	self.position = Progress.player_position
