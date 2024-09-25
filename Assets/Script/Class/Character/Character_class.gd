class_name Characters extends CharacterBody2D

var _is_bound : bool
var _min : Vector2
var _max : Vector2

@export_category("Locomotion")
@export var _speed : float = 8
@export var _acceleration : float = 16
@export var _deceleration : float = 32

@export_category("Jump")
@export var _jump_height : float = 2.5
@export var _air_control : float = 0.5
@export var _jump_dust : PackedScene
var _jump_velocity : float
var _was_on_floor : bool

@export_category("Sprite")
@export var _is_facing_left : bool
@export var _sprites_face_left : bool
@onready var _sprite : Sprite2D = $Sprite2D

@export_category("Swim")
@export var _density : float = -0.1
@export var _drag : float = 0.5
var _water_surface_height : float
var _is_in_water : bool
var _is_below_surface : bool

@export_category("Combat")
@export_range(1, 100) var _max_health : int = 100
@export_range(1,100) var _max_armor: int = 100
@export_range(0, 5) var _invincible_duration : float = 0
@export_range(0, 5) var _attack_damage : int = 1
@export_range(0, 10) var _stagger : float = 5
@export var _is_hit : bool
@export var _is_dead : bool
@export var _wants_to_attack : bool
@export var _is_attacking : bool
@onready var _current_health : int = _max_health
@onready var _current_armor : int = _max_armor
@onready var _hurt_box : Area2D = $HurtBox
@onready var _hit_box : Area2D = get_node_or_null("HitBox")
var _invincible_time : Timer

var _collision_layer : int = collision_layer
var _collision_mask : int = collision_mask

signal changed_direction(is_facing_left : bool)
signal landed(floor_height : float)
signal health_changed(percentage : float)
signal armor_changed(percentage : float)
signal died()

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var _direction : float

func _ready():
	_speed *= GlobalTilesets.ppt
	_acceleration *= GlobalTilesets.ppt
	_deceleration *= GlobalTilesets.ppt
	_jump_height *= GlobalTilesets.ppt
	_jump_velocity = sqrt(_jump_height * gravity * 2) * -1
	face_left() if _is_facing_left else face_right()
	if _invincible_duration != 0:
		_invincible_time = $HurtBox/Invincible
	if _hit_box:
		_hit_box.monitoring = false
	_is_attacking = false

#region Public Methods

func is_facing_left() -> bool:
	return _is_facing_left

func attack():
	_wants_to_attack = true

func take_damage(amount : int, direction : Vector2):
	_current_health = max(_current_health - amount, 0)
	_current_armor = max(_current_armor - amount,0)
	health_changed.emit(float(_current_health) - _current_armor / _max_health)
	armor_changed.emit(float(_current_armor)/ _max_armor)
	velocity = direction * GlobalTilesets.ppt * _stagger
	if _is_attacking:
		_attack_interrupted()
	if _current_health == 0:
		_die()
	else:
		_is_hit = true
		if _invincible_duration != 0:
			become_invincible(_invincible_duration)

func recover(amount : int):
	_current_health = min(_current_health + amount, _max_health)
	health_changed.emit(float(_current_health) / _max_health)

func become_invincible(duration : float):
	_hurt_box.set_deferred("monitorable", false)
	_invincible_time.start(duration)
	await _invincible_time.timeout
	_hurt_box.monitorable = true

func set_bounds(min_boundary : Vector2, max_boundary : Vector2):
	_is_bound = true
	_min = min_boundary
	_max = max_boundary
	var sprite_size : Vector2 = _sprite.get_rect().size
	_min.x += sprite_size.x / 2
	_max.x -= sprite_size.x / 2
	_min.y += sprite_size.y

func face_left():
	if _is_dead || _is_attacking:
		return
	_is_facing_left = true
	_sprite.flip_h = not _sprites_face_left
	if _hit_box:
		_hit_box.scale.x = 1 if _sprites_face_left else -1
	changed_direction.emit(_is_facing_left)

func face_right():
	if _is_dead || _is_attacking:
		return
	_is_facing_left = false
	_sprite.flip_h =  _sprites_face_left
	if _hit_box:
		_hit_box.scale.x = -1 if _sprites_face_left else 1
	changed_direction.emit(_is_facing_left)

func run(direction : float):
	if _is_dead || _is_attacking:
		_direction = 0
	else:
		_direction = direction

func jump():
	if _is_dead || _is_attacking:
		return
	if _is_in_water:
		if _is_below_surface:
			velocity.y = _jump_velocity * _drag
			landed.emit(position.y)
		else:
			velocity.y = _jump_velocity
	elif is_on_floor():
		velocity.y = _jump_velocity
		_spawn_dust(_jump_dust)

func stop_jump():
	if _is_dead || _is_attacking:
		return
	if velocity.y < 0 && not _is_in_water:
		velocity.y = 0

func enter_water(water_surface_height : float):
	_water_surface_height = water_surface_height
	_is_in_water = true
	_is_below_surface = false
	landed.emit(position.y)
	if velocity.y > 0:
		velocity.y *= _drag

func exit_water():
	_is_in_water = false

func dive():
	_is_below_surface = true

func revive():
	_is_dead = false
	_current_health = _max_health
	_hurt_box.monitorable = true
	collision_layer = _collision_layer
	collision_mask = _collision_mask
	landed.emit(global_position.y)
	health_changed.emit(float(_current_health) / _max_health)

#endregion

func _attack_interrupted():
	_is_attacking = false
	_hit_box.monitoring = false

func _physics_process(delta : float):
	if not _is_facing_left && sign(_direction) == -1:
		face_left()
	elif _is_facing_left && sign(_direction) == 1:
		face_right()
	if _is_in_water:
		_water_physics(delta)
	elif is_on_floor():
		_ground_physics(delta)
	else:
		_air_physics(delta)
	_was_on_floor = is_on_floor()
	move_and_slide()
	if not _was_on_floor && is_on_floor():
		_land()
	if _is_bound:
		position.x = clamp(position.x, _min.x, _max.x)
		position.y = clamp(position.y, _min.y, _max.y)

func _ground_physics(delta : float):
	# decelerate to zero
	if _direction == 0:
		velocity.x = move_toward(velocity.x, 0, _deceleration * delta)
	# accelerate from not moving, or trying to move in same direction
	elif velocity.x == 0 || sign(_direction) == sign(velocity.x):
		velocity.x = move_toward(velocity.x, _direction * _speed, _acceleration * delta)
	# decelerate if trying to move in opposite direction
	else:
		velocity.x = move_toward(velocity.x, _direction * _speed, _deceleration * delta)

func _air_physics(delta : float):
	velocity.y += gravity * delta
	if _direction:
		velocity.x = move_toward(velocity.x, _direction * _speed, _acceleration * _air_control * delta)

func _water_physics(delta : float):
	if _direction == 0:
		velocity.x = move_toward(velocity.x, 0, _deceleration * _drag * delta)
	else:
		velocity.x = move_toward(velocity.x, _direction * _speed, _acceleration * _drag * delta)
	if _is_below_surface || _density > 0:
		velocity.y = move_toward(velocity.y, gravity * _density * _drag, gravity * _drag * delta)
	elif position.y - float(GlobalTilesets.ppt) / 4 > _water_surface_height:
		velocity.y = move_toward(velocity.y, gravity * _density * _drag, gravity * _drag * delta)
	else:
		velocity.y = move_toward(velocity.y, gravity * _density * _drag * -1, gravity * _drag * delta)

func _land():
	landed.emit(position.y)

func _spawn_dust(dust : PackedScene):
	var _dust = dust.instantiate()
	_dust.position = position
	_dust.flip_h = _sprite.flip_h
	get_parent().add_child(_dust)

func _die():
	_is_dead = true
	died.emit()
	_hurt_box.set_deferred("monitorable", false)
	collision_layer = 0
	collision_mask = 1
	_direction = 0

func _on_hit_box_area_entered(area : Area2D):
	if not _is_dead && _is_attacking:
		area.get_parent().take_damage(_attack_damage, (area.global_position - global_position).normalized())
