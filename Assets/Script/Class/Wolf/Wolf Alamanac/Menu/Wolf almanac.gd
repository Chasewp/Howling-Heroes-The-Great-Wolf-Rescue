extends CanvasLayer

func _process(delta):
	if Input.is_action_just_pressed("open_wolf_almanac"):
		self.visible =!self.visible
