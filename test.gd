extends Node2D

@onready var _game_controller: Node = $Player/Game_controller

func _ready():
	_game_controller. set_enabled(true)
