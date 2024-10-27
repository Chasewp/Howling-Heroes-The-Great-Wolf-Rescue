class_name Players
extends CharacterBody2D

signal update_coordinate

@export_category("Variable Class")
@export var speed = 300
@export var jump_velocity = -350.0
@export var acceleration : float = 15.0
@export var jumps = 1
@export var bullet_scence : PackedScene
@export var reloading_riffle:AudioStream
@export var reloading_voice:AudioStream
@export var shoot_riffle : AudioStream
@export var ammo_empty : AudioStream
@export var attack_riffle : float = 4.5
@export var attack_machete : float = 4.45
@export var player_name: String
@export var player_health : int
@export var player_armor : int
@export var player_biome : String

enum state {IDDLE, IDDLE_MACHETE, IDDLE_BRUST_GAROU, RUNNING, JUMPUP, JUMPDOWN, HURT,DIED,ATTACKMACHETE,AIR_ATTACKMACHETE,SHOOT}

var anim_state = state.IDDLE
var machete_equip : bool
var brust_garou_equip : bool
var save_ammo = Data_Progress.new()
var bullet = save_ammo.ammmo 
var magazine = save_ammo.mag
var coordinate = Data_Progress.new()
#node variable
@onready var animator = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer
@onready var projectiles = %bullets_shoot
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	brust_garou_equip = false
	machete_equip = false
	get_player_data()
			
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
			
func _physics_process(delta):
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


func get_player_data():
	var data = preload("user://Save/Progress/Save_Progress.tres")
	player_singleton.setter_name(data.player_name)
	player_singleton.setter_health(data.player_health)
	player_singleton.setter_location(data.player_biome_location)
	player_singleton.setter_armor(data.player_armor)
	player_name = player_singleton.getter_name()
	player_health = player_singleton.getter_health()
	player_armor = player_singleton.getter_armor()
	player_biome = player_singleton.getter_location()
func shoot():
	pass
