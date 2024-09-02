"""Wolf Almanac Main Menu Page 6"""
class_name Wolf_Index_Page_6
extends Node2D


"""Wolves Image"""
#Wolf Picture 16 - Interior Alaskan Wolf (Yukon Wolf)
@onready var yukonwolfimage = $"Background/Almanac Index/WolfVBoxContainer16/Wolf 16"
#Wolf Picture 17 - Italian Wolf
@onready var italianwolfimage = $"Background/Almanac Index/WolfVBoxContainer17/Wolf 17"
#Wolf Picture 18 - Labrador Wolf
@onready var labradorwolfimage = $"Background/Almanac Index/WolfVBoxContainer18/Wolf 18"

"""Wolves Label"""
#Wolf Label 16 - Interior Alaskan Wolf (Yukon Wolf)
@onready var yukonwolflabel = $"Background/Almanac Index/WolfVBoxContainer16/Label_Wolf_16"
#Wolf Label 17 - Italian Wolf
@onready var italianwolflabel = $"Background/Almanac Index/WolfVBoxContainer17/Label_Wolf_17"
#Wolf Label 18 - Labrador Wolf
@onready var labradorwolflabel = $"Background/Almanac Index/WolfVBoxContainer18/Label_Wolf_18"


"""Inisiate Page"""
var indexpage7 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 7/Wolf_Alamac_Index_Page_7.tscn").instantiate()
var book_almanac16 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac17 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac18 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var interior_alaskan_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Interior Alaskan Wolf (Yukon Wolf)/interior_alaskan_wolf_(yukon_wolf).tscn").instantiate()
var italian_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Italian Wolf/italian_wolf_almanac.tscn").instantiate()
var labrador_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Labrador Wolf/labrador_wolf_almanac.tscn").instantiate()

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Next Button"""
func _on_next_page_7_button_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage7)
	get_tree().root.add_child(indexpage7)

"""Back Button"""
func _on_back_page_5_button_pressed():
	buttonsound.play()
	get_parent().remove_child(self)
	

""""Wolves Data"""
#Interior Alaskan Wolf (Yukon Wolf)
func _interior_alaskan_wolf_image():
	var image = Image.load_from_file(WolfData._get_Interior_Alaskan_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	yukonwolfimage.set_texture_normal(texture)

func _interior_alaskan_wolf_name():
	yukonwolflabel.set_text(WolfData._get_Interior_Alaskan_Wolf_Name())
#######################################################################
#Italian Wolf
func _italian_wolf_image():
	var image = Image.load_from_file(WolfData._get_Italian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	italianwolfimage.set_texture_normal(texture)

func _italian_wolf_name():
	italianwolflabel.set_text(WolfData._get_Italian_Wolf_Name())
#######################################################################
#Labrador Wolf
func _labrador_wolf_image():
	var image = Image.load_from_file(WolfData._get_Labrador_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	labradorwolfimage.set_texture_normal(texture)

func _labrador_wolf_name():
	labradorwolflabel.set_text(WolfData._get_Labrador_Wolf_Name())
#######################################################################

"""Into Wolf Almanac Book"""
#16
#Interior Alaskan Wolf (Yukon Wolf)
func _on_interior_alaskan_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Interior_Alaskan_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Interior_Alaskan_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Interior_Alaskan_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Interior_Alaskan_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Interior_Alaskan_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Interior_Alaskan_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Interior_Alaskan_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Interior_Alaskan_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Interior_Alaskan_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Interior_Alaskan_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac16)
	get_tree().root.add_child(book_almanac16)

func _on_interior_alaskan_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Interior_Alaskan_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Interior_Alaskan_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Interior_Alaskan_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Interior_Alaskan_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Interior_Alaskan_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Interior_Alaskan_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Interior_Alaskan_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Interior_Alaskan_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Interior_Alaskan_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Interior_Alaskan_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(interior_alaskan_wolf_almanac)
	get_tree().root.add_child(interior_alaskan_wolf_almanac)
############################################################################
#17
#Italian Wolf
func _on_italian_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Italian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Italian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Italian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Interior_Alaskan_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Interior_Alaskan_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Interior_Alaskan_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Interior_Alaskan_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Interior_Alaskan_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Interior_Alaskan_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Interior_Alaskan_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(italian_wolf_almanac)
	get_tree().root.add_child(italian_wolf_almanac)
	
func _on_italian_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Italian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Italian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Italian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Interior_Alaskan_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Interior_Alaskan_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Interior_Alaskan_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Interior_Alaskan_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Interior_Alaskan_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Interior_Alaskan_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Interior_Alaskan_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac17)
	get_tree().root.add_child(book_almanac17)
############################################################################
#18
#Labrador Wolf
func _on_labrador_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Labrador_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Labrador_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Labrador_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Labrador_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Labrador_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Labrador_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Labrador_Wolf_Lenght())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Labrador_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Labrador_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Labrador_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(labrador_wolf_almanac)
	get_tree().root.add_child(labrador_wolf_almanac)
	

func _on_labrador_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Labrador_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Labrador_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Labrador_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Labrador_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Labrador_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Labrador_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Labrador_Wolf_Lenght())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Labrador_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Labrador_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Labrador_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac18)
	get_tree().root.add_child(book_almanac18)
############################################################################

func _ready():
	if WolfData._get_Alaskan_Tundra_Wolf_Rescue_Status()==false:
		yukonwolfimage.disabled = true
		yukonwolflabel.disabled = true
		yukonwolflabel.set_text("Wolf Label")
	else:
		#Interior Alaskan Wolf
		yukonwolfimage.disabled = false
		yukonwolflabel.disabled = false
		_interior_alaskan_wolf_image()
		_interior_alaskan_wolf_name()
	
	if WolfData._get_Italian_Wolf_Rescue_Status() == false:
		italianwolfimage.disabled = true
		italianwolflabel.disabled = true
		yukonwolflabel.set_text("Wolf Label")
	else:	
		#Italian Wolf
		italianwolfimage.disabled = false
		italianwolflabel.disabled = false
		italianwolflabel.set_text("Wolf Label")
		_italian_wolf_image()
		_italian_wolf_name()
	
	if	WolfData._get_Italian_Wolf_Rescue_Status() == false:
		labradorwolfimage.disabled = true
		labradorwolflabel.disabled = true
		labradorwolflabel.set_text("Wolf Label")
	else :
		#Labrador
		labradorwolfimage.disabled = false
		labradorwolflabel.disabled = false
		_labrador_wolf_image()
		_labrador_wolf_name()
