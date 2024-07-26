"""Singleton <AutoLoad> - Save & Load Manager"""
class_name save_load
extends Node


#Directory File Slot 1
const  _fileprogressslot1 = "user://Save/Progress/Slot1.tres"
#Directory File Slot 2
const _fileprogressslot2 = "user://Save/Progress/Slot2.tres"
#Directory File Slot 3
const _fileprogressslot3 = "user://Save/Progress/Slot3.tres"
#Directory File Slot 4
const _fileprogressslot4 = "user://Save/Progress/Slot4.tres"
#Directory Auto Save
const  _autosave = "user://Save/Progress/Auto.tres"

var _Image_Location : Image



#@onready var _player : Player = %Player as Player
#@onready var _screen_Shoot_Location = $Location

@onready var _character_Name = $VBoxContainer/Character_Container/Name
@onready var _Biome_Location = $VBoxContainer/Biome_Container/Location
@onready var _Coordinate = $VBoxContainer/Coordinate_Container/Coordinate


#Save Screen Shoot
func set_save_image_location(img: Image):
		_Image_Location = img

#Auto Save
func auto_save():
	
	#var _Auto_save = FileAccess.open(_autosave,FileAccess.WRITE)
	#var _Data =  ProgressedGame.new()
	#_Data.player_position = player.global_position
	#_Data.player_health = player.getter_health()
	#_Data.player_armor = player.getter_armor()
	#_Data.player_biome_location = player.getter_location()
	#_Data.player_name = player.getter_name()
	#_Data.speed = player.speed
	#_Auto_save.store_var(_Data)
	#print(_Data)
	#_Auto_save.close()

#Save Slot 1
func save_slot1():
	
	var _Save_Slot_1 = FileAccess.open_encrypted_with_pass(_fileprogressslot1,FileAccess.WRITE,"Bl1zz4rd03")
	var _Data = ProgressedGame.new()
	_Save_Slot_1.store_var(_Data)
	_Save_Slot_1.close()

#Save Slot 2
func save_slot2():
	var _Save_Slot_2 = FileAccess.open_encrypted_with_pass(_fileprogressslot2,FileAccess.WRITE,"Bl1zz4rd03")
	# _Save_Slot_2.store_var(Data variable)
	_Save_Slot_2.close()

#Save Slot 3
func save_slot3():
	var _Save_Slot_3 = FileAccess.open_encrypted_with_pass(_fileprogressslot3,FileAccess.WRITE,"Bl1zz4rd03")
	# _Save_Slot_3.store_var(Data variable)
	_Save_Slot_3.close()

#Save Slot 4
func save_slot4():
	var _Save_Slot_4 = FileAccess.open_encrypted_with_pass(_fileprogressslot4,FileAccess.WRITE,"Bl1zz4rd03")
	# _Save_Slot_4.store_var(Data variable)
	_Save_Slot_4.close()


#Load Slot 1
func load_slot1():
	if FileAccess.file_exists(_fileprogressslot1):
		var _Load_Slot_1 = FileAccess.open_encrypted_with_pass(_fileprogressslot1,FileAccess.READ,"Bl1zz4rd03")
		#Data variable = _Load_Slot_1.get_var()
		_Load_Slot_1.close()

#Load Slot 2
func load_slot2():
	if FileAccess.file_exists(_fileprogressslot2):
		var _Load_Slot_2 = FileAccess.open_encrypted_with_pass(_fileprogressslot2,FileAccess.READ,"Bl1zz4rd03")
		#Data variable = _Load_Slot_2.get_var()
		_Load_Slot_2.close()

#Load Slot 3
func load_slot3():
	if FileAccess.file_exists(_fileprogressslot3):
		var _Load_Slot_3 = FileAccess.open_encrypted_with_pass(_fileprogressslot3,FileAccess.READ,"Bl1zz4rd03")
	#Data variable = _Load_Slot_3.get_var()
		_Load_Slot_3.close()

#Load Slot 4
func load_slot4():
	if FileAccess.file_exists(_fileprogressslot4):
		var _Load_Slot_4 = FileAccess.open_encrypted_with_pass(_fileprogressslot4,FileAccess.READ,"Bl1zz4rd03")
	#Data variable = _Load_Slot_4.get_var()
		_Load_Slot_4.close()
		
#Load Auto Save
func load_auto_save():
	if FileAccess.file_exists(_autosave):
		var _Load_Auto_Save = FileAccess.open(_autosave,FileAccess.READ)
		var _Data = ProgressedGame.new()
		_Data = _Load_Auto_Save.get_var()
		_Load_Auto_Save.close()
	
	
func _on_load_slot_1_pressed():
	pass # Replace with function body.


func _on_load_slot_2_pressed():
	pass # Replace with function body.


func _on_load_slot_3_pressed():
	pass # Replace with function body.


func _on_load_slot_4_pressed():
	pass # Replace with function body.


func _on_save_slot_1_pressed():
	save_slot1()

func _on_save_slot_2_pressed():
	pass # Replace with function body.


func _on_save_slot_3_pressed():
	pass # Replace with function body.


func _on_save_slot_4_pressed():
	pass # Replace with function body.

	
func _on_load_autosave_pressed():
	pass # Replace with function body.
	
func _ready():
	pass

func _process(delta):
	
	pass


func _on_load_slot_1_mouse_entered():
	pass # Replace with function body.


func _on_load_slot_1_mouse_exited():
	pass # Replace with function body.


func _on_load_slot_2_mouse_entered():
	pass # Replace with function body.


func _on_load_slot_2_mouse_exited():
	pass # Replace with function body.


func _on_load_slot_3_mouse_entered():
	pass # Replace with function body.


func _on_load_slot_4_mouse_entered():
	pass # Replace with function body.


func _on_load_slot_4_mouse_exited():
	pass # Replace with function body.


func _on_load_slot_3_mouse_exited():
	pass # Replace with function body.


func _on_load_slot_5_mouse_entered():
	pass # Replace with function body.


func _on_load_slot_5_mouse_exited():
	pass # Replace with function body.


func _on_back_button_pressed():
	pass # Replace with function body.
