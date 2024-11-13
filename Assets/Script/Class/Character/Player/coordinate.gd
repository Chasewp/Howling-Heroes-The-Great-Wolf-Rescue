extends Control

#Display Coordinate 
func _on_player_update_coordinate(player_position):
	$Coordinate.text = "Coordinate: " + str(player_position)
	
# Display Ammo
func _on_player_update_ammo(player_ammmo,player_magazine):
	$Ammo_Label/bullets_caps.text = str(player_ammmo)
	$Ammo_Label/mag_label.text = str(player_magazine)
