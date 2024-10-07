"""Wolf Almanac Book"""
class_name Wolf_Almanac_Book
extends Node

"Cursor"
var normal_cursor = load("res://Assets/Image/Cursor/Cursor 32x32.png")
var hand_cursor = load("res://Assets/Image/Cursor/hand_paw.png")

#background
@onready var background = $Book_Texturee
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
	set_background(str("res://Assets/Image/Book Open/opened_notebook_isolated_on_background.png"))
	set_wolf_image(str(almanac.getter_Wolf_Image()))
	name_Wolf.set_text(almanac.getter_Wolf_Name())
	species.set_text(almanac.getter_Wolf_Species())
	height.set_text(almanac.getter_Wolf_Height())
	height.set_text(almanac.getter_Wolf_Weight())
	lenght.set_text(almanac.getter_Wolf_Lenght())
	status.set_text(almanac.getter_Wolf_Conservation_Status())
	region.set_text(almanac.getter_Wolf_Region())
	morphology.set_text(almanac.getter_Wolf_Morphology())
	diets.set_text(almanac.getter_Wolf_Diets())
	
#set Wolves Image
func set_wolf_image(img)->void:
	var image = Image.load_from_file(img)
	var texture = ImageTexture.create_from_image(image)
	wolf_Picture.set_texture(texture)

#set Background
func set_background(img)-> void:
	var images = Image.load_from_file(img)
	var textures = ImageTexture.create_from_image(images)
	background.set_texture(textures)
#quit Wolf Almanac
func _on_back_button_pressed()->void:
		get_parent().remove_child(self)
	
func on_mouse_entered()-> void:
	Input.set_custom_mouse_cursor(hand_cursor)
	
func on_mouse_exited()->void:
	Input.set_custom_mouse_cursor(normal_cursor)
