extends StaticBody2D

@onready var chest_open = $ChestClosed
@onready var chest_closed = $ChestClosed

func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		chest_closed.hide()
		chest_open.show()

func _on_area_2d_body_exited(body):
	if body.is_in_group("player"):
			$".".queue_free()
