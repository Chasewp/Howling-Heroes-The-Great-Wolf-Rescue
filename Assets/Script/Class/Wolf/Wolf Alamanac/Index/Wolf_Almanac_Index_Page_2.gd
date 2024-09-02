"""Wolf Almanac Main Menu Page 2"""
class_name Wolf_Index_Page_2
extends Node2D

"""Wolves Image"""
#Wolf Picture 4 - Arctic Wolf 
@onready var arcticwolfimage = $"Background/Almanac Index/WolfVBoxContainer4/Wolf 4"
#Wolf Picture 5 - Baffin Island Wolf
@onready var baffinislandwolfimage = $"Background/Almanac Index/WolfVBoxContainer5/Wolf 5"
#Wolf Picture 6 - British Columbian Wolf
@onready var britishcolumbianwolfimage = $"Background/Almanac Index/WolfVBoxContainer6/Wolf 6"

"""Wolves Label"""
#Wolf Picture 4 - Arctic Wolf 
@onready var arcticwolflabel = $"Background/Almanac Index/WolfVBoxContainer4/Label_Wolf_4"
#Wolf Picture 5 - Baffin Island Wolf
@onready var baffinislandwolflabel = $"Background/Almanac Index/WolfVBoxContainer5/Label_Wolf_5"
#Wolf Picture 6 - British Columbian Wolf
@onready var britishcolumbianwolflabel = $"Background/Almanac Index/WolfVBoxContainer6/Label_Wolf_6"

#Button Click Sound
@onready var buttonsound = $Button_Click

"""Instantiate Scence"""
var indexpage3 = preload("res://Assets/Scences/UI/Wolf_Almanac/Index/Page 3/Wolf_Alamac_Index_Page_3.tscn").instantiate()
var book_almanac4 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac5 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var book_almanac6 = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Main/wolf_almanac.tscn").instantiate()
var arctic_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Arctic Wolf/arctic_wolf_almanac.tscn").instantiate()
var baffin_island_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/Baffin Island Wolf/baffin_island_wolf_almanac.tscn").instantiate()
var british_columbian_wolf_almanac = preload("res://Assets/Scences/UI/Wolf_Almanac/Book/British Colombian Wolf/britsh_colombian_wolf_almanac.tscn").instantiate()


"""Next Button"""
func _on_next_page_3_button_pressed():
	buttonsound.play()
	get_tree().change_scene_to_packed(indexpage3)
	get_tree().root.add_child(indexpage3)

"""Back Button"""
func _on_back_page_1_button_pressed():
	buttonsound.play()
	get_parent().remove_child(self)
	
"""Wolves Data"""
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
	baffinislandwolfimage.set_texture_normal(texture)

func _baffin_island_wolf_name():
	baffinislandwolflabel.set_text(WolfData._get_Baffin_Island_Wolf_Name())
#######################################################################
#British Columbian Wolf
func _british_columbian_wolf_image():
	var image = Image.load_from_file(WolfData._get_British_Columbian_Wolf_Image_Path())
	var texture = ImageTexture.create_from_image(image)
	britishcolumbianwolfimage.set_texture_normal(texture)

func _british_columbian_wolf_name():
	pass
	britishcolumbianwolflabel.set_text(WolfData._get_British_Columbian_Wolf_Name())

"""Into Wolf Almanac Book"""
#4
#Artic Wolf
func _on_arctic_wolf_Image_pressed():
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
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Arctic_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Arctic_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Arctic_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Arctic_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac4)
	get_tree().root.add_child(book_almanac4)
	
func _on_arctic_wolf_label_pressed():
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
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Arctic_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Arctic_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology(WolfData._get_Arctic_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_Arctic_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(arctic_wolf_almanac)
	get_tree().root.add_child(arctic_wolf_almanac)
############################################################################
#5
#Baffin Island Wolf
func _on_baffin_island_wolf_image_pressed():
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
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Baffin_Island_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Baffin_Island_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_baffin_Island_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_baffin_Island_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(book_almanac5)
	get_tree().root.add_child(book_almanac5)
	
func _on_baffin_island_wolf_label_pressed():
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
	almanac.setter_Wolf_Conservation_Status(WolfData._get_Baffin_Island_Wolf_Conservation_Status())
	#Region
	almanac.setter_Wolf_Region(WolfData._get_Baffin_Island_Wolf_Location())
	#Morphology
	almanac.setter_Wolf_Morphology( WolfData._get_baffin_Island_Wolf_Morphology())
	#Diets
	almanac.setter_Wolf_Diets(WolfData._get_baffin_Island_Wolf_Diets())
	buttonsound.play()
	get_tree().change_scene_to_packed(baffin_island_wolf_almanac)
	get_tree().root.add_child(baffin_island_wolf_almanac)
############################################################################
#6
#British Columbian Wolf
func _on_british_columbian_wolf__image_pressed():
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
	get_tree().change_scene_to_packed(book_almanac6)
	get_tree().root.add_child(book_almanac6)
	
func _on_british_columbian_wolf_label_pressed():
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
	get_tree().change_scene_to_packed(british_columbian_wolf_almanac)
	get_tree().root.add_child(british_columbian_wolf_almanac)
############################################################################

func _ready():
	if  WolfData._get_Arctic_Wolf_Rescue_Status() == false:
		arcticwolfimage.disabled = true
		arcticwolflabel.disabled = true
		arcticwolflabel.set_text("Wolf Label")
	else:
		#Arctic Wolf
		arcticwolfimage.disabled = false
		arcticwolflabel.disabled = false
		_arctic_wolf_image()
		_artic_wolf_name()
	
	if WolfData._get_Baffin_Island_Wolf_Rescue_Status() == false:
		baffinislandwolfimage.disabled = true
		baffinislandwolflabel.disabled = true
		baffinislandwolflabel.set_text("Wolf Label")
	else:
		#Baffin Island Wolf
		baffinislandwolfimage.disabled = false
		baffinislandwolflabel.disabled = false
		_baffin_island_wolf_image()
		_baffin_island_wolf_name()
	
	if WolfData._get_British_Columbian_Wolf_Rescue_Status() == false:
		britishcolumbianwolfimage.disabled = true
		britishcolumbianwolflabel.disabled = true
		britishcolumbianwolflabel.set_text("Wolf Label")
	else :
		#British Columbian Wolf
		britishcolumbianwolfimage.disabled = false
		britishcolumbianwolflabel.disabled = false
		_british_columbian_wolf_image()
		_british_columbian_wolf_name()
	
	

