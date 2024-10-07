class_name Wolf_Alamac
extends Node

#Wolf Picture
@onready var Wolf_Picture = $Wolf_Picture
#Wolf Name
@onready var Name_Wolf = $Name_Wolf
#Wolf Species
@onready var Species = $Species
#Wolf 
#@onready var 

#Effect
@onready var animations = $Animation
func _ready():
	animations.play("Open_Book")
	await get_tree().create_timer(6).timeout


func _on_back_button_pressed():
	LoadingScreen.load_scence("")
