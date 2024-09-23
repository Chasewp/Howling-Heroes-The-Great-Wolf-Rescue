extends Control

#Display Coordinate 
func _on_player_update_coordinate(player_position):
	$Coordinate.text = "Coordinate: " + str(player_position)
	
func _on_player_update_ammo(player_ammo):
	$Ammo.text = "Ammo : " + str(player_ammo)
