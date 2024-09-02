"""Wolf Almanac Main Menu Page 9"""
class_name Wolf_Index_Page_9
extends Node2D

"""Wolves Image"""
#Wolf Picture 25 - Steppe Wolf (Caspian Sea Wolf)
@onready var steppewolfimage = $"Background/Almanac Index/WolfVBoxContainer25/Wolf 25"
#Wolf Picture 26 -Thundra Wolf
@onready var tundrawolfimage = $"Background/Almanac Index/WolfVBoxContainer26/Wolf 26"
#Wolf Picture 27 -Vancouver Coastal Island Wolf 
@onready var vancouvercoastalislandwolfimage = $"Background/Almanac Index/WolfVBoxContainer27/Wolf 27"

"""Wolves Label"""
#Wolf Label 25 - Steppe Wolf (Caspian Sea Wolf)
@onready var steppewolflabel = $"Background/Almanac Index/WolfVBoxContainer25/Label_Wolf_25"
#Wolf Label 26 - Thundra Wolf
@onready var tundrawolflabel =$"Background/Almanac Index/WolfVBoxContainer26/Label_Wolf_26"
#Wolf Label 27 - Vancouver Coastal IslandWolf
@onready var vancouvercoastalislandwolflabel = $"Background/Almanac Index/WolfVBoxContainer27/Label_Wolf_27"

"""Inisiate Page"""
var indexpage1 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 1/Wolf_Alamac_Index_Page_1.tscn").instantiate()
var book_alamanac25 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_alamanac26 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_alamanac27 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var steppe_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Steppe Wolf (Caspian Sea Wolf)/steppe_wolf_(caspian_sea_wolf)_almanac.tscn").instantiate()
var tundra_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Tundra Wolf/tundra_wolf_almanac.tscn").instantiate()
var vancouver_coastal_island_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Vancouver Coastal Island Wolf/vancouver_coastal_island_wolf_almanac.tscn").instantiate()

#Button Click Sound
@onready var buttonsound = $Button_Click

"""First Page Button"""
func _on_first_page_button_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage1)
	get_tree().root.add_child(indexpage1)

"""Back Button"""
func _on_back_page_8_button_pressed():
	buttonsound.play()
	get_parent().remove_child(self)

"""Wolves Data"""
#Steppe Wolf (Caspian Sea Wolf)
func _steppe_wolf_image():
	var image = Image.load_from_file(WolfData._get_Steppe_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	steppewolfimage.set_texture_normal(texture)

func _steppe_wolf_name():
	steppewolflabel.set_text(WolfData._get_Steppe_Wolf_Name())
#######################################################################
#Tundra Wolf
func _tundra_wolf_image():
	var image = Image.load_from_file(WolfData._get_Tundra_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	tundrawolfimage.set_texture_normal(texture)

func _tundra_wolf_name():
	tundrawolflabel.set_text(WolfData._get_Tundra_Wolf_Name())
#######################################################################
#Vancouver Coastal Island Wolf
func _vancouver_coastal_island_wolf_image():
	var image = Image.load_from_file(WolfData._get_Vancouver_Coastal_Island_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	vancouvercoastalislandwolfimage.set_texture_normal(texture)

func _vancouver_coastal_island_wolf_name():
	vancouvercoastalislandwolflabel.set_text(WolfData._get_Vancouver_Coastal_Island_Wolf_Name())

"""Into Wolf Almanac Book"""
#25
#Steppe Wolf (Caspian Sea Wolf)
func _on_steppe_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Steppe_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Steppe_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Steppe_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Steppe_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Steppe_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Steppe_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Steppe_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Steppe_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Steppe_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Steppe_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_alamanac25)
	get_tree().root.add_child(book_alamanac25)

func _on_steppe_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Steppe_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Steppe_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Steppe_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Steppe_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Steppe_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Steppe_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Steppe_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Steppe_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Steppe_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Steppe_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(steppe_wolf_almanac)
	get_tree().root.add_child(steppe_wolf_almanac)
############################################################################
#26
#Tundra Wolf
func _on_tundra_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Tundra_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Tundra_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Tundra_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Tundra_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Tundra_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Tundra_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Tundra_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Tundra_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Tundra_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Tundra_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_alamanac26)
	get_tree().root.add_child(book_alamanac26)

func _on_tundra_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Tundra_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Tundra_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Tundra_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Tundra_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Tundra_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Tundra_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Tundra_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Tundra_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Tundra_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Tundra_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(tundra_wolf_almanac)
	get_tree().root.add_child(tundra_wolf_almanac)
############################################################################
#27 
#Vancouver Coastal Island Wolf
func _on_vancouver_coastal_island_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Vancouver_Coastal_Island_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Vancouver_Coastal_Island_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Vancouver_Coastal_Island_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Vancouver_Coastal_Island_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Vancouver_Coastal_Island_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Vancouver_Coastal_Island_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Vancouver_Coastal_Island_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Vancouver_Coastal_Island_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Vancouver_Coastal_Island_Wolf_Morphology)
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Vancouver_Coastal_Island_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_alamanac27)
	get_tree().root.add_child(book_alamanac27)

func _on_vancouver_coastal_island_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Vancouver_Coastal_Island_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Vancouver_Coastal_Island_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Vancouver_Coastal_Island_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Vancouver_Coastal_Island_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Vancouver_Coastal_Island_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Vancouver_Coastal_Island_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Vancouver_Coastal_Island_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Vancouver_Coastal_Island_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Vancouver_Coastal_Island_Wolf_Morphology)
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Vancouver_Coastal_Island_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(vancouver_coastal_island_wolf_almanac)
	get_tree().root.add_child(vancouver_coastal_island_wolf_almanac)
############################################################################

func _ready():
	if WolfData._get_Steppe_Wolf_Rescue_Status() == false:
		steppewolfimage.disabled = true
		steppewolflabel.disabled = true
		steppewolflabel.set_text("Wolf Label")
	else : 
		#Steppe Wolf (Caspian Sea Wolf)
		steppewolfimage.disabled = false
		steppewolflabel.disabled = false
		_steppe_wolf_image()
		_steppe_wolf_name()
	
	if WolfData._get_Tundra_Wolf_Rescue_Status() == false:
		tundrawolfimage.disabled = true
		tundrawolflabel.disabled = true
		tundrawolflabel.set_text("Wolf Label")
	else:
		#Tundra Wolf
		tundrawolfimage.disabled = false
		tundrawolflabel.disabled = false
		_tundra_wolf_image()
		_tundra_wolf_name()
	
	if WolfData._get_Vancover_Coastal_Island_Wolf_Rescue_Status() == false:
		vancouvercoastalislandwolfimage.disabled=true
		vancouvercoastalislandwolflabel.disabled=true
		vancouvercoastalislandwolflabel.set_text("Wolf Label")
	else :
		#Vancouver Coastal Island Wolf
		vancouvercoastalislandwolfimage.disabled = false
		vancouvercoastalislandwolflabel.disabled = false
		_vancouver_coastal_island_wolf_image()
		_vancouver_coastal_island_wolf_name()
	
