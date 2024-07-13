class_name Wolf_Rescue
extends Node

#Public Variables 
@export var wolf_name : String:set=Setter_Wolf_Name,get = Getter_Wolf_Name
@export var species : String : set = Setter_Wolf_Species,get = Getter_Wolf_Species
@export var morphology : String : set = Setter_Wolf_Morphology,get = Getter_Wolf_Morphology

#Private Variables
var _cage : Node2D

#Setter Wolf Name
func Setter_Wolf_Name(swn):
	wolf_name = swn

#Getter Wolf Name
func Getter_Wolf_Name():
	return wolf_name
	
#Setter Wolf Species
func Setter_Wolf_Species(sws):
	species = sws
	
#Getter Wolf Species
func Getter_Wolf_Species():
	return species
	
#Setter Wolf Morphology
func Setter_Wolf_Morphology(swm):
	morphology = swm
	
#Getter Wolf Morphology
func Getter_Wolf_Morphology():
	return morphology
	
#open cage
func open_cage():
	pass



