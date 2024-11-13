extends Area2D

	
func _on_body_entered(body):
	if body.is_in_group("player"):
		$Sfx.play()


func _on_sfx_finished():
	player_singleton.setter_machete_equip(true)
	queue_free()
