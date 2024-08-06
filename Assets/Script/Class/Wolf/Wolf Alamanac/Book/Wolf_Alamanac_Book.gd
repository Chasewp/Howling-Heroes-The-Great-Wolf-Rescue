"""Wolf Almanac Book"""
class_name Wolf_Almanac_Book
extends Node

#Wolf Picture
@onready var wolf_Picture = $Wolf_Picture
#Wolf Name
@onready var name_Wolf = $Name_Wolf
#Wolf Species
@onready var species = $Species
#Wolf Height
@onready var height = $Height_Label
#Wolf Weight
@onready var weight = $Weight_Label
#Wolf Lenght
@onready var lenght = $Leght_Label
#Wolf Status
@onready var status = $Status
#Wolf Region List
@onready var region = $Region_List
#Wolf Morphology
@onready var morphology = $MORPHOLOGY_details
#Wolf Diets List
@onready var diets = $Diets_List

func _ready():
	
	setimage(str(almanac.getter_Wolf_Image()))
	$Name_Wolf.set_text(almanac.getter_Wolf_Name())
	$Species.set_text(almanac.getter_Wolf_Species())
	$Height_Label.set_text(almanac.getter_Wolf_Height())
	$Weight_Label.set_text(almanac.getter_Wolf_Weight())
	$Leght_Label.set_text(almanac.getter_Wolf_Lenght())
	$Status.set_text(almanac.getter_Wolf_Conservation_Status())
	$Region_List.set_text(almanac.getter_Wolf_Region())
	$MORPHOLOGY_details.set_text(almanac.getter_Wolf_Morphology())
	$Diets_List.set_text(almanac.getter_Wolf_Diets())
	


#Wolves Data
func setimage(img):
	var image = Image.load_from_file(img)
	var texture = ImageTexture.create_from_image(image)
	$Wolf_Picture.set_texture(texture)

#quit Wolf Almanac
func _on_back_button_pressed():
		get_parent().remove_child(self)
	
