class_name Hero extends Character

signal update_coordinate

@export var _has_sword : bool
@onready var _attack_input_buffer : Timer = $HitBox/InputBuffer
@warning_ignore("unused_private_class_variable")
@onready var _cooldown : Timer = $HitBox/Cooldown
var _sword : RigidBody2D
var Progress = ProgressedGame.new()

func attack():
	_wants_to_attack = true
	_attack_input_buffer.start()
	await _attack_input_buffer.timeout
	_wants_to_attack = false

func can_equip_sword() -> bool:
	return not _has_sword && not _is_dead

func equip_sword(sword : RigidBody2D):
	_sword = sword
	_has_sword = true

func drop_sword():
	if not _has_sword:
		return
	_has_sword = false
	_sword.be_dropped(global_position)
	_sword = null

func _air_physics(delta : float):
	if _is_attacking && velocity.y > 0:
		velocity.y = 0
	else:
		super._air_physics(delta)

func _die():
	if _has_sword:
		drop_sword()
	super._die()
	
func _on_hit_box_area_entered(area : Area2D):
	if _is_dead || not _is_attacking:
		return
	if not is_on_floor() && area.global_position.y > global_position.y:
		velocity.y = _jump_velocity / 2
	super._on_hit_box_area_entered(area)

func verify_save_directory(path: String):
	DirAccess.make_dir_absolute(path)
	
func _process(delta):
	emit_signal("update_coordinate",self.position)	
	Progress.UpdatePos(self.position)
	
#func is_Dead():
	#if getter_health()==0:
		#get_tree().change_scene_to_packed(game_over)
		#get_tree().root.add_child(game_over)
		
func _start_load():
	self.position = Progress.player_position

func _on_inventory_ui_opened():
	get_tree().paused = true
	
func _on_inventory_ui_closed():
	get_tree().paused = false

func _on_alamanac_main_menu_closed():
	get_tree().paused = false

func _on_alamanac_main_menu_opened():
	get_tree().paused = false

"""Save Manager"""
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

#Auto Save
func auto_save():
	ResourceSaver.save(Progress,_autosave)
	print("Data Saved")

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
	Progress = ResourceLoader.load(_autosave)
	_start_load()
	print("Data Loaded")
	

