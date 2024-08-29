"""Wolf Almanac Main Menu Page 8"""
class_name Wolf_Index_Page_8
extends Node2D

"""Wolves Image"""
#Wolf Picture 22 - Northern Rocky Mountain Wolf
@onready var northernrockymountainwolfimage = $"Background/Almanac Index/WolfVBoxContainer22/Wolf 22"
#Wolf Picture 23 - Northwestern Wolf 
@onready var northwesternwolfimage = $"Background/Almanac Index/WolfVBoxContainer23/Wolf 23"
#Wolf Picture 24 - Red Wolf
@onready var redwolfimage = $"Background/Almanac Index/WolfVBoxContainer24/Wolf 24"

"""Wolves Label"""
@onready var northernrockymountainwolflabel = $"Background/Almanac Index/WolfVBoxContainer22/Label_Wolf_22"
#Wolf Label 23 - Northwestern Wolf
@onready var northwesternwolflabel = $"Background/Almanac Index/WolfVBoxContainer23/Label_Wolf_23"
#Wolf Label 24 - Red Wolf
@onready var redwolflabel = $"Background/Almanac Index/WolfVBoxContainer24/Label_Wolf_24"

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Instantiate Scence"""
var indexpage9 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 9/Wolf_Alamac_Index_Page_9.tscn").instantiate()
var book_almanac22  = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_Almanac23  = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_Almanac24 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var northern_rocky_mountain_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Northern Rocky Mountain Wolf/northern_rocky_mountain_wolf_almanac.tscn").instantiate()
var northwestern_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Northwestern Wolf/northwestern_wolf_almanac.tscn").instantiate()
var red_wolf_almanac =preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Red Wolf/red_wolf_almanac.tscn").instantiate()

"""Next Button"""
func _on_next_page_9_button_pressed():
	buttonsound.play()
	get_tree().change_scence_to_packed(indexpage9)
	get_tree().root.add_child(indexpage9)

"""Back Button"""
func _on_back_page_7_button_pressed():
	buttonsound.play()
	get_parent().remove_child(self)

"""Wolves Data"""
#Northern Rocky Mountain Wolf
func _northern_rocky_mountain_wolf_image():
	var image = Image.load_from_file(WolfData._get_Northern_Rocky_Mountain_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	northernrockymountainwolfimage.set_texture_normal(texture)

func _northern_rocky_mountain_wolf_name():
	northernrockymountainwolflabel.set_text(WolfData._get_Northern_Rocky_Mountain_Wolf_Name())
#######################################################################
#Northwestern Wolf
func _northwestern_wolf_image():
	var image = Image.load_from_file(WolfData._get_Northwestern_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	northwesternwolfimage.set_texture_normal(texture)

func _northerwestern_wolf_name():
	northwesternwolflabel.set_text(WolfData._get_Northwestern_Wolf_Name())
#######################################################################
#Red Wolf
func _red_wolf_image():
	var image = Image.load_from_file(WolfData._get_Red_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	redwolfimage.set_texture_normal(texture)

func _red_wolf_name():
	redwolflabel.set_text(WolfData._get_Red_Wolf_Name())
#######################################################################

"""Into Wolf Almanac Book"""
#22
#Northern Rocky Mountain Wolf
func _on_northern_rocky_mountain_wolf_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Northern_Rocky_Mountain_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Northern_Rocky_Mountain_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Northern_Rocky_Mountain_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Northern_Rocky_Mountain_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Northern_Rocky_Mountain_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Northern_Rocky_Mountain_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Northern_Rocky_Mountain_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Northern_Rocky_Mountain_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Northern_Rocky_Mountain_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Northern_Rocky_Mountain_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac22)
	get_tree().root.add_child(book_almanac22)

func _on_northern_rocky_mountain_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Northern_Rocky_Mountain_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Northern_Rocky_Mountain_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Northern_Rocky_Mountain_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Northern_Rocky_Mountain_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Northern_Rocky_Mountain_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Northern_Rocky_Mountain_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Northern_Rocky_Mountain_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Northern_Rocky_Mountain_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Northern_Rocky_Mountain_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Northern_Rocky_Mountain_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(northern_rocky_mountain_wolf_almanac)
	get_tree().root.add_child(northern_rocky_mountain_wolf_almanac)
############################################################################
#23
#Northwestern Wolf
func _on_northwestern_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Northwestern_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Northwestern_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Northwestern_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Northwestern_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Northwestern_Wolf_Height())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Northwestern_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Northwestern_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Northwestern_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Northwestern_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Northwestern_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac23)
	get_tree().root.add_child(book_Almanac23)

func _on_northwestern_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Northwestern_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Northwestern_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Northwestern_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Northwestern_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Northwestern_Wolf_Height())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Northwestern_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Northwestern_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Northwestern_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Northwestern_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Northwestern_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(northwestern_wolf_almanac)
	get_tree().root.add_child(northwestern_wolf_almanac)
############################################################################
#24
#Red Wolf
func _on_red_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Red_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Red_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Red_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Red_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Red_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Red_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Red_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Red_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Red_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Red_Wolf_Diets())
	buttonsound.play()
	LoadingScreen.load_scence(book_Almanac24)
	get_tree().root.add_child(book_Almanac24)

func _on_red_wolf__label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Red_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Red_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Red_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Red_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Red_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Red_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Red_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Red_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Red_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Red_Wolf_Diets())
	buttonsound.play()
	LoadingScreen.load_scence(red_wolf_almanac)
	get_tree().root.add_child(red_wolf_almanac)
############################################################################

func _ready():
	#Northern Rocky Mountain Wolf
	_northern_rocky_mountain_wolf_image()
	_northern_rocky_mountain_wolf_name()
	#Northwestern Wolf
	_northwestern_wolf_image()
	_northerwestern_wolf_name()
	#Red Wolf
	_red_wolf_image()
	_red_wolf_name()
	
	
