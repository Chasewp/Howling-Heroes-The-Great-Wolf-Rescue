extends CharacterBody2D
 

# Variables class
@export var name_character : String : set = setter_name, get= getter_name
@export var health : int : set = setter_health, get= getter_health
@export var armor : int : set = setter_armor, get = getter_armor
@export var location : String : set = setter_location, get=getter_location
@export var speed : int : set = setter_speed, get = getteer_speed
@export var xpos : int : set = setter_Xpos, get = getter_Xpos
@export var ypos : int : set = setter_Ypos, get = getter_Ypos


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
	

