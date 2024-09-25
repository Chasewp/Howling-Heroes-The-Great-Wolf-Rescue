extends Control

# Called when the node enters the scene tree for the first time.
@onready var name_player = $Player_Name
@onready var infochar = $info_char

var number_text
var _heros = Hero.new()

func _ready():
	name_player.grab_focus()
	#set_caret_collom(len(name_player.text))
	
func _process(delta):
	number_text = str(name_player.get_text()).length()
	infochar.set_text(str(number_text) + " / 32")
	#Hide Cursor 
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_player_name_text_submitted(new_text):
	player.setter_name(new_text)
	player.setter_location("Taiga")
	player.setter_armor(100)
	player.setter_health(100)
	_heros.auto_save()
	get_tree().change_scene_to_file("res://Assets/Scences/Biome/Bridge_Stone_Forest/Bridge_Stone_Forest.tscn")
	
