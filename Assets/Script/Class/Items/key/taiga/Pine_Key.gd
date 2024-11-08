extends Area2D

signal _cage_opened

var key_taken = false
var in_cage_zone = false
@onready var key:Sprite2D = $Sprite2D

func _on_Area_2D_body_entred(body):
		if key_taken == false and body.is_in_group("player"):
			key_taken = true
			key.queue_free()
			
			
