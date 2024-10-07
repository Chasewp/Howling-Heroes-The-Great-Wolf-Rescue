class_name Player
extends CharacterBody2D

# Variables class
@export var name_character : String : set = setter_name, get= getter_name
@export var health : int : set = setter_health, get= getter_health
@export var location : String : set = setter_location, get=getter_location
@export var speed : int : set = setter_speed, get = getteer_speed
@export var xpos : int : set = setter_Xpos, get = getter_Xpos
@export var ypos : int : set = setter_Ypos, get = getter_Ypos

#Variables Scence Tree Node Reffrence 
@onready var Wolf_Almanac_Menu = $"Wolf almanac/WolfAlmanacIdex"

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


func ready():
	pass

func moveCharacter():
	pass
func is_Dead():
	pass
