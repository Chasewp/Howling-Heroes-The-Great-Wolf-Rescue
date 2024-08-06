"""Wolf Almanac Main Menu Page 3"""
class_name Wolf_Index_Page_3
extends Node2D

"""Wolves Image"""
#Wolf Picture 7 - Eastern Wolf
@onready var easternwolfimage = $"Background/Almanac Index/WolfVBoxContainer7/Wolf 7"
#Wolf Picture 8 - Eurasian Wolf 
@onready var eurasianwolfimage = $"Background/Almanac Index/WolfVBoxContainer8/Wolf 8"
#Wolf Picture 9 - Gray Wolf
@onready var graywolfimage = $"Background/Almanac Index/WolfVBoxContainer9/Wolf 9"


"""Wolves Label"""
#Wolf Label 7 - Eastern Wolf
@onready var easternwolflabel = $"Background/Almanac Index/WolfVBoxContainer7/Label_Wolf_7"
#Wolf Label 8 - Eurasian Wolf
@onready var eurasianwolflabel = $"Background/Almanac Index/WolfVBoxContainer8/Label_Wolf_8"
#Wolf Label 9 - Gray Wolf
@onready var graywolflabel = $"Background/Almanac Index/WolfVBoxContainer9/Label_Wolf_9"

"""Inisiate Page"""
var indexpage2 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 2/Wolf_Alamac_Index_Page_2.tscn").instantiate()
var indexpage4 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 4/Wolf_Alamac_Index_Page_4.tscn").instantiate()
var book_almanac7 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac8 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac9 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var eastern_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Eastern Wolf/eastern_wolf_almanac.tscn").instantiate()
var eurasian_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Eurasian Wolf/eurasian_wolf_almanac.tscn").instantiate()
var gray_wolf_almanac =  preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Gray Wolf/gray_wolf_almanac.tscn").instantiate()

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Next Button"""
func _on_next_page_4_button_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage4)
	get_tree().root.add_child(indexpage4)

"""Back Button"""
func _on_back_page_2_button_preessed():
	buttonsound.play()
	get_parent().remove_child(self)

"""Wolves Data"""
#Eastern Wolf
func _eastern_wolf_image():
	var image = Image.load_from_file(WolfData._get_Eastern_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	easternwolfimage.set_texture_normal(texture)

func _eastern_wolf_name():
	easternwolflabel.set_text(WolfData._get_Eastern_Wolf_Name())
#######################################################################
#Eurasian Wolf
func _eurasian_wolf_image():
	var image = Image.load_from_file(WolfData._get_Eurasian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	eurasianwolfimage.set_texture_normal(texture)

func _eurasian_wolf_name():
	eurasianwolflabel.set_text(WolfData._get_Eurasian_Wolf_Name())
#######################################################################
#Gray Wolf
func _gray_wolf_image():
	var image = Image.load_from_file(WolfData._get_Gray_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	graywolfimage.set_texture_normal(texture)

func _gray_wolf_name():
	graywolflabel.set_text(WolfData._get_Gray_Wolf_Name())

"""Into Wolf Almanac Book"""
 #7
#Eastern Wolf
func _on_eastern_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Eastern_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Eastern_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Eastern_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Eastern_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Eastern_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Eastern_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Eastern_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Eastern_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Eastern_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Eastern_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac7)
	get_tree().root.add_child(book_almanac7)

func _on_eastern_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Eastern_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Eastern_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Eastern_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Eastern_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Eastern_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Eastern_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Eastern_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Eastern_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Eastern_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Eastern_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(eastern_wolf_almanac)
	get_tree().root.add_child(eastern_wolf_almanac)
############################################################################
#8
#Eurasian Wolf
func _on_eurasian_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Eurasian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Eurasian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Eurasian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Eurasian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Eurasian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Eurasian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Eurasian_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Eurasian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Eurasian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Eurasian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac8)
	get_tree().root.add_child(book_almanac8)

func _on_eurasian_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Eurasian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Eurasian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Eurasian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Eurasian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Eurasian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Eurasian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Eurasian_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Eurasian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Eurasian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Eurasian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(eurasian_wolf_almanac)
	get_tree().root.add_child(eurasian_wolf_almanac)
############################################################################
#9
#Gray Wolf
func _on_gray_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Gray_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Gray_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Gray_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Gray_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Gray_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Gray_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Gray_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Gray_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Gray_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Gray_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac9)
	get_tree().root.add_child(book_almanac9)   

func _on_gray_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Gray_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Gray_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Gray_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Gray_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Gray_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Gray_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Gray_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Gray_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Gray_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Gray_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(gray_wolf_almanac)
	get_tree().root.add_child(gray_wolf_almanac)   



