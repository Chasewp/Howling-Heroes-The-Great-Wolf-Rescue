extends Camera2D

var _is_bound : bool
var _min : Vector2
var _max : Vector2

@export var _subject : Node2D
@export var _offset : Vector2
@export var _look_ahead_trans_type : Tween.TransitionType
@export var _look_ahead_ease_type : Tween.EaseType
@export var _look_ahead_duration : float = 1
@export var _floor_height_trans_type : Tween.TransitionType
@export var _floor_height_ease_type : Tween.EaseType
@export var _floor_height_duration : float = 1
@onready var _look_ahead_distance : float = _offset.x
@onready var _floor_height : float = _subject.position.y
var _look_ahead_tween : Tween
var _floor_height_tween : Tween
var _pan : Tween
var _is_following_subject : bool = true

func _ready():
	_offset *= GlobalTilesets.ppt

func set_bounds(min_boundary : Vector2, max_boundary : Vector2):
	_is_bound = true
	_min = min_boundary
	_max = max_boundary
	var half_zoomed_size = get_viewport_rect().size / zoom / 2
	_min += half_zoomed_size
	_max -= half_zoomed_size

func pan_to_marker(marker : Marker2D, duration : float = 1):
	_is_following_subject = false
	if _pan and _pan.is_running():
		_pan.kill()
	_pan = create_tween()
	_pan.tween_property(self, "position", marker.global_position, duration)

func follow_subject():
	_is_following_subject = true
	if _pan and _pan.is_running():
		_pan.kill()
	_look_ahead_distance = position.x - _subject.global_position.x
	_floor_height = position.y - _offset.y
	_subject.changed_direction.emit(_subject.is_facing_left())
	_subject.landed.emit(_subject.global_position.y)

func _process(_delta : float):
	if not _is_following_subject:
		return
	position.x = _subject.position.x + _look_ahead_distance
	position.y = _floor_height + _offset.y
	if _is_bound:
		position.x = clamp(position.x, _min.x, _max.x)
		position.y = clamp(position.y, _min.y, _max.y)

func _on_subject_changed_direction(is_facing_left : bool):
	if _look_ahead_tween and _look_ahead_tween.is_running():
		_look_ahead_tween.kill()
	_look_ahead_tween = create_tween().set_trans(_look_ahead_trans_type).set_ease(_look_ahead_ease_type)
	_look_ahead_tween.tween_property(self, "_look_ahead_distance", _offset.x * (-1 if is_facing_left else 1), _look_ahead_duration)

func _on_subject_landed(floor_height):
	if _floor_height_tween and _floor_height_tween.is_running():
		_floor_height_tween.kill()
	_floor_height_tween = create_tween().set_trans(_floor_height_trans_type).set_ease(_floor_height_ease_type)
	_floor_height_tween.tween_property(self, "_floor_height", floor_height, _floor_height_duration)
