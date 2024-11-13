class_name Player_Singleton
extends Node
 
# Variables class
@export var name_character : String :
	set = setter_name, 
	get= getter_name
@export var health : int : 
	set = setter_health, 
	get= getter_health
@export var armor : int : 
	set = setter_armor, 
	get = getter_armor
@export var location : String : 
	set = setter_location, 
	get=getter_location
	
@export var ammo_bullets : int :
	set = setter_ammo_bullet,
	get = getter_ammo_bullet
	
@export var magazine_stock : int :
	set = setter_magazine_stock,
	get = getter_magazine_stock

@export var is_machete_equip : bool :
	set = setter_machete_equip,
	get = getter_machete_equip
	
@export var is_burst_garou_equip : bool:
	set = setter_brust_garou_equip,
	get = getter_brust_garou_equip
	


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
	
#Setter Ammo
func setter_ammo_bullet(ammo):
	ammo_bullets = ammo

#Getter  Ammo
func getter_ammo_bullet():
	return ammo_bullets

#Setter Magazine
func setter_magazine_stock(mag):
	magazine_stock = mag

#Getter Magazine
func getter_magazine_stock():
	return magazine_stock

#Setter Machete
func setter_machete_equip(machete):
	is_machete_equip = machete

#Getter Machete
func getter_machete_equip():
	return is_machete_equip

#Setter Brust Garou
func setter_brust_garou_equip(brust_garou):
	is_burst_garou_equip = brust_garou

#Getter Burst Garou
func getter_brust_garou_equip():
	return is_burst_garou_equip

	
