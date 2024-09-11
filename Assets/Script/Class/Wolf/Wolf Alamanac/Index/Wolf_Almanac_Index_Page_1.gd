"""Wolf Almanac Main Menu Page 1"""
class_name Wolf_Index_Page_1
extends Node2D

"""Wolves Pictures"""
#Wolf Picture 1 - Alaska Tundra Wolf
@onready var alaskantundrawolfimage = $"Background/Almanac Index/WolfVBoxContainer1/Wolf 1"
#Wolf Picture 2 - Alexander Archipelago Wolf 
@onready var alexanderarchipelagowolfimage = $"Background/Almanac Index/WolfVBoxContainer2/Wolf 2"
#Wolf Picture 3 - Arabian Wolf 
@onready var arabianwolfimage=$"Background/Almanac Index/WolfVBoxContainer3/Wolf 3"

"""Wolves Labels"""
#Wolf Label 1 - Alaskan Tundra Wolf
@onready var alaskantundrawolflabel = $"Background/Almanac Index/WolfVBoxContainer1/Label_Wolf_1"
#Wolf Label 2 - Alexander Archipelago Wolf
@onready var alexanderarchipelagowolflabel = $"Background/Almanac Index/WolfVBoxContainer2/Label_Wolf_2"
#Wolf Label 3 - Arabian Wolf
@onready var arabianwolflabel = $"Background/Almanac Index/WolfVBoxContainer3/Label_Wolf_3"

"""Inisiate Page"""
var book_almanac1 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac2 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac3 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var alaska_tundra_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Alaska Tundra Wolf/alaskan_tundra_wolf_almanac.tscn").instantiate()
var alexander_archipelago_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Alexander Archipelago Wolf/alexander_archipelago_wolf_almanac.tscn").instantiate()
var arabian_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Arabian Wolf/arabian_wolf_almanac.tscn").instantiate()
#Button Click Sound
@onready var buttonsound = $Button_Click

"""Next Button"""
#Back Button Index
func _on_back_pressed():
	buttonsound.play()
	get_parent().remove_child(self)
	
"""Wolves Data"""
#Alaskan Tundra Wolf
func _alaskan_tundra_wolf_image():
	var image = Image.load_from_file(WolfData._get_Alaskan_Tundra_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	alaskantundrawolfimage.set_texture_normal(texture)
	alaskantundrawolfimage.disabled = false
	
func _alaskan_tundra_wolf_name():
	alaskantundrawolflabel.set_text(WolfData._get_Alaskan_Tundra_Wolf_Name())
	alaskantundrawolflabel.disabled = false
#######################################################################
#Alexander Archipelago Wolf
func _alexander_archipelago_wolf_image():
	var image = Image.load_from_file(WolfData._get_Alexander_Archipelago_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	alexanderarchipelagowolfimage.set_texture_normal(texture)

func _alexander_archipelago_wolf_name():
	alexanderarchipelagowolflabel.set_text(WolfData._get_Alexander_Archipelago_Wolf_Name())
#######################################################################
#Arabian Wolf
func _arabian_wolf_image():
	var image = Image.load_from_file(WolfData._get_Arabian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	arabianwolfimage.set_texture_normal(texture)
func _arabian_wolf_name():
	arabianwolflabel.set_text(WolfData._get_Arabian_Wolf_Name())

"""Into Wolf Almanac Book"""
#1
#Alaskan Tundra Wolf
func _on_alaskan_tundra_wolf_pressed_Image():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Alaskan_Tundra_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Alaskan_Tundra_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Alaskan_Tundra_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Alaskan_Tundra_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Alaskan_Tundra_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Alaskan_Tundra_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Alaskan_Tundra_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Alaskan_Tundra_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Alaskan_Tundra_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Alaskan_Tundra_Wolf_Diets())
	buttonsound.play()

	get_tree().change_scene_to_packed(alaska_tundra_wolf_almanac)
	get_tree().root.add_child(alaska_tundra_wolf_almanac)
	
func _on_alaskan_tundra_wolf_pressed_Label():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Alaskan_Tundra_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Alaskan_Tundra_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Alaskan_Tundra_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Alaskan_Tundra_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Alaskan_Tundra_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Alaskan_Tundra_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Alaskan_Tundra_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Alaskan_Tundra_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Alaskan_Tundra_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Alaskan_Tundra_Wolf_Diets())
	buttonsound.play()

	get_tree().change_scene_to_packed(book_almanac1)
	get_tree().root.add_child(book_almanac1)
########################################################################
#2 
#Alexander Tundra Wolf
func _on_alexander_archipelago_wolf_pressed_Image():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Alexander_Archipelago_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Alexander_Archipelago_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Alexander_ArchipelagoWolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Alexander_Archipelago_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Alexander_Archipelago_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Alexander_Archipelago_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Alexander_Archipelago_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Alexander_Archipelago_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Alexander_Archipelago_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Alexander_Archipelago_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(alexander_archipelago_wolf_almanac)
	get_tree().root.add_child(alexander_archipelago_wolf_almanac )
	
func _on_alexander_archipelago_wolf_pressed_Label():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Alexander_Archipelago_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Alexander_Archipelago_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Alexander_ArchipelagoWolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Alexander_Archipelago_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Alexander_Archipelago_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Alexander_Archipelago_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Alexander_Archipelago_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Alexander_Archipelago_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Alexander_Archipelago_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Alexander_Archipelago_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac2)
	get_tree().root.add_child(book_almanac2)
	##########################################################################
#3
#Arabian Wolf
func _on_arabian_wolf_pressed_Image():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Arabian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Arabian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Arabian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Arabian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Arabian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Arabian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Arabian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Arabian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Arabian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Arabian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(arabian_wolf_almanac)
	get_tree().root.add_child(arabian_wolf_almanac)

func _on_arabian_wolf_pressed_Label():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Arabian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Arabian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Arabian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Arabian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Arabian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Arabian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Arabian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Arabian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Arabian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Arabian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac3)
	get_tree().root.add_child(book_almanac3)
	
############################################################################   

	
func _ready():
	if WolfData._get_Alaskan_Tundra_Wolf_Rescue_Status() == true :
		alaskantundrawolfimage.disabled = true
		alaskantundrawolflabel.disabled = true
		alaskantundrawolflabel.set_text("Wolf Label")
	else:  
		#Alaskan Tundra Wolf
		alaskantundrawolfimage.disabled = false
		alaskantundrawolflabel.disabled = false
		_alaskan_tundra_wolf_image()
		_alaskan_tundra_wolf_name()
	
	if WolfData._get_Alexander_Archipelago_Wolf_Rescue_Status() == false:
		alexanderarchipelagowolfimage.disabled = true
		alexanderarchipelagowolflabel.disabled = true
		alexanderarchipelagowolflabel.set_text("Wolf Label")
	else: 
	#Alexander Archipelago Wolf
		alexanderarchipelagowolfimage.disabled = true
		alexanderarchipelagowolflabel.disabled = true
		_alexander_archipelago_wolf_image()
		_alexander_archipelago_wolf_name()
	
	if WolfData._get_Arabian_Wolf_Rescue_Status() == false:
		arabianwolfimage.disabled = true
		arabianwolflabel.disabled = true
		arabianwolflabel.set_text("Wolf Label")
	else:
	#Arabian Wolf
		arabianwolfimage.disabled = false
		arabianwolflabel.disabled = false
		_arabian_wolf_image()
		_arabian_wolf_name()    
