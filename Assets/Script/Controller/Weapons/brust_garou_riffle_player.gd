extends RigidBody2D

@export var bullet_scene: PackedScene
@onready var ammo_empty = $ammo_empty
@onready var reloading_riffle = $reloading_audio_riffle
@onready var reloading_voice = $reloading_audio_reloading
@onready var shooting_riffle = $shoot
@export_range(0, 1000) var max_ammo: int = 120
@export var mag_size: int = 30
@onready var reserved_ammo_label = %reserve_ammo
@onready var current_ammo_label = %current_ammo_label
@onready var projectiles = %Projectiles
@onready var shoting_timer = $Shoottimer
const BULLET_VELOCITY = 850.0

var mag_count = mag_size
var can_shoot = true
func _ready():
	reserved_ammo_label.text = str(max_ammo)
	current_ammo_label.text = str(mag_count)
	
func _on_reloading_audio_reloading_finished():
	reloading_riffle.play()

func _physics_process(delta:float)->void:
	
	if Input.is_action_pressed("shoot_fire") and can_shoot:
		if mag_count > 0:
			current_ammo_label.text = str(mag_count)
			shoot()
		else:
			ammo_empty.play()
			can_shoot = false
			
	elif  Input.is_action_pressed("Reload"):
		reload()

	

func shoot(direction: float = 1.0)->bool:
	if not shoting_timer.is_stopped():
		return false
		
	var b = bullet_scene.instantiate() as Bullets
	mag_count -= 1
	b.global_position = global_position
	#b.direction = global_position.direction_to(get_global_mouse_position())
	#b.linear_velocity = Vector2(direction * BULLET_VELOCITY, 0.0)
	b.set_as_top_level(true)
	add_child(b)
	shooting_riffle.play()
	shoting_timer.start()
	if mag_count <= 0:
		ammo_empty.play()
	return true

func reload():
	reloading_voice.play()
	_on_reloading_audio_reloading_finished()
	if max_ammo > 0:
		var ammo_needed = mag_size - mag_count
		if max_ammo >= ammo_needed:
			mag_count = mag_size
			max_ammo -= ammo_needed
			reserved_ammo_label.text=str(max_ammo)
		else:
			mag_count += max_ammo
			max_ammo = 0
			reserved_ammo_label.text=str(max_ammo)
		can_shoot = true
