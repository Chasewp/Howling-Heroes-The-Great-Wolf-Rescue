extends Control

@onready var txt = $RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	pass





	
	
func _on_button_2_pressed():
	print("Wolves Data Loaded")
	txt.set_text(str(WolfData.Data_Wolves))

	
