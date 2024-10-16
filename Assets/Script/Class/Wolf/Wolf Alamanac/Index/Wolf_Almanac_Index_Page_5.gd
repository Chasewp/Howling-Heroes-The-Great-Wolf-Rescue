"""Wolf Almanac Main Menu Page 5"""
class_name Wolf_Index_Page_5
extends Node2D

"""Wolves Image"""
#Wolf Picture 13 - Hudson Bay Wolf
@onready var hudsonbaywolfimage = $"Background/Almanac Index/WolfVBoxContainer13/Wolf 13"
#Wolf Picture 14 - Iberian Wolf
@onready var iberianwolfimage = $"Background/Almanac Index/WolfVBoxContainer14/Wolf 14"
#Wolf Picture 15 - Indian Wolf
@onready var indianwolfimage = $"Background/Almanac Index/WolfVBoxContainer15/Wolf 15"

"""Wolves Label"""
#Wolf Label 13 - Hudson Bay Wolf
@onready var hudsonbaywolflabel = $"Background/Almanac Index/WolfVBoxContainer13/Label_Wolf_13"
#Wolf Label 14 - Iberian Wolf
@onready var iberianwolflabel = $"Background/Almanac Index/WolfVBoxContainer14/Label_Wolf_14"
#Wolf Label 15 - Indian Wolf
@onready var indianwolflabel = $"Background/Almanac Index/WolfVBoxContainer15/Label_Wolf_15"

"""Inisiate Page"""
var book_almanac13 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac14 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac15 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var hudson_bay_wolf_alamanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Hudson Bay Wolf/hudson_bay_wolf_almanac.tscn").instantiate()
var iberian_wolf_alamanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Iberian Wolf/iberian_wolf_almanac.tscn").instantiate()
var indian_wolf_alamanac  = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Indian Wolf/indian_wolf_almanac.tscn").instantiate()

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Back Button"""
func _on_back_button_pressed():
	buttonsound.play()
	get_parent().remove_child(self)
	

""""Wolves Data"""
#Hudson Bay Wolf
func _hudson_bay_wolf_image():
	var image = Image.load_from_file(WolfData._get_Hudson_Bay_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	hudsonbaywolfimage.set_texture_normal(texture)

func _hudson_bay_wolf_name():
	hudsonbaywolflabel.set_text(WolfData._get_Hudson_Bay_Wolf_Name())
#######################################################################
#Iberian Wolf
func _iberian_wolf_image():
	var image = Image.load_from_file(WolfData._get_Iberian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	iberianwolfimage.set_texture_normal(texture)

func _iberian_wolf_name():
	iberianwolflabel.set_text(WolfData._get_Iberian_Wolf_Name())
#######################################################################
#Indian Wolf
func _indian_wolf_image():
	var image = Image.load_from_file(WolfData._get_Indian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	indianwolfimage.set_texture_normal(texture)

func _indian_wolf_name():
	indianwolflabel.set_text(WolfData._get_Indian_Wolf_Name())
#######################################################################

"""Into Wolf Almanac Book"""
#13
#Hudson Bay Wolf
func _on_hudson_bay_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Hudson_Bay_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Hudson_Bay_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Hudson_Bay_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Hudson_Bay_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Hudson_Bay_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Hudson_Bay_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Hudson_Bay_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Hudson_Bay_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Hudson_Bay_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Hudson_Bay_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(hudson_bay_wolf_alamanac)
	get_tree().root.add_child(hudson_bay_wolf_alamanac)
	

func _on_hudson_bay_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Hudson_Bay_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Hudson_Bay_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Hudson_Bay_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Hudson_Bay_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Hudson_Bay_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Hudson_Bay_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Hudson_Bay_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Hudson_Bay_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Hudson_Bay_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Hudson_Bay_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac13)
	get_tree().root.add_child(book_almanac13)
############################################################################
#14
#Iberian Wolf
func _on_Iberian_wolf_image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Iberian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Iberian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Iberian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Iberian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Iberian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Iberian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Iberian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Iberian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Iberian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Iberian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(iberian_wolf_alamanac)
	get_tree().root.add_child(iberian_wolf_alamanac)

func _on_Iberian_wolf_label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Iberian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Iberian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Iberian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Iberian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Iberian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Iberian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Iberian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Iberian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Iberian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Iberian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac14)
	get_tree().root.add_child(book_almanac14)
############################################################################
#15
#Indian Wolf
func _on_indian_wolf_Image_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Indian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Indian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Indian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Indian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Indian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Indian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Indian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Indian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Indian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Indian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(indian_wolf_alamanac)
	get_tree().root.add_child(indian_wolf_alamanac)
	
func _on_indian_wolf_Label_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Indian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Indian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Indian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Indian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Indian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Indian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Indian_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Indian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Indian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Indian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac15)
	get_tree().root.add_child(book_almanac15)
############################################################################

func _ready():
	if WolfData._get_Hudsom_Bay_Wolf_Rescue_Status() == false:
		hudsonbaywolfimage.disabled = true
		hudsonbaywolflabel.disabled = true
		hudsonbaywolflabel.set_text("Wolf Label")
	else:
		#Hudson Bay Wolf
		hudsonbaywolfimage.disabled = false
		hudsonbaywolflabel.disabled = false
		_hudson_bay_wolf_image()
		_hudson_bay_wolf_name()
	
	if WolfData._get_Iberian_Wolf_Rescue_Status() == false:
		iberianwolfimage.disabled = true
		iberianwolflabel.disabled = true
		iberianwolflabel.set_text("Wolf Label")
	else:
		#Iberian Wolf
		iberianwolfimage.disabled = false
		iberianwolflabel.disabled = false
		_iberian_wolf_image()
		_iberian_wolf_name()
	
	if WolfData._get_Indian_Wolf_Rescue_Status()==false:
		indianwolfimage.disabled = true
		indianwolflabel.disabled = true
		indianwolflabel.set_text("Wolf Label")
	else :
		#Indian Wolf
		indianwolfimage.disabled = false
		indianwolflabel.disabled = false
		_indian_wolf_image()
		_indian_wolf_name()
