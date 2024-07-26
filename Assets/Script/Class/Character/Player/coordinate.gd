extends Control

func _on_player_update_coordinate(player_position):
	$Coordinate.text = "Coordinate: " + str(player_position)
