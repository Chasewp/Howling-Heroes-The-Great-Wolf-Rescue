extends Node2D
@onready var _game_controller: Node = $WorldRoot/Player/Game_control

func _ready():
	_game_controller. set_enabled(true)
