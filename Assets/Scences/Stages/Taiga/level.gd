extends Area2D

@export var music : AudioStream
@export var world_unlocked : int = 1
@export var level_unlocked : int = 1
@onready var _area : CollisionShape2D = $CollisionShape2D
@onready var _half_size : Vector2 = _area.shape.get_rect().size / 2
#@onready var _key : Treasure = get_node_or_null("Treasure/Key")
#@onready var _chest : Area2D = get_node_or_null("Treasure/Chest")
var _checkpoints : Array[Node]

func _ready():
	pass
	#_checkpoints = $Checkpoints.get_children()
	#for i in _checkpoints.size():
		#if _checkpoints[i] is Checkpoint:
			#_checkpoints[i].id = i
	#if _key && _chest && File.data.check_progress_marker(Data.Progress.CHEST_OPENED):
		#_key.queue_free()
		#_chest.already_opened()

func get_checkpoint_position(checkpoint_id : int) -> Vector2:
	if checkpoint_id >= 0 && checkpoint_id < _checkpoints.size():
		return _checkpoints[checkpoint_id].global_position
	return Vector2.ZERO

func get_min() -> Vector2:
	return _area.position - _half_size

func get_max() -> Vector2:
	return _area.position + _half_size

