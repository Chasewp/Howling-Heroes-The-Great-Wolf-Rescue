extends StaticBody2D

signal pine_cage_opened

var keytaken = false
var in_pine_cage_zone = false




func _on_area_2d_body_entered(body:CharacterBody2D):
	if keytaken == false :
		keytaken = true
		#delete sprite
		$PineKey.queue_free()
		
func _process(delta):
	if keytaken == true:
		if in_pine_cage_zone:
			if Input.is_action_just_pressed("interact"):
				print("pine_cage_opened")
				emit_signal("pine_cage_opened")
