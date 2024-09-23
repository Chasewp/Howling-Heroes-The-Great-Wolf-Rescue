extends Node2D

enum LedgeBehaviour
{
	TURN_AROUND,
	WALK_OFF,
}

@export var _ledge_behaviour : LedgeBehaviour
@onready var _character : Character = get_parent()
@onready var _floor_ray : RayCast2D = $RayCast2D
@onready var _is_patrolling : bool = true
var _direction : float

# Called when the node enters the scene tree for the first time.
func _ready():
	_direction = -1 if _character.is_facing_left() else 1
	_set_floor_ray_position()

func _set_floor_ray_position():
	@warning_ignore("integer_division")
	_floor_ray.position.x = GlobalTilesets.ppt / 2 * _direction

func pause():
	_is_patrolling = false
	_character.run(0)

func resume():
	_is_patrolling = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta : float):
	if not _is_patrolling:
		return
	if _character.is_on_wall():
		_direction = sign(_character.get_wall_normal().x)
		_set_floor_ray_position()
	if _character.is_on_floor() && not _floor_ray.is_colliding():
		_ledge_detected()
	_character.run(_direction)

func _ledge_detected():
	match _ledge_behaviour:
		LedgeBehaviour.TURN_AROUND:
			_direction *= -1
			_set_floor_ray_position()
		LedgeBehaviour.WALK_OFF:
			return

