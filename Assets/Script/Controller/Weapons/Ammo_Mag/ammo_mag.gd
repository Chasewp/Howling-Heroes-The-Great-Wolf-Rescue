extends Area2D

@onready var sfx = $Ammo_Mag

func _on_body_entered(body):
	if body as Players:
		SaveProgress.		
