extends CharacterBody2D

signal rescue

@onready var rescue_area = $Area2D
@onready var howling = $AudioStreamPlayer2D
@onready var sprites = $AnimatedSprite2D

func _on_area_2d_body_entered(body):
	_on_rescue()
	sprites.play("Howling")
	howling.play()
	if howling.finished:
		get_tree().root.remove_child(self)
	
func _on_rescue():
	mission_stat.update_wolf_rescue()
