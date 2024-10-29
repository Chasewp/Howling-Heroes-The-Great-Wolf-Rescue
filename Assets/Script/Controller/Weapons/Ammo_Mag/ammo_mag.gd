extends Area2D

@onready var sfx = $Ammo_Mag

var data_ammo :Data_Progress = Data_Progress.new()
func _on_body_entered(body):
	if body as Players:
			data_ammo.add_magazine()
