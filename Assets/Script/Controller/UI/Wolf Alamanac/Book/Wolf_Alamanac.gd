class_name Wolf_Alamac_Book
extends Node


#Wolf Picture
@onready var Wolf_Picture = $Wolf_Picture
#Wolf Name
@onready var Name_Wolf = $Name_Wolf
#Wolf Species
@onready var Species = $Species
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

#Effect
@onready var animations = $Animation

func _ready():
	animations.play("Open_Book")
	await get_tree().create_timer(6).timeout
	
#quit Wolf Almanac
func _process(delta):
	if Input.is_action_just_pressed("open_wolf_almanac"):
		self.visible =!self.visible
