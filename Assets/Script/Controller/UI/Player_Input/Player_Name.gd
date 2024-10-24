extends Control

# Called when the node enters the scene tree for the first time.
@onready var name_player = $Player_Name
@onready var infochar = $info_char
@onready var _world_root:WorldRoot = %WorldRoot
var number_text
var data = Data_Progress.new()

var play = Players.new()

func _ready():
	name_player.grab_focus()

	
func _process(delta):
	number_text = str(name_player.get_text()).length()
	infochar.set_text(str(number_text) + " / 32")
	#Hide Cursor 
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_player_name_text_submitted(new_text):
	data.player_position = play.global_position
	player_singleton.setter_name(new_text)
	data.player_name = player_singleton.getter_name()
	player_singleton.setter_location("Taiga")
	data.player_biome_location = player_singleton.getter_location()
	player_singleton.setter_armor(100)
	data.player_armor = player_singleton.getter_armor()
	player_singleton.setter_health(100)
	data.player_health = player_singleton.getter_health()
	data.mission_wolf_rescued = mission_data_stat.wolf_rescued
	data.mission_boss_elimated = mission_data_stat.boss_kill
	data.mission_enemy_elimated = mission_data_stat.enemy_kill
	get_tree().change_scene_to_file("res://Assets/Scences/World/World_Games.tscn")
	
	
