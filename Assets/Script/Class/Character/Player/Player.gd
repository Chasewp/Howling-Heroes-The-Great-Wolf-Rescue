class_name Players
extends CharacterBody2D

signal update_coordinate
signal update_ammo

@export_category("Variable Class")
@export var speed = 300
@export var jump_velocity = -350.0
@export var acceleration : float = 15.0
@export var jumps = 1
@export var bullet_scence : PackedScene
var attack_riffle : float = 4.5
var attack_machete : float = 4.45
@export var player_name: String
@export var player_health : int
@export var player_armor : int
@export var player_biome : String
@export var player_ammo : int = 30 : set = set_max_ammo
@export var player_mag : int = 150 : set = set_max_reserved_ammo
@export var machete_equip : bool
@export var brust_garou_equip : bool
enum state {IDDLE, IDDLE_MACHETE, IDDLE_BRUST_GAROU, RUNNING, JUMPUP, JUMPDOWN, HURT,DIED,ATTACKMACHETE,AIR_ATTACKMACHETE,SHOOT}

var anim_state = state.IDDLE
var coordinate = Data_Progress.new()
var current_ammo = player_ammo
var shooting = true
var _reload_time := 3.5 : set = set_reload_time
var _fire_rate := 0.13 : set = set_fire_rate
var data = preload("user://Save/Progress/Save_Progress.tres")

#node variable
@onready var animator = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer
@onready var projectiles = $bullets_shoot
@onready var interact_ui = $"interacct Ui"
@onready var inventory_ui = $Inventory
@onready var bullets_caps_lbl = $Text/Ammo_Label/bullets_caps
@onready var maganize_lbl = $Text/Ammo_Label/mag_label
@onready var reloading_riffle_sfx = $SFX/reloading_riffle
@onready var reloading_voice_sfx = $SFX/reloading_voice
@onready var ammo_empty_sfx = $SFX/Ammo_Empty
@onready var shoot_sfx = $SFX/shoot
@onready var shooting_timer = $shoot_timer
@onready var reloading_timer = $reloading_timer
@onready var reloading_progress_bar = %Reload_ProgressBar
@onready var reloading_progress_display =  %reload_progress_display

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	get_player_data()
	brust_garou_equip = false
	machete_equip = false
	Inventory_Global.set_player_reference(self)
	reloading_timer.connect("timeout",Callable(self,"refill_ammo"))	
	refill_ammo()
	
func update_state():
		if anim_state == state.HURT: 
			return
		if is_on_floor():
			if velocity == Vector2.ZERO:
				anim_state = state.IDDLE
			elif  velocity.x != 0:
				anim_state = state.RUNNING
		else: 
			if velocity.y <0 :
				anim_state = state.JUMPUP
			else:
				anim_state = state.JUMPDOWN
	
func update_animation(direction):
	if direction > 0 :
		animator.flip_h = false
	elif direction <0:
		animator.flip_h = true
		projectiles.set_position(Vector2(-75,17))
	match  anim_state:
		state.IDDLE:
			animation_player.play("iddle")
		state.IDDLE_MACHETE:
			animation_player.play("iddle_machete")
		state.RUNNING:
			animation_player.play("run")
		state.JUMPUP:
			animation_player.play("jump_up")
		state.JUMPDOWN:
			animation_player.play("jump_down")
		state.HURT:
			animation_player.play("hurt")
		state.DIED:
			animation_player.play("died")
		state.ATTACKMACHETE:
			animation_player.play("machete_attack")
		state.SHOOT:
			animation_player.play("run_shoot")
			
func _physics_process(delta):
	if DialogueManager.is_dialog_active:
		return
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = jump_velocity

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x =  move_toward(velocity.x, direction * speed, acceleration)
	else:
		velocity.x =  move_toward(velocity.x,0, acceleration/2)
	
	coordinate.UpdatePos(self.position)
	emit_signal("update_coordinate",self.position)
	
	update_animation(direction)
	update_state()
	move_and_slide()
	
	var mouse_position = get_global_mouse_position()
	projectiles.look_at(mouse_position)
	
	if not reloading_timer.is_stopped():
		return
		
	if Input.is_action_just_pressed("shoot_fire"):
		if current_ammo > 0 :
			shoot()
		else: 
			ammo_empty_sfx.play()
	
	if Input.is_action_just_pressed("Reloading") and current_ammo < player_mag:
		reloading()
		
	if Input.is_action_just_pressed("slash"):
		pass		
	

func get_player_data():
	if data is Data_Progress : 
		player_singleton.setter_name(data.player_name)
		player_singleton.setter_health(data.player_health)
		player_singleton.setter_location(data.player_biome_location)
		player_singleton.setter_armor(data.player_armor)
		player_singleton.setter_ammo_bullet(data.ammmo)
		player_singleton.setter_magazine_stock(data.mag)
		player_name = player_singleton.getter_name()
		player_health = player_singleton.getter_health()
		player_armor = player_singleton.getter_armor()
		player_biome = player_singleton.getter_location()
		player_ammo = player_singleton.getter_ammo_bullet()
		player_mag = player_singleton.getter_magazine_stock()
	else:
		print("Failed to load resource data.")
		
func shoot():
	if not shooting_timer.is_stopped():
		return
		
	current_ammo -= 1
	bullets_caps_lbl.text = str(player_ammo)
		
	var bullet_instance = bullet_scence.instantiate()
	bullet_instance.rotation = projectiles.rotation
	bullet_instance.global_position = projectiles.global_position
	bullet_instance.transform = projectiles.global_transform
	get_tree().root.add_child(bullet_instance)
		
	shoot_sfx.play()
	bullets_caps_lbl.text = str(current_ammo)
	shooting_timer.start(0.25 - _fire_rate)  # set according to your fire rate timing

	if player_ammo <= 0:
		ammo_empty_sfx.play()
	
func reloading():
	if player_mag <= 0:
		ammo_empty_sfx.play()
		return 
	
	reloading_voice_sfx.play()
	reloading_timer.start(_reload_time)
	reloading_progress_display.show()
		
	var tween = create_tween()
	reloading_progress_bar.value = 0.0
	tween.tween_property(reloading_progress_bar, "value", 1.0, _reload_time)

func refill_ammo():
	var ammo_missing = player_ammo - current_ammo
	
	if player_mag >= ammo_missing:
		reloading_voice_sfx.play()
		set_max_reserved_ammo(player_mag - ammo_missing)
		current_ammo = player_ammo
	else:
		current_ammo += player_mag
		set_max_reserved_ammo(0)	
		
	reloading_progress_display.hide()
	bullets_caps_lbl.text = str(current_ammo)
	
func _input(event):
	if event.is_action_pressed("open_inventory"):
		inventory_ui.visible != inventory_ui.visible
		get_tree().paused != get_tree().paused

func apply_item_effect():
	#match item["effect"]:
		pass

func _on_reloading_voice_finished():
	reloading_riffle_sfx.play()

func set_max_ammo(value : int)-> void :
	player_ammo = value

func set_max_reserved_ammo(value: int)-> void:
	player_mag = value
	maganize_lbl.text = str(player_mag)	

func set_reload_time(value: float)-> void:
	_reload_time = value
	
func set_fire_rate(value: float)-> void :
	_fire_rate = value
