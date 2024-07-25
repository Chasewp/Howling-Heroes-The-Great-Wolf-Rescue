"""Wolf Almanac Main Menu"""
class_name Wolf_Alamac_Index
extends Node2D


"""Wolves Pictures"""
#Wolf Picture 1 - Alaska Tundra Wolf
@onready var alaskantundrawolfimage = $"Background/Almanac Index/WolfVBoxContainer1/Wolf 1"
#Wolf Picture 2 - Alexander Archipelago Wolf 
@onready var alexanderarchipelagowolf = $"Background/Alamac Index/VBoxContainer2/Wolf 2"
#Wolf Picture 3 - Arabian Wolf 
@onready var arabianwolfimage=$"Background/Alamac Index/VBoxContainer3/Wolf 3"
#Wolf Picture 4 - Artic Wolf 
@onready var arcticwolfimage = $"Background/Alamac Index/WolfVBoxContainer4/Wolf 4"
#Wolf Picture 5 - Baffin Island Wolf Steppe Wolf
@onready var baffinislandwolfiamge = $"Background/Alamac Index/VBoxContainer5/Wolf 5"
#Wolf Picture 6 - British Columbian Wolf 
@onready var britishcolumbianwolfimage = $"Background/Alamac Index/VBoxContainer6/Wolf 6"
#Wolf Picture 7 - Eastern Wolf
@onready var easternwolfimage = $"Background/Alamac Index/WolfVBoxContainer7/Wolf 7"
#Wolf Picture 8 - Eurasian Wolf 
@onready var eurasianwolf = $"Background/Alamac Index/VBoxContainer8/Wolf 8"
#Wolf Picture 9 - Gray Wolf
@onready var graywolfimage = $"Background/Almanac Index/WolfVBoxContainer9/Wolf 9"
#Wolf Picture 10 - Great Plains Wolf 
@onready var greatplainswolfimage = $"Background/Alamac Index/VBoxContainer10/Wolf 10"
#Wolf Picture 11 - Greenland Wolf 
@onready var greenlandwolfimage = $"Background/Alamac Index/WolfVBoxContainer11/Wolf 11"
#Wolf Picture 12 - Himalayan Wolf
@onready var himalayanwolfimage = $"Background/Alamac Index/WolfVBoxContainer12/Wolf 12"
#Wolf Picture 13 - Hudson Bay Wolf
@onready var hudsonbaywolfimage = $"Background/Alamac Index/WolfVBoxContainer13/Wolf 13"
#Wolf Picture 14 - Iberian Wolf
@onready var iberianwolfimage = $"Background/Alamac Index/VBoxContainer14/Wolf 14" 
#Wolf Picture 15 - Indian Wolf
@onready var indianwolfimage = $"Background/Alamac Index/WolfVBoxContainer15/Wolf 15"
#Wolf Picture 16 - Interior Alaskan Wolf (Yukon Wolf)
@onready var yukonwolfimage = $"Background/Alamac Index/WolfVBoxContainer16/Wolf 16"
#Wolf Picture 17 - Italian Wolf
@onready var italianwolfimage = $"Background/Alamac Index/WolfVBoxContainer17/Wolf 17"
#Wolf Picture 18 - Labrador Wolf
@onready var labradorwolf = $"Background/Alamac Index/WolfVBoxContainer18/Wolf 18" 
#Wolf Picture 19 - Mackenzie River Wolf
@onready var mackenzieriverwolfimage = $"Background/Alamac Index/WolfVBoxContainer19/Wolf 19" 
#Wolf Picture 20 - Mexican Wolf
@onready var mexicanwolfimage = $"Background/Alamac Index/WolfVBoxContainer20/Wolf 20"
#Wolf Picture 21 - Mongolian Wolf
@onready var mongolianwolfimage = $"Background/Almanac Index/WolfVBoxContainer21/Wolf 21"
#Wolf Picture 22 - Northern Rocky Mountain Wolf
@onready var northernrockymountainwolfimage = $"Background/Alamac Index/WolfVBoxContainer22/Wolf 22"
#Wolf Picture 23 - Northwestern Wolf 
@onready var northwesternwolfimage = $"Background/Alamac Index/WolfVBoxContainer23/Wolf 23"
#Wolf Picture 24 - Red Wolf
@onready var redwolfimage = $"Background/Almanac Index/WolfVBoxContainer24/Wolf 24"
#Wolf Picture 25 - Steppe Wolf (Caspian Sea Wolf)
@onready var steppewolfimage = $"Background/Alamac Index/WolfVBoxContainer25/Wolf 25"
#Wolf Picture 26 -Thundra Wolf
@onready var thundrawolfimage = $"Background/Alamac Index/WolfVBoxContainer26/Wolf 26"
#Wolf Picture 27 -Vancouver Coastal Island Wolf 
@onready var vancouvercoastalislandwolf = $"Background/Alamac Index/WolfVBoxContainer27/Wolf 27"

"""Wolves Labels"""
#Wolf Label 1 - Alaskan Tundra Wolf
@onready var alaskantundrawolflabel = $"Background/Almanac Index/WolfVBoxContainer1/Label_Wolf1"
#Wolf Label 2 - Alexander Archipelago Wolf
@onready var alexanderarchipelagowolflabel = $"Background/Almanac Index/WolfVBoxContainer2/Label Wolf2"
#Wolf Label 3 - Arabian Wolf
@onready var arabianwolflabel = $"Background/Almanac Index/WolfVBoxContainer3/Label Wolf3"
#Wolf Label 4- Artic Wolf
@onready var arcticwolflabel = $"Background/Alamac Index/WolfVBoxContainer4/Label_Wolf 4"
#Wolf Label 5 - Baffin Island Wolf
@onready var baffinislandwolflabel = $"Background/Alamac Index/VBoxContainer5/Label Wolf5"
#Wolf Label 6 - British Columbian Wolf
@onready var britshcolumbianwolflabel = $"Background/Alamac Index/VBoxContainer6/Label Wolf6"
#Wolf Label 7 - Eastern Wolf
@onready var easternwolflabel = $"Background/Alamac Index/WolfVBoxContainer7/Label_Wolf 7"
#Wolf Label 8 - Eurasian Wolf
@onready var eurasianwolflabel = $"Background/Alamac Index/VBoxContainer8/Label Wolf8"
#Wolf Label 9 - Gray Wolf
@onready var graywolflabel = $"Background/Almanac Index/WolfVBoxContainer9/Label_Wolf9"
#Wolf Label 10 - Great Plains Wolf 
@onready var greatplainwolflabel = $"Background/Almanac Index/WolfVBoxContainer10/Label_wolf10"
#Wolf Label 11 - Greenland Wolf 
@onready var greenlandwolflabel = $"Background/Almanac Index/WolfvBoxContainer11/Label_wolf11"
#Wolf Label 12 - Himalayan Wolf
@onready var Himalayanwolflabel = $"Background/Alamac Index/WolfVBoxContainer12/Label_Wolf 12"
#Wolf Label 13 - Hudson Bay Wolf
@onready var hudsonbaywolflabel = $"Background/Alamac Index/WolfVBoxContainer13/Label Wolf13"
#Wolf Label 14 - Iberian Wolf
@onready var iberianwolflabel = $"Background/Alamac Index/VBoxContainer14/Label Wolf14"
#Wolf Label 15 - Indian Wolf
@onready var indianwolflabel = $"Background/Alamac Index/WolfVBoxContainer13/Label_Wolf 13"
#Wolf Label 16 - Interior Alaskan Wolf (Yukon Wolf)
@onready var yukonwolflabel = $"Background/Alamac Index/WolfVBoxContainer16/Label_Wolf 16"
#Wolf Label 17 - Italian Wolf
@onready var italianwolflabel = $"Background/Alamac Index/WolfVBoxContainer17/Label_Wolf 17"
#Wolf Label 18 - Labrador Wolf
@onready var labradorwolflabel = $"Background/Alamac Index/WolfVBoxContainer18/Label Wolf18" 
#Wolf Label 19 - Mackenzie River Wolf
@onready var machenzieriverwolflabel = $"Background/Alamac Index/WolfVBoxContainer19/Label Wolf19"
#Wolf Label 20 - Mexican Wolf
@onready var mexicanwolflabel = $"Background/Alamac Index/WolfVBoxContainer20/Label Wolf20"
#Wolf Label 21 - Mongolian Wolf
@onready var mongolianwolflabel = $"Background/Almanac Index/WolfVBoxContainer21/Label Wolf21"
#Wolf Label 22 - Northern Rocky Mountain Wolf
@onready var northernrockymountainwolflabel = $"Background/Alamac Index/WolfVBoxContainer22/Label Wolf22"
#Wolf Label 23 - Northwestern Wolf
@onready var northwesternwolflabel = $"Background/Alamac Index/WolfVBoxContainer23/Label Wolf23"
#Wolf Label 24 - Red Wolf
@onready var redwolflabel = $"Background/Almanac Index/WolfVBoxContainer24/Label Wolf24"
#Wolf Label 25 - Steppe Wolf (Caspian Sea Wolf)
@onready var steppewolflabel = $"Background/Alamac Index/WolfVBoxContainer25/Label Wolf25"
#Wolf Label 26 - Thundra Wolf
@onready var thundrawolflabel = $"Background/Alamac Index/WolfVBoxContainer26/Label Wolf26"
#Wolf Label 27 - Vancouver Coastal IslandWolf
@onready var vancouvercoastalislandwolflabel = $"Background/Alamac Index/WolfVBoxContainer27/Label_Wolf 27"


"""Inisiate Page"""
var indexpage1 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Wolf_Almanac_Idex_Page 1.tscn").instantiate()
var indexpage2 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_2.tscn").instantiate()
var indexpage3 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_3.tscn").instantiate()
var indexpage4 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_4.tscn").instantiate()
var indexpage5 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_5.tscn").instantiate()
var indexpage6 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_6.tscn").instantiate()
var indexpage7 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_7.tscn").instantiate()
var indexpage8 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_8.tscn").instantiate()
var indexpage9 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/wolf_almanac_idex_page_9.tscn").instantiate()
var book_Almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/wolf_almanac.tscn").instantiate()

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Next Button"""
#Next Button Page 2
func _on_next_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage2)
	get_tree().root.add_child(indexpage2)

#Next Buttton Page 3
func _on_next_button_page_2_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage3)

#Next Button Page  4
func _on_next_button_page_3_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage4)

#Next Button Page 5
func _on_next_button_page_4_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage5)
	
#Next Button Page 6
func _on_next_button_page_5_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage6)
	
#Next Button Page 7
func _on_next_button_page_6_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage7)

#Next Button Page 8
func _on_next_button_page_7_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage8)

#Next Button Page 9
func _on_next_button_page_8_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage9)

"""Back Button"""
#Back Button Page 1
func _on_back_button_page_2_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage1)
	
#Back Button Page 2
func _on_back_button_page_3_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage2)

#Back Button Page 3
func _on_back_button_page_4_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage3)

#Back Button Page 4
func _on_back_button_page_5_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage4)

#Back Button Page 5
func _on_back_button_page_6_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage5)

#Back Button Page 6
func _on_back_button_page_7_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage6)

#Back Button Page 7
func _on_back_button_page_8_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage7)

#Back button Page 8
func _on_back_button_page_9_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage8)

#######################################################################
"Wolves Data"
#Alaskan Tundra Wolf
func _alaskan_tundra_wolf_image():
	var image = Image.load_from_file(WolfData._get_Alaskan_Tundra_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	alaskantundrawolfimage.set_texture_normal(texture)

func _alaskan_tundra_wolf_name():
	alaskantundrawolflabel.set_text(WolfData._get_Alaskan_Tundra_Wolf_Name())
#######################################################################
#Alexander Archipelago Wolf
func _alexander_archipelago_wolf_image():
	var image = Image.load_from_file(WolfData._get_Alexander_Archipelago_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	alexanderarchipelagowolflabel.set_texture_normal(texture)

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
#######################################################################
#Arctic Wolf
func _arctic_wolf_image():
	var image = Image.load_from_file(WolfData._get_Arctic_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	arcticwolfimage.set_texture_normal(texture)

func _artic_wolf_name():
	arcticwolflabel.set_text(WolfData._get_Arctic_Wolf_Name())
#######################################################################
#Baffin Island Wolf
func _baffin_island_wolf_image():
	var image = Image.load_from_file(WolfData._get_Baffin_Island_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	baffinislandwolfiamge.set_texture_normal(texture)

func _baffin_island_wolf_name():
	baffinislandwolflabel.set_text(WolfData._get_Baffin_Island_Wolf_Name())
#######################################################################
#British Columbian Wolf
func _british_columbian_wolf_image():
	var image = Image.load_from_file(WolfData._get_British_Columbian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	britishcolumbianwolfimage.set_texture_normal(texture)

func _british_columbian_wolf_name():
	britishcolumbianwolflabel.set_text(WolfData._get_British_Columbian_Wolf_Name())
#######################################################################
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
	eurasiawolfimage.set_texture_normal(texture)

func _eurasian_wolf_name():
	eurasiawolflabel.set_text(WolfData._get_Eurasian_Wolf_Name())
#######################################################################
#Gray Wolf
func _gray_wolf_image():
	var image = Image.load_from_file(WolfData._get_Gray_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	graywolfimage.set_texture_normal(texture)

func _gray_wolf_name():
	graywolflabel.set_text(WolfData._get_Gray_Wolf_Name())
#######################################################################
#Great Plains Wolf
func _great_plains_wolf_image():
	var image = Image.load_from_file(WolfData._get_Great_Plains_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	greatplainswolfimage.set_texture_normal(texture)

func _great_plains_wolf_name():
	greatplainswolflabel.set_text(WolfData._get_Great_Plains_Wolf_Name())
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
	himalayanwolflabel.set_text(WolfData._get_Himalayan_Wolf_Name())
#######################################################################
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
#Interior Alaskan Wolf (Yukon Wolf)
func _interior_alaskan_wolf_image():
	var image = ImageTexture.create_from_image(WolfData._get_Interior_Alaskan_Wolf_Image)
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
#Mackenzie River Wolf
func _mackenzie_river_wolf_image():
	var image = Image.load_from_file(WolfData._get_Mackenzie_River_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	mackenzieriverwolfimage.set_texture_normal(texture)

func _mackenzie_river_wolf_name():
	mackenzieriverwolflabel.set_text(WolfData._get_Mackenzie_River_Wolf_Name())
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



#Into Wolf Almanac Book
#1
#Alaskan Tundra Wolf
func _on_alaskan_tundra_wolf_pressed():
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
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Alaskan_Tundra_Wolf_Conservation_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Alaskan_Tundra_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Alaskan_Tundra_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Alaskan_Tundra_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
########################################################################
#2 
#Alexander Tundra Wolf
func _on_alexander_tundra_wolf_pressed():
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
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Alexander_Archipelago_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Alexander_Archipelago_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_Alexander_Archipelago_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Alexander_Archipelago_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
##########################################################################
#3
#Arabian Wolf
func _on_arabian_wolf_pressed():
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
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Arabian_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Arabian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Arabian_Wolf_Morphology)
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Arabian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#4
#Artic Wolf
func _on_arctic_wolf_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Arctic_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Arctic_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Arctic_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Arctic_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Arctic_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Arctic_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Arctic_Wolf_Conservation_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Arctic_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Arctic_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Arctic_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#5
#Baffin Island Wolf
func _on_baffin_island_wolf_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_Baffin_Island_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_Baffin_Island_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_Baffin_Island_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_Baffin_Island_Wolf_Lenght())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_Baffin_Island_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_Baffin_Island_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Baffin_Island_Wolf_status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Baffin_Island_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_baffin_Island_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_baffin_Island_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#6
#British Columbian Wolf
func _on_british_columbian_wolf_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData._get_British_Columbian_Wolf_Image_Path())
	#Name
	almanac.setter_Wolf_Name(WolfData._get_British_Columbian_Wolf_Name())
	#Species
	almanac.setter_Wolf_Species(WolfData._get_British_Columbian_Wolf_Species())
	#Height
	almanac.setter_Wolf_Height(WolfData._get_British_Columbian_Wolf_Height())
	#Weight
	almanac.setter_Wolf_Weight(WolfData._get_British_Columbian_Wolf_Weight())
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData._get_British_Columbian_Wolf_Lenght())
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData._get_British_Columbian_Wolf_Species())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_British_Columbian_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_British_Columbian_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_British_Columbian_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#7
#Eastern Wolf
func _on_eastern_wolf_pressed():
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#8
#Eurasian Wolf
func _on_eurasian_wolf_pressed():
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#9
#Gray Wolf
func _on_gray_wolf_pressed():
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#10
#Great Plain Wolf
func _on_great_plain_wolf_pressed():
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#12
#Himalayan Wolf
func _on_himalayan_wolf_pressed():
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#19
#Mackenzie River Wolf
func _on_mackenzie_river_wolf_pressed():
	#Image
	almanc.setter_Wolf_Image(WolfData._get_Mackenzie_River_Wolf_Image_Path())
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
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
	almanac.setter_Wolf_Species(WolfData.)
	#Height
	almanac.setter_Wolf_Height(WolfData.)
	#Weight
	almanac.setter_Wolf_Weight(WolfData.)
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData.)
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData.)
	#Region
	almanac.setter_Wolf_Region(WolfData.)
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData.)
	#Diets
	almanac.setter_Wolf_Diets(WolfData.)
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#25
#Steppe Wolf (Caspian Sea Wolf)
func _on_steppe_wolf_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData.)
	#Name
	almanac.setter_Wolf_Name(WolfData.)
	#Species
	almanac.setter_Wolf_Species(WolfData.)
	#Height
	almanac.setter_Wolf_Height(WolfData.)
	#Weight
	almanac.setter_Wolf_Weight(WolfData.)
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData.)
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData.)
	#Region
	almanac.setter_Wolf_Region(WolfData.)
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData.)
	#Diets
	almanac.setter_Wolf_Diets(WolfData.)
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
#26
#Tundra Wolf
func _on_tundra_wolf_pressed():
	#Image
	almanac.setter_Wolf_Image(WolfData.)
	#Name
	almanac.setter_Wolf_Name(WolfData.)
	#Species
	almanac.setter_Wolf_Species(WolfData.)
	#Height
	almanac.setter_Wolf_Height(WolfData.)
	#Weight
	almanac.setter_Wolf_Weight(WolfData.)
	#Lenght
	almanac.setter_Wolf_Lenght(WolfData.)
	#Conservation Status
	almanac.setter_Wolf_Conservation_Status(WolfData.)
	#Region
	almanac.setter_Wolf_Region(WolfData.)
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData.)
	#Diets
	almanac.setter_Wolf_Diets(WolfData.)
	buttonsound.play()
	get_tree().change_scene_to_packed(book_Almanac)
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
	get_tree().change_scene_to_packed(book_Almanac)
	get_tree().root.add_child(book_Almanac)
############################################################################
func _ready():
#Wolves Images
#Alaskan Tundra Wolf
	_alaskan_tundra_wolf_image()
#Alexander Archipelago Wolf
#Arctic Wolf
#Baffin Island Wolf
#British Colombian Wolf
#Eastern Wolf
#Eurasian Wolf
#Gray Wolf
#Great Plains Wolf
#Himalayan Wolf
#Hudson Bay Wolf
#Iberian Wolf
#Indian Wolf
#Interior Alsakan Wolf (Yukon Wolf)
#Italian Wolf
#Labrador Wolf
#Mackenzie River Wolf
#Mexian Wolf
#Mongolian Wolf
#Northern Rocky Mountain Wolf
#Northwestern Wolf
#Red Wolf
#Steppe Wolf (Caspian Sea Wolf)
#Tundra Wolf
#Vancouver Coastal Island Wolf
############################################################################
#Wolf Name
#Alaskan Tundra Wolf
#Alexander Archipelago Wolf
#Arctic Wolf
#Baffin Island Wolf
#British Colombian Wolf
#Eastern Wolf
#Eurasian Wolf
#Gray Wolf
#Great Plains Wolf
#Himalayan Wolf
#Hudson Bay Wolf
#Iberian Wolf
#Indian Wolf
#Interior Alsakan Wolf (Yukon Wolf)
#Italian Wolf
#Labrador Wolf
#Mackenzie River Wolf
#Mexian Wolf
#Mongolian Wolf
#Northern Rocky Mountain Wolf
#Northwestern Wolf
#Red Wolf
#Steppe Wolf (Caspian Sea Wolf)
#Tundra Wolf
#Vancouver Coastal Island Wolf
