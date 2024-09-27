extends RigidBody2D

@onready var _sfx : AudioStreamPlayer2D = $Sfx
@onready var _rng : RandomNumberGenerator = RandomNumberGenerator.new()


func be_dropped(position_dropped_from : Vector2):
	global_position = position_dropped_from + Vector2.UP * GlobalTilesets.ppt / 2
	apply_impulse(Vector2.UP * GlobalTilesets.ppt * 8 + Vector2.RIGHT * GlobalTilesets.ppt * _rng.randf_range(-1, 1))
	visible = true

func _on_body_entered(body : Node):
	if body is Hero && body.equip_machete():
		_sfx.play()
		body.equip_machete(self)
		visible = false
		set_deferred("freeze", false)
		
	


	

	
