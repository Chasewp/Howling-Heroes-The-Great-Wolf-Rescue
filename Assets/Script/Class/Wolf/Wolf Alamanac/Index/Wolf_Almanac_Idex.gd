"""Wolf Almanac Main Menu"""
class_name Wolf_Alamac_Index
extends Node2D



#Wolf Picture 1 - Alaska Tundra Wolf
@onready var alaskantundrawolfimage = $"Background/Almanac Index/WolfVBoxContainer1/Wolf 1"
#Wolf Picture 2 - Alexander Archipelago Wolf 
@onready var alexanderarchipelagowolfimage = $"Background/Almanac Index/WolfVBoxContainer2/Wolf 2"
#Wolf Picture 3 - Arabian Wolf 
@onready var arabianwolfimage=$"Background/Almanac Index/WolfVBoxContainer3/Wolf 3"



#Wolf Picture 13 - Hudson Bay Wolf
@onready var hudsonbaywolfimage = $"Background/Almanac Index/WolfVBoxContainer13/Wolf 13"
#Wolf Picture 14 - Iberian Wolf
@onready var iberianwolfimage = $"Background/Almanac Index/WolfVBoxContainer14/Wolf 14"
#Wolf Picture 15 - Indian Wolf
@onready var indianwolfimage = $"Background/Almanac Index/WolfVBoxContainer15/Wolf 15"
#Wolf Picture 16 - Interior Alaskan Wolf (Yukon Wolf)
@onready var yukonwolfimage = $"Background/Almanac Index/WolfVBoxContainer16/Wolf 16"
#Wolf Picture 17 - Italian Wolf
@onready var italianwolfimage = $"Background/Almanac Index/WolfVBoxContainer17/Wolf 17"
#Wolf Picture 18 - Labrador Wolf
@onready var labradorwolfimage = $"Background/Almanac Index/WolfVBoxContainer18/Wolf 18"
#Wolf Picture 19 - Mackenzie River Wolf
@onready var mackenzieriverwolfimage = $"Background/Almanac Index/WolfVBoxContainer19/Wolf 19"
#Wolf Picture 20 - Mexican Wolf
@onready var mexicanwolfimage = $"Background/Almanac Index/WolfVBoxContainer20/Wolf 20"
#Wolf Picture 21 - Mongolian Wolf
@onready var mongolianwolfimage = $"Background/Almanac Index/WolfVBoxContainer21/Wolf 21"
#Wolf Picture 22 - Northern Rocky Mountain Wolf
@onready var northernrockymountainwolfimage = $"Background/Almanac Index/WolfVBoxContainer22/Wolf 22"
#Wolf Picture 23 - Northwestern Wolf 
@onready var northwesternwolfimage = $"Background/Almanac Index/WolfVBoxContainer23/Wolf 23"
#Wolf Picture 24 - Red Wolf
@onready var redwolfimage = $"Background/Almanac Index/WolfVBoxContainer24/Wolf 24"
#Wolf Picture 25 - Steppe Wolf (Caspian Sea Wolf)
@onready var steppewolfimage = $"Background/Almanac Index/WolfVBoxContainer25/Wolf 25"
#Wolf Picture 26 -Thundra Wolf
@onready var thundrawolfimage = $"Background/Almanac Index/WolfVBoxContainer26/Wolf 26"
#Wolf Picture 27 -Vancouver Coastal Island Wolf 
@onready var vancouvercoastalislandwolfimage = $"Background/Almanac Index/WolfVBoxContainer27/Wolf 27"

"""Wolves Labels"""
#Wolf Label 1 - Alaskan Tundra Wolf
@onready var alaskantundrawolflabel = $"Background/Almanac Index/WolfVBoxContainer1/Label_Wolf_1"
#Wolf Label 2 - Alexander Archipelago Wolf
@onready var alexanderarchipelagowolflabel = $"Background/Almanac Index/WolfVBoxContainer2/Label_Wolf_2"
#Wolf Label 3 - Arabian Wolf
@onready var arabianwolflabel = $"Background/Almanac Index/WolfVBoxContainer3/Label_Wolf_3"



#Wolf Label 13 - Hudson Bay Wolf
@onready var hudsonbaywolflabel = $"Background/Almanac Index/WolfVBoxContainer13/Label_Wolf_13"
#Wolf Label 14 - Iberian Wolf
@onready var iberianwolflabel = $"Background/Almanac Index/WolfVBoxContainer14/Label_Wolf_14"
#Wolf Label 15 - Indian Wolf
@onready var indianwolflabel = $"Background/Almanac Index/WolfVBoxContainer15/Label_Wolf_15"
#Wolf Label 16 - Interior Alaskan Wolf (Yukon Wolf)
@onready var yukonwolflabel = $"Background/Almanac Index/WolfVBoxContainer16/Label_Wolf_16"
#Wolf Label 17 - Italian Wolf
@onready var italianwolflabel = $"Background/Almanac Index/WolfVBoxContainer17/Label_Wolf_17"
#Wolf Label 18 - Labrador Wolf
@onready var labradorwolflabel = $"Background/Almanac Index/WolfVBoxContainer18/Label_Wolf_18"
#Wolf Label 19 - Mackenzie River Wolf
@onready var machenzieriverwolflabel = $"Background/Almanac Index/WolfVBoxContainer19/Label_Wolf_19"
#Wolf Label 20 - Mexican Wolf
@onready var mexicanwolflabel = $"Background/Almanac Index/WolfVBoxContainer20/Label_Wolf_20"
#Wolf Label 21 - Mongolian Wolf
@onready var mongolianwolflabel = $"Background/Almanac Index/WolfVBoxContainer21/Label_Wolf_21"
#Wolf Label 22 - Northern Rocky Mountain Wolf
@onready var northernrockymountainwolflabel = $"Background/Almanac Index/WolfVBoxContainer22/Label_Wolf_22"
#Wolf Label 23 - Northwestern Wolf
@onready var northwesternwolflabel = $"Background/Almanac Index/WolfVBoxContainer23/Label_Wolf_23"
#Wolf Label 24 - Red Wolf
@onready var redwolflabel = $"Background/Almanac Index/WolfVBoxContainer24/Label_Wolf_24"
#Wolf Label 25 - Steppe Wolf (Caspian Sea Wolf)
@onready var steppewolflabel = $"Background/Almanac Index/WolfVBoxContainer25/Label_Wolf_25"
#Wolf Label 26 - Thundra Wolf
@onready var thundrawolflabel =$"Background/Almanac Index/WolfVBoxContainer26/Label_Wolf_26"
#Wolf Label 27 - Vancouver Coastal IslandWolf
@onready var vancouvercoastalislandwolflabel = $"Background/Almanac Index/WolfVBoxContainer27/Label_Wolf_27"


"""Inisiate Page"""
var indexpage1 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 1/Wolf_Alamac_Index_Page_1.tscn").instantiate()



var indexpage5 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 5/Wolf_Alamac_Index_Page_5.tscn").instantiate()
var indexpage6 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 6/Wolf_Alamac_Index_Page_6.tscn").instantiate()
var indexpage7 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 7/Wolf_Alamac_Index_Page_7.tscn").instantiate()
var indexpage8 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 8/Wolf_Alamac_Index_Page_8.tscn").instantiate()
var indexpage9 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 9/Wolf_Alamac_Index_Page_9.tscn").instantiate()
var book_Almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Next Button"""

	
#Next Button Page 6
func _on_next_button_page_5_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage6)
	get_tree().root.add_child(indexpage6)
	get_tree().root.remove_child(indexpage5)
#Next Button Page 7
func _on_next_button_page_6_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage7)
	get_tree().root.add_child(indexpage7)
	get_tree().root.remove_child(indexpage6)

#Next Button Page 8
func _on_next_button_page_7_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage8)
	get_tree().root.add_child(indexpage8)
	get_tree().root.remove_child(indexpage7)

#Next Button Page 9
func _on_next_button_page_8_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage9)

"""Back Button"""
#Back Button Page 1
func _on_back_button_page_2_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage1)
	
#Back Button Page 2
func _on_back_button_page_3_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage2)

#Back Button Page 3
func _on_back_button_page_4_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage3)

#Back Button Page 4
func _on_back_button_page_5_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage4)

#Back Button Page 5
func _on_back_button_page_6_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage5)

#Back Button Page 6
func _on_back_button_page_7_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage6)

#Back Button Page 7
func _on_back_button_page_8_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage7)

#Back button Page 8
func _on_back_button_page_9_pressed():
	buttonsound.play()
	#get_tree().change_scene_to_packed(indexpage8)

#######################################################################


#Mackenzie River Wolf
func _mackenzie_river_wolf_image():
	var image = Image.load_from_file(WolfData._get_Mackenzie_River_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	mackenzieriverwolfimage.set_texture_normal(texture)

func _mackenzie_river_wolf_name():
	machenzieriverwolflabel.set_text(WolfData._get_Mackenzie_River_Wolf_Name())
#######################################################################
#Mexican Wolf
func _mexician_wolf_image():
	var image = Image.load_from_file(WolfData._get_Mexican_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	mexicanwolfimage.set_texture_normal(texture)

func _mexican_wolf_name():
	mexicanwolflabel.set_text(WolfData._get_Mexican_Wolf_Name())
#######################################################################
#Mongolian Wp;f
func _mongolian_wolf_image():
	var image = Image.load_from_file(WolfData._get_Mongolian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	mongolianwolfimage.set_texture_normal(texture)

func _mongolian_wolf_name():
	mongolianwolflabel.set_text(WolfData._get_Mongolian_Wolf_Name())
#######################################################################
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
	thundrawolfimage.set_texture_normal(texture)

func _tundra_wolf_name():
	thundrawolflabel.set_text(WolfData._get_Tundra_Wolf_Name())
#######################################################################
#Vancouver Coastal Island Wolf
func _vancouver_coastal_island_wolf_image():
	var image = Image.load_from_file(WolfData._get_Vancouver_Coastal_Island_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	vancouvercoastalislandwolfimage.set_texture_normal(texture)

func _vancouver_coastal_island_wolf_name():
	vancouvercoastalislandwolflabel.set_text(WolfData._get_Vancouver_Coastal_Island_Wolf_Name())






############################################################################

#13
#Hudson Bay Wolf
func _on_hudson_bay_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#14
#Iberian Wolf
func _on_Iberian_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#15
#Indian Wolf
func _on_indian_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#16
#Interior Alaskan Wolf (Yukon Wolf)
func _on_interior_alaskan_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#17
#Italian Wolf
func _on_italian_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#18
#Labrador Wolf
func _on_labrador_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#19
#Mackenzie River Wolf
func _on_mackenzie_river_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#20
#Mexican Wolf
func _on_mexican_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#21	
#Mongolian Wolf
func _on_mongolian_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#23
#Northwestern Wolf
func _on_northwestern_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#24
#Red Wolf
func _on_red_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#25
#Steppe Wolf (Caspian Sea Wolf)
func _on_steppe_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#26
#Tundra Wolf
func _on_tundra_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#27 
#Vancouver Coastal Island Wolf
func _on_vancouver_coastal_island_wolf_pressed():
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
	LoadingScreen.load_scence(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
func _ready():

#Mackenzie River Wolf
	_mackenzie_river_wolf_name()
#Mexican Wolf
	_mexican_wolf_name()
#Mongolian Wolf
	_mongolian_wolf_name()
#Northern Rocky Mountain Wolf
	_northern_rocky_mountain_wolf_name()
#Northwestern Wolf
	_northerwestern_wolf_name()
#Red Wolf
	_red_wolf_name()
#Steppe Wolf (Caspian Sea Wolf)
	_steppe_wolf_name()
#Tundra Wolf
	_tundra_wolf_name()
#Vancouver Coastal Island Wolf
	_vancouver_coastal_island_wolf_name()


