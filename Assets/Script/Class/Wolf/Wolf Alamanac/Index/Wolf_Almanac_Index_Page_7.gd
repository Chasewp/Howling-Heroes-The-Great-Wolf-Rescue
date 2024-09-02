"""Wolf Almanac Main Menu Page 7"""
class_name Wolf_Index_Page_7
extends Node2D

"""Wolves Image"""
#Wolf Picture 19 - Mackenzie River Wolf
@onready var mackenzieriverwolfimage = $"Background/Almanac Index/WolfVBoxContainer19/Wolf 19"
#Wolf Picture 20 - Mexican Wolf
@onready var mexicanwolfimage = $"Background/Almanac Index/WolfVBoxContainer20/Wolf 20"
#Wolf Picture 21 - Mongolian Wolf
@onready var mongolianwolfimage = $"Background/Almanac Index/WolfVBoxContainer21/Wolf 21"

"""Wolves Label"""
#Wolf Label 19 - Mackenzie River Wolf
@onready var machenzieriverwolflabel = $"Background/Almanac Index/WolfVBoxContainer19/Label_Wolf_19"
#Wolf Label 20 - Mexican Wolf
@onready var mexicanwolflabel = $"Background/Almanac Index/WolfVBoxContainer20/Label_Wolf_20"
#Wolf Label 21 - Mongolian Wolf
@onready var mongolianwolflabel = $"Background/Almanac Index/WolfVBoxContainer21/Label_Wolf_21"

"""Inisiate Page"""
var indexpage8 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 8/Wolf_Alamac_Index_Page_8.tscn").instantiate()
var book_almanac19 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_Almanac20 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac21 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var machenzie_river_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Mackenzie River Wolf/mackenzie_river_wolf_almanac.tscn").instantiate
var mexican_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Mexican Wolf/mexican_wolf_almanac.tscn").instantiate()
var mongolian_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Mongolian Wolf/mongolian_wolf_almanac.tscn").instantiate()

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Next Button"""
func _on_next_page_8_button_pressed():
	buttonsound.play()
	get_tree().change_scence_to_packed(indexpage8)
	get_tree().root.add_child(indexpage8)

"""Back Button"""
func _on_back_page_6_button_pressed():
	buttonsound.play()
	get_parent().remove_child(self)

"""Wolves Data"""
#Mackenzie River Wolf
func _mackenzie_river_wolf_image():
	var image = Image.load_from_file(WolfData._get_Mackenzie_River_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	mackenzieriverwolfimage.set_texture_normal(texture)

func _mackenzie_river_wolf_name():
	machenzieriverwolflabel.set_text(WolfData._get_Mackenzie_River_Wolf_Name())
#######################################################################
#Mexican Wolf
func _mexican_wolf_image():
	var image = Image.load_from_file(WolfData._get_Mexican_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	mexicanwolfimage.set_texture_normal(texture)

func _mexican_wolf_name():
	mexicanwolflabel.set_text(WolfData._get_Mexican_Wolf_Name())
#######################################################################
#Mongolian Wolf
func _mongolian_wolf_image():
	var image = Image.load_from_file(WolfData._get_Mongolian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	mongolianwolfimage.set_texture_normal(texture)

func _mongolian_wolf_name():
	mongolianwolflabel.set_text(WolfData._get_Mongolian_Wolf_Name())
#######################################################################

"""Into Wolf Almanac Book"""
#19
#Mackenzie River Wolf
func _on_mackenzie_river_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Mackenzie_River_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Mackenzie_River_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Mackenzie_River_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Mackenzie_River_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Mackenzie_River_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Mackenzie_River_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Mackenzie_River_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Mackenzie_River_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Mackenzie_River_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Mackenzie_River_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac19)
	get_tree().root.add_child(book_almanac19)

func _on_mackenzie_river_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Mackenzie_River_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Mackenzie_River_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Mackenzie_River_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Mackenzie_River_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Mackenzie_River_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Mackenzie_River_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Mackenzie_River_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Mackenzie_River_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Mackenzie_River_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Mackenzie_River_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(machenzie_river_wolf_almanac)
	get_tree().root.add_child(machenzie_river_wolf_almanac)
##########################################################################
#20
#Mexican Wolf
func _on_mexican_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Mexican_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Mexican_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Mexican_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Mexican_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Mexican_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Mexican_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Mexican_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Mexican_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Mexican_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Mexican_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac20)
	get_tree().root.add_child(book_Almanac20)

func _on_mexican_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Mexican_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Mexican_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Mexican_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Mexican_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Mexican_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Mexican_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Mexican_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Mexican_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Mexican_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Mexican_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(mexican_wolf_almanac)
	get_tree().root.add_child(mexican_wolf_almanac)
##########################################################################
#21	
#Mongolian Wolf
func _on_mongolian_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Mongolian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Mongolian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Mongolian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Mongolian_Wolf_Weight())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Mongolian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Mongolian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Mongolian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Mongolian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Mongolian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Mongolian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac21)
	get_tree().root.add_child(book_almanac21)

func _on_mongolian_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Mongolian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Mongolian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Mongolian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Mongolian_Wolf_Weight())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Mongolian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Mongolian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Mongolian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Mongolian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Mongolian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Mongolian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(mongolian_wolf_almanac)
	get_tree().root.add_child(mongolian_wolf_almanac)
##########################################################################

func _ready():
	if WolfData._get_Mackenzie_River_Wolf_Rescue_Status() == false:
		mackenzieriverwolfimage.disabled = true
		machenzieriverwolflabel.disabled = true
		machenzieriverwolflabel.set_text("Wolf Label")
	else:
		#Mackenzie River Wolf
		mackenzieriverwolfimage.disabled = false
		machenzieriverwolflabel.disabled = false
		_mackenzie_river_wolf_image()
		_mackenzie_river_wolf_name()
		
	if WolfData._get_Mexican_Wolf_Rescue_Status() == false:
		mexicanwolfimage.disabled = true
		mexicanwolflabel.disabled = true
		mexicanwolflabel.set_text("Wolf Label")
	else:
		#Mexican Wolf
		mexicanwolfimage.disabled = false
		mexicanwolflabel.disabled = false
		_mexican_wolf_image()
		_mexican_wolf_name()
	
	if WolfData._get_Mongolian_Wolf_Rescue_Status() == false:
		mongolianwolfimage.disabled = true
		mongolianwolflabel.disabled = true
		mongolianwolflabel.set_text("Wolf Label")
	else:
		#Mongolian Wolf
		mongolianwolfimage.disabled = true
		mongolianwolflabel.disabled = true
		_mongolian_wolf_image()
		_mongolian_wolf_name()
