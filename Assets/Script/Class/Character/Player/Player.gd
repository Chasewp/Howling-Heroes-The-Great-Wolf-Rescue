extends CharacterBody2D


@export var speed = 300
@export var jump_velocity = -350.0
@export var acceleration : float = 15.0
@export var jumps = 1
@export var ammo : int = 30
@export var mag : int = 120
@export var bullet_scence : PackedScene
@export var reloading_riffle:AudioStream
@export var reloading_voice:AudioStream
@export var shoot_riffle : AudioStream

enum state {IDDLE, IDDLE_MACHETE, IDDLE_BRUST_GAROU, RUNNING, JUMPUP, JUMPDOWN, HURT,DIED,ATTACKMACHETE,AIR_ATTACKMACHETE,SHOOT}

var anim_state = state.IDDLE
var machete_equip : bool
var brust_garou_equip : bool

#node variable
@onready var animator = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer
@onready var projectiles = %bullets_shoot
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	brust_garou_equip = false
	machete_equip = false
	
			
func update_state():
	if !machete_equip and !brust_garou_equip:
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
	if machete_equip:
		if anim_state == state.HURT:
			return
		if is_on_floor():
			if velocity == Vector2.ZERO:
				anim_state = state.IDDLE_MACHETE
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
	
	update_animation(direction)
	update_state()
	move_and_slide()


func shoot():
	pass
