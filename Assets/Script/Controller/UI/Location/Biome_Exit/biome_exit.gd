extends Node2D

signal  exit_reached()

func _on_detect_area_body_entered(_body):
	for player in get_tree().get_nodes_in_group("player"):
		$AnimatedSprite2D.play("Sprial and Vanish")
		$AudioStreamPlayer2D.play()
		exit_reached.emit()

func _ready():
	$AnimatedSprite2D.play("360_Flip")



