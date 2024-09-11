extends CanvasLayer

@onready var menu = $Alamanac_Main_Menu

func _input(event):
	if Input.is_action_just_pressed("open_wolf_almanac"):
		self.visible =!self.visible
		menu.visible = !menu.visible
