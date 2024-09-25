class_name Hero extends Characters

signal update_coordinate
signal update_ammo

@export var _has_machete : bool
@export var _has_brust_garou : bool
@export var warehouse : Inventory
@onready var _attack_input_buffer : Timer = $HitBox/InputBuffer
@warning_ignore("unused_private_class_variable")
@onready var _cooldown : Timer = $HitBox/Cooldown
var _machete : RigidBody2D
var _brust_garou : RigidBody2D
var Progress = ProgressedGame.new()
var _is_enabled : bool

func attack():
	_wants_to_attack = true
	_attack_input_buffer.start()
	await _attack_input_buffer.timeout
	_wants_to_attack = false

func can_equip_brust_garou()-> bool:
	return not _has_brust_garou && not _is_dead
	
func equip_brust_garou(brust_garou : RigidBody2D):
	_brust_garou = brust_garou
	_has_brust_garou = true
	
	
func can_equip_machete() -> bool:
	return not _has_machete && not _is_dead

func equip_machete(machete : RigidBody2D):
	_machete = machete
	_has_machete = true

func drop_machete():
	if not _has_machete:
		return
	_has_machete = false
	_machete.be_dropped(global_position)
	_machete = null

func _air_physics(delta : float):
	if _is_attacking && velocity.y > 0:
		velocity.y = 0
	else:
		super._air_physics(delta)

func shoot_brust_garou_riffle(_delta:float):
	pass
	
func _die():
	if _has_machete:
		drop_machete()
	super._die()
	
func _on_hit_box_area_entered(area : Area2D):
	if _is_dead || not _is_attacking:
		return
	if not is_on_floor() && area.global_position.y > global_position.y:
		velocity.y = _jump_velocity / 2
	super._on_hit_box_area_entered(area)

func verify_save_directory(path: String):
	DirAccess.make_dir_absolute(path)
	
func _process(_delta):
	emit_signal("update_coordinate",self.position)
	#emit_signal("update_ammo",)	
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


func _on_hurt_box_area_entered(area):
	if area.has_method("collect"):
		area.collect(warehouse)
		

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
	ResourceSaver.save(Progress,_fileprogressslot1)
	print("Data Saved")

#Save Slot 2
func save_slot2():
	ResourceSaver.save(Progress,_fileprogressslot2)
	print("Data Saved")

#Save Slot 3
func save_slot3():
	ResourceSaver.save(Progress,_fileprogressslot3)
	print("Data Saved")

#Save Slot 4
func save_slot4():
	ResourceSaver.save(Progress,_fileprogressslot4)
	print("Data Saved")


#Load Slot 1
func load_slot1():
	Progress = ResourceLoader.load(_fileprogressslot1)
	_start_load()
	print("Data Loaded")

#Load Slot 2
func load_slot2():
	Progress = ResourceLoader.load(_fileprogressslot2)
	_start_load()
	print("Data Loaded")

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
	

func _on_save_slot_1_pressed():
	save_slot1()
	get_tree().root.remove_child(self)


func _on_save_slot_2_pressed():
	save_slot2()
	get_tree().root.remove_child(self)


func _on_save_slot_3_pressed():
	save_slot3()
	get_tree().root.remove_child(self)

func _on_save_slot_4_pressed():
	save_slot4()
	get_tree().root.remove_child(self)

