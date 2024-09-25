extends Area2D

@export var bullets : PackedScene
@export var reloading_audio : AudioStream
@export var ammo_empty: AudioStream
@onready var _project_tile_spawn:Node2D = %Projectiles



func _process(delta):
	#if Input.is_action_just_pressed("shoot_fire") and ammomag !=0:
		pass





