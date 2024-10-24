class_name Player_Singleton
extends Node
 
# Variables class
@export var name_character : String : set = setter_name, get= getter_name
@export var health : int : set = setter_health, get= getter_health
@export var armor : int : set = setter_armor, get = getter_armor
@export var location : String : set = setter_location, get=getter_location
var machete_equip : bool
var burst_garou : bool

#Setter Name Character
func setter_name(nm):
	name_character = nm
	
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
	

#Setter Armor
func setter_armor(arm):
	armor = arm

#Getter Armor
func getter_armor():
	return armor
	

