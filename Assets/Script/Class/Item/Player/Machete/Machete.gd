extends RigidBody2D

@onready var _sfx : AudioStreamPlayer2D = $Sfx

func collected():
	pass
	
func _on_body_entered(body):
	if body.is_in_group("player"):
		collected()
		queue_free()
		
