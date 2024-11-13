extends Node2D

signal  exit_reached()

func _on_detect_area_body_entered(body):
	if body.is_in_group("player"):
		$AnimatedSprite2D.play("Sprial and Vanish")
		$AudioStreamPlayer2D.play()
		
func _ready():
	$AnimatedSprite2D.play("360_Flip")

func _on_audio_stream_player_2d_finished():
	exit_reached.emit()
