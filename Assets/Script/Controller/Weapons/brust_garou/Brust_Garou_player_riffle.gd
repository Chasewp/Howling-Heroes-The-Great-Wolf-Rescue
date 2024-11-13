extends Area2D


func _on_body_entered(body):
	if body.is_in_group("player"):
		$AudioStreamPlayer2D.play()


func _on_audio_stream_player_2d_finished():
	player_singleton.setter_brust_garou_equip(true)
	queue_free()
	
