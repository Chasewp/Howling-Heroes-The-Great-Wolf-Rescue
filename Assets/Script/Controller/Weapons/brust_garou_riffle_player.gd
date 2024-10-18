extends RigidBody2D

const BULETSSCENCE = preload("res://Assets/Bullets/bullets_player.tscn")
const AMMOVISUAL = preload("res://Assets/Bullets/Ammovisual.tscn")
@onready var ammo_empty = $ammo_empty
@onready var reloading_riffle = $reloading_audio_riffle
@onready var reloading_voice = $reloading_audio_reloading
@onready var shooting_riffle = $shoot
@onready var reserved_ammo_label = $CanvasLayer/HBoxContainer/TextureRect/AmmoReservedAmmo
@onready var projectiles = %Projectiles
@onready var shooting_timer = $Shoottimer
@onready var reloading_timer = $Reloadtimer
@onready var reloading_progressbar = %ReloadingProgressBar
@onready var reloading_progress_display = $CanvasLayer/Reloading_Progress
@onready var _ammo_display = $CanvasLayer/HBoxContainer/Ammo_Display

var max_ammo := 30 :set=set_max_ammo
var reserve_ammo := 120 :set=set_reserve_ammo

var _reload_time := 1.0 :set =set_reload_time
var _current_ammo := max_ammo
var _fire_rate := 0.13: set = set_fire_rate


func _ready() -> void:
	reloading_timer.connect("timeout",Callable(self,"refill_ammo"))
	refill_ammo()


func _physics_process(_delta: float) -> void:
	look_at(get_global_mouse_position())

	if not reloading_timer.is_stopped():
		return

	if Input.is_action_pressed("shoot_fire"):
		if _current_ammo > 0:
			shoot()
		else:
			ammo_empty.play()
	if Input.is_action_just_pressed("Reloading") and _current_ammo < max_ammo:
		reload()
#		#autoreload
#		else:
#			reload()
#	


func shoot() -> void:
	if not shooting_timer.is_stopped():
		return

	_current_ammo -= 1

	var bullet := BULETSSCENCE.instantiate() 
	bullet.global_position = projectiles.global_position
	bullet.direction = global_position.direction_to(get_global_mouse_position())
	bullet.transform = projectiles.global_transform
	get_tree().root.add_child(bullet)
	
	#
	

	_ammo_display.get_child(0).queue_free()
	shooting_riffle.play()
	shooting_timer.start(0.25 - _fire_rate)
	
	if _current_ammo <=0:
		ammo_empty.play()

func reload() -> void:
	if reserve_ammo <= 0:
		ammo_empty.play()
		return
		reloading_voice.play()
		_on_reloading_audio_reloading_finished()
		reloading_timer.start(_reload_time)
		reloading_progress_display.show()

	var tween := create_tween()
	reloading_progressbar.value = 0.0
	tween.tween_property(reloading_progressbar, "value", 1.0, _reload_time)


func refill_ammo() -> void:
	var ammo_missing := max_ammo - _current_ammo
	if reserve_ammo >= ammo_missing:
		reloading_voice.play()
		set_reserve_ammo(reserve_ammo - ammo_missing)
		_current_ammo = max_ammo
	else:
		_current_ammo += reserve_ammo
		set_reserve_ammo(0)
		
		
	reloading_progress_display.hide()
	for child in _ammo_display.get_children():
			child.queue_free()
	for i in _current_ammo:
		var instance = AMMOVISUAL.instantiate()
		_ammo_display.add_child(instance)


func set_max_ammo(value: int) -> void:
	max_ammo = value
	refill_ammo()
	
	
func set_reserve_ammo(value: int) -> void:
	reserve_ammo = value
	reserved_ammo_label.text = str(reserve_ammo)


func set_reload_time(value: float) -> void:
	_reload_time = value
	
	
func set_fire_rate(value: float) -> void:
	_fire_rate = value


func _on_ReloadTimer_timeout():
	pass # Replace with function body.


func _on_reloading_audio_reloading_finished():
	reloading_riffle.play() 
