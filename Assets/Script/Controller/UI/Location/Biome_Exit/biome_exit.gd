extends Node2D

signal  exit_reached()

func _on_detect_area_body_entered(_body):
	$AnimatedSprite2D.play("Sprial and Vanish")
	exit_reached.emit()

func _ready():
	$AnimatedSprite2D.play("360_Flip")



