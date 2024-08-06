"""Wolf Almanac Main Menu Page 4"""
class_name Wolf_Index_Page_4
extends Node2D


"""Wolves Image"""
#Wolf Picture 10 - Great Plains Wolf 
@onready var greatplainswolfimage = $"Background/Almanac Index/WolfVBoxContainer10/Wolf 10"
#Wolf Picture 11 - Greenland Wolf 
@onready var greenlandwolfimage = $"Background/Almanac Index/WolfVBoxContainer11/Wolf 11"
#Wolf Picture 12 - Himalayan Wolf
@onready var himalayanwolfimage = $"Background/Almanac Index/WolfVBoxContainer12/Wolf 12"


"""Wolves Label"""
#Wolf Label 10 - Great Plains Wolf 
@onready var greatplainwolflabel = $"Background/Almanac Index/WolfVBoxContainer10/Label_Wolf_10"
#Wolf Label 11 - Greenland Wolf 
@onready var greenlandwolflabel = $"Background/Almanac Index/WolfVBoxContainer11/Label_Wolf_11"
#Wolf Label 12 - Himalayan Wolf
@onready var Himalayanwolflabel = $"Background/Almanac Index/WolfVBoxContainer12/Label_Wolf_12"


"""Inisiate Page"""
var indexpage5 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 5/Wolf_Alamac_Index_Page_5.tscn").instantiate()
var book_almanac10 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac11 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac12 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var great_plains_wolf_alamanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Great Plains Wolf/great_plains_wolf_almanac.tscn").instantiate()
var greenland_wolf_alamanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Greenland Wolf/greenland_wolf_almanac.tscn").instantiate()
var himalayan_wolf_alamanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Himalayan Wolf/himalayan_wolf_almanac.tscn").instantiate()


#Button Click Sound
@onready var buttonsound = $Button_Click

"""Next Button"""
func _on_next_page_5_button_pressed():
    buttonsound.play()
    get_tree().change_scene_to_packed(indexpage5)
    get_tree().root.add_child(indexpage5)

"""Back Button"""
func _on_back_page_3_button_pressed():
    buttonsound.play()
    get_parent().remove_child(self)
    

""""Wolves Data"""
#Great Plains Wolf
func _great_plains_wolf_image():
    var image = Image.load_from_file(WolfData._get_Great_Plains_Wolf_Image_Path())
    var texture = ImageTexture.create_from_image(image)
    greatplainswolfimage.set_texture_normal(texture)

func _great_plains_wolf_name():
    greatplainwolflabel.set_text(WolfData._get_Great_Plains_Wolf_Name())
#######################################################################
#Greenland Wolf
func _greenland_wolf_image():
    var image = Image.load_from_file(WolfData._get_Greenland_Wolf_Image_Path())
    var texture = ImageTexture.create_from_image(image)
    greenlandwolfimage.set_texture_normal(texture)

func _greenland_wolf_name():
    greenlandwolflabel.set_text(WolfData._get_Greenland_Wolf_Name())
#######################################################################
#Himalayan Wolf
func _himalayan_wolf_image():
    var image = Image.load_from_file(WolfData._get_Himalayan_Wolf_Image_Path())
    var texture = ImageTexture.create_from_image(image)
    himalayanwolfimage.set_texture_normal(texture)

func _himalayan_wolf_name():
    Himalayanwolflabel.set_text(WolfData._get_Himalayan_Wolf_Name())
#######################################################################

"""Into Wolf Almanac Book"""
#10
#Great Plain Wolf
func _on_great_plain_wolf_image_pressed():
	#Image
    almanac.setter_Wolf_Image(WolfData._get_Great_Plains_Wolf_Image_Path())
	#Name
    almanac.setter_Wolf_Name(WolfData._get_Great_Plains_Wolf_Name())
	#Species
    almanac.setter_Wolf_Species(WolfData._get_Great_Plains_Wolf_Species())
	#Height
    almanac.setter_Wolf_Height(WolfData._get_Great_Plains_Wolf_Height())
	#Weight
    almanac.setter_Wolf_Weight(WolfData._get_Great_Plains_Wolf_Weight())
	#Lenght
    almanac.setter_Wolf_Lenght(WolfData._get_Great_Plains_Wolf_Lenght())
	#Conservation Status
    almanac.setter_Wolf_Conservation_Status(WolfData._get_Great_Plains_Wolf_Conservation_status())
	#Region
    almanac.setter_Wolf_Region(WolfData._get_Great_Plains_Wolf_Location())
	#Morphology
    almanac.setter_Wolf_Morphology(WolfData._get_Great_Plains_Wolf_Morphology())
	#Diets
    almanac.setter_Wolf_Diets(WolfData._get_Great_Plains_Wolf_Diets())
    buttonsound.play()
    get_tree().change_scene_to_packed(book_almanac10)
    get_tree().root.add_child(book_almanac10)

func _on_great_plain_wolf_label_pressed():
	#Image
    almanac.setter_Wolf_Image(WolfData._get_Great_Plains_Wolf_Image_Path())
	#Name
    almanac.setter_Wolf_Name(WolfData._get_Great_Plains_Wolf_Name())
	#Species
    almanac.setter_Wolf_Species(WolfData._get_Great_Plains_Wolf_Species())
	#Height
    almanac.setter_Wolf_Height(WolfData._get_Great_Plains_Wolf_Height())
	#Weight
    almanac.setter_Wolf_Weight(WolfData._get_Great_Plains_Wolf_Weight())
	#Lenght
    almanac.setter_Wolf_Lenght(WolfData._get_Great_Plains_Wolf_Lenght())
	#Conservation Status
    almanac.setter_Wolf_Conservation_Status(WolfData._get_Great_Plains_Wolf_Conservation_status())
	#Region
    almanac.setter_Wolf_Region(WolfData._get_Great_Plains_Wolf_Location())
	#Morphology
    almanac.setter_Wolf_Morphology(WolfData._get_Great_Plains_Wolf_Morphology())
	#Diets
    almanac.setter_Wolf_Diets(WolfData._get_Great_Plains_Wolf_Diets())
    buttonsound.play()
    LoadingScreen.load_scence(great_plains_wolf_alamanac)
    get_tree().root.add_child(great_plains_wolf_alamanac)
############################################################################
#11
#Greenland Wolf
func _on_greenland_wolf_pressed():
	#Image
    almanac.setter_Wolf_Image(WolfData._get_Greenland_Wolf_Image_Path())
	#Name
    almanac.setter_Wolf_Name(WolfData._get_Greenland_Wolf_Name())
	#Species
    almanac.setter_Wolf_Species(WolfData._get_Greenland_Wolf_Species())
	#Height
    almanac.setter_Wolf_Height(WolfData._get_Greenland_Wolf_Height())
	#Weight
    almanac.setter_Wolf_Weight(WolfData._get_Greenland_Wolf_Weight())
	#Lenght
    almanac.setter_Wolf_Lenght(WolfData._get_Greenland_Wolf_Lenght())
	#Conservation Status
    almanac.setter_Wolf_Conservation_Status(WolfData._get_Greenland_Wolf_Conservation_status())
	#Region
    almanac.setter_Wolf_Region(WolfData._get_Greenland_Wolf_Location())
	#Morphology
    almanac.setter_Wolf_Morphology( WolfData._get_Greenland_Wolf_Morphology())
	#Diets
    almanac.setter_Wolf_Diets(WolfData._get_Greenland_Wolf_Diets())
    buttonsound.play()
    get_tree().change_scene_to_packed(book_almanac11)
    get_tree().root.add_child(book_almanac11)
############################################################################
#12
#Himalayan Wolf
func _on_himalayan_wolf_image_pressed():
	#Image
    almanac.setter_Wolf_Image(WolfData._get_Himalayan_Wolf_Image_Path())
	#Name
    almanac.setter_Wolf_Name(WolfData._get_Himalayan_Wolf_Name())
	#Species
    almanac.setter_Wolf_Species(WolfData._get_Himalayan_Wolf_Species())
	#Height
    almanac.setter_Wolf_Height(WolfData._get_Himalayan_Wolf_Height())
	#Weight
    almanac.setter_Wolf_Weight(WolfData._get_Himalayan_Wolf_Weight())
	#Lenght
    almanac.setter_Wolf_Lenght(WolfData._get_Himalayan_Wolf_Lenght())
	#Conservation Status
    almanac.setter_Wolf_Conservation_Status(WolfData._get_Himalayan_Wolf_Conservation_Status())
	#Region
    almanac.setter_Wolf_Region(WolfData._get_Himalayan_Wolf_Location())
	#Morphology
    almanac.setter_Wolf_Morphology( WolfData._get_Himalayan_Wolf_Morphology())
	#Diets
    almanac.setter_Wolf_Diets(WolfData._get_Himalayan_Wolf_Diets())
    buttonsound.play()
    LoadingScreen.load_scence(book_almanac12)
    get_tree().root.add_child(book_almanac12)

func _on_himalayan_wolf_label_pressed():
	#Image
    almanac.setter_Wolf_Image(WolfData._get_Himalayan_Wolf_Image_Path())
	#Name
    almanac.setter_Wolf_Name(WolfData._get_Himalayan_Wolf_Name())
	#Species
    almanac.setter_Wolf_Species(WolfData._get_Himalayan_Wolf_Species())
	#Height
    almanac.setter_Wolf_Height(WolfData._get_Himalayan_Wolf_Height())
	#Weight
    almanac.setter_Wolf_Weight(WolfData._get_Himalayan_Wolf_Weight())
	#Lenght
    almanac.setter_Wolf_Lenght(WolfData._get_Himalayan_Wolf_Lenght())
	#Conservation Status
    almanac.setter_Wolf_Conservation_Status(WolfData._get_Himalayan_Wolf_Conservation_Status())
	#Region
    almanac.setter_Wolf_Region(WolfData._get_Himalayan_Wolf_Location())
	#Morphology
    almanac.setter_Wolf_Morphology( WolfData._get_Himalayan_Wolf_Morphology())
	#Diets
    almanac.setter_Wolf_Diets(WolfData._get_Himalayan_Wolf_Diets())
    buttonsound.play()
    LoadingScreen.load_scence(himalayan_wolf_alamanac)
    get_tree().root.add_child(himalayan_wolf_alamanac)
############################################################################

func _ready():
    #Great Plains Wolf
    _great_plains_wolf_image()
    _great_plains_wolf_name()
    #Greenland Wolf
    _greenland_wolf_image()
    _greenland_wolf_name()
    #Himalayan Wolf
    _himalayan_wolf_image()
    _himalayan_wolf_name()