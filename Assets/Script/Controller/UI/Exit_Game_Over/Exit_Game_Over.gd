extends Control

@onready var Bye = $Bye
@onready var gbye = $Good_Bye_Label
#For sound
func _ready():
	Bye.play()

func _on_bye_finished():
	get_tree().quit()
