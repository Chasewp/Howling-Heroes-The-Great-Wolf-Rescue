extends CanvasLayer

func _process(delta):
	if Input.is_action_just_pressed("open_inventory"):
		self.visible =!self.visible
